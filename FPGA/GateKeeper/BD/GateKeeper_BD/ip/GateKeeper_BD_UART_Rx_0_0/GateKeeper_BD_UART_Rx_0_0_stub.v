// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Wed Mar 26 11:18:50 2025
// Host        : donaufeld running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/danie/Documents/GitHub/GateKeeper/FPGA/GateKeeper/BD/GateKeeper_BD/ip/GateKeeper_BD_UART_Rx_0_0/GateKeeper_BD_UART_Rx_0_0_stub.v
// Design      : GateKeeper_BD_UART_Rx_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "UART_Rx,Vivado 2023.2" *)
module GateKeeper_BD_UART_Rx_0_0(clk, tick, PinRx, bufferRx, readyRx)
/* synthesis syn_black_box black_box_pad_pin="tick,PinRx,bufferRx[7:0],readyRx" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input tick;
  input PinRx;
  output [7:0]bufferRx;
  output readyRx;
endmodule
