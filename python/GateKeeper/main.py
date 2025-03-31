import math
from uart_lib import UARTSender

if __name__ == "__main__":

    # specify parameters
    uart = UARTSender(port="COM10")  # Choose the right COM port
    clk = 2.5  # 2.5 ns per clk cycle

    ########################################
    window0 = 17.5  # in ns
    width0 = 50  # in ns
    enableGateKeeper0 = True
    ########################################
    window1 = 17.5  # in ns
    width1 = 50  # in ns
    enableGateKeeper1 = True
    ########################################
    window2 = 17.5  # in ns
    width2 = 50  # in ns
    enableGateKeeper2 = True
    ########################################

    # send serial commands
    uart.send_data_to_fpga(21, 16, math.floor(window0 / clk))  # window
    uart.send_data_to_fpga(22, 16, math.floor(width0 / clk))  # width
    uart.send_data_to_fpga(23, 8, int(enableGateKeeper0))  # enable
    uart.send_data_to_fpga(24, 16, math.floor(window1 / clk))  # window
    uart.send_data_to_fpga(25, 16, math.floor(width1 / clk))  # width
    uart.send_data_to_fpga(26, 8, int(enableGateKeeper1))  # enable
    uart.send_data_to_fpga(27, 16, math.floor(window2 / clk))  # window
    uart.send_data_to_fpga(28, 16, math.floor(width2 / clk))  # width
    uart.send_data_to_fpga(29, 8, int(enableGateKeeper2))  # enable
