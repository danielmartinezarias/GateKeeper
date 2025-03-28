import serial
import time
import math


class UARTSender:
    def __init__(self, port, baudrate=115200, timeout=1):
        self.ser = serial.Serial(port, baudrate, timeout=timeout)

    def send_num(self, num):
        if self.ser.is_open:
            self.ser.write(bytes([num]))
            time.sleep(0.001)  # 1 ms delay
        else:
            print("Error: Serial port is not open")

    def send_data_to_fpga(self, address, bits, value, value_64=0):
        def int_to_bytes(val, length):
            return val.to_bytes(length, byteorder='big', signed=False)

        value_bytes = int_to_bytes(value, 4)  # Convert integer to 4 bytes
        order_bytes = int_to_bytes(address, 4)  # Convert order to 4 bytes

        if bits < 33:
            if bits == 8:
                self.send_num(8)
                self.send_num(value_bytes[3])
            elif bits == 16:
                self.send_num(7)
                self.send_num(value_bytes[2])
                self.send_num(value_bytes[3])
            elif bits == 24:
                self.send_num(6)
                self.send_num(value_bytes[1])
                self.send_num(value_bytes[2])
                self.send_num(value_bytes[3])
            else:
                self.send_num(5)
                for byte in value_bytes:
                    self.send_num(byte)
        else:
            value_64_bytes = int_to_bytes(value_64, 8)

            if bits == 40:
                self.send_num(4)
                for i in range(3, -1, -1):
                    self.send_num(value_64_bytes[i + 4])
            elif bits == 48:
                self.send_num(3)
                for i in range(4, -1, -1):
                    self.send_num(value_64_bytes[i + 3])
            elif bits == 56:
                self.send_num(2)
                for i in range(5, -1, -1):
                    self.send_num(value_64_bytes[i + 2])
            else:
                self.send_num(1)
                for byte in value_64_bytes:
                    self.send_num(byte)

        self.send_num(order_bytes[2])
        self.send_num(order_bytes[3])


if __name__ == "__main__":

    uart = UARTSender(port="COM10")  # Choose the right COM port
    clk = 2.5  # 2.5 ns per clk cycle
    window = 17.5
    width = 50
    enable = True

    uart.send_data_to_fpga(21, 16, math.floor(window / clk))  # window
    uart.send_data_to_fpga(22, 16, math.floor(window / width))  # width
    uart.send_data_to_fpga(23, 8, int(enable))  # enable
