import math
from uart_lib import UARTSender

if __name__ == "__main__":
    uart = UARTSender(port="COM10")  # Choose the right COM port
    clk = 2.5  # 2.5 ns per clk cycle
    window = 17.5 # in ns
    width = 50 # in ns
    enableGateKeeper = True

    uart.send_data_to_fpga(21, 16, math.floor(window / clk))  # window
    uart.send_data_to_fpga(22, 16, math.floor(window / width))  # width
    uart.send_data_to_fpga(23, 8, int(enableGateKeeper))  # enable
