// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Fri Mar 28 12:07:46 2025
// Host        : donaufeld running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/danie/Documents/GitHub/GateKeeper/FPGA/GateKeeper/BD/GateKeeper_BD/ip/GateKeeper_BD_GateKeeper_2_0/GateKeeper_BD_GateKeeper_2_0_stub.v
// Design      : GateKeeper_BD_GateKeeper_2_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "GateKeeper,Vivado 2023.2" *)
module GateKeeper_BD_GateKeeper_2_0(clk, enable, window, pulseShaper_width, det_in, 
  det_out)
/* synthesis syn_black_box black_box_pad_pin="enable,window[15:0],pulseShaper_width[7:0],det_in,det_out" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input enable;
  input [15:0]window;
  input [7:0]pulseShaper_width;
  input det_in;
  output det_out;
endmodule
