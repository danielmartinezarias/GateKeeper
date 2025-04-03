// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Apr  3 16:19:27 2025
// Host        : donaufeld running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ GateKeeper_BD_control_parametros_0_1_stub.v
// Design      : GateKeeper_BD_control_parametros_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "control_parametros,Vivado 2023.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, readyRx, bufferRx, SW, LED, window0, window1, 
  window2, pulseShaper_width0, pulseShaper_width1, pulseShaper_width2, enableGateKeeper0, 
  enableGateKeeper1, enableGateKeeper2)
/* synthesis syn_black_box black_box_pad_pin="readyRx,bufferRx[7:0],SW[7:0],LED[7:0],window0[15:0],window1[15:0],window2[15:0],pulseShaper_width0[7:0],pulseShaper_width1[7:0],pulseShaper_width2[7:0],enableGateKeeper0,enableGateKeeper1,enableGateKeeper2" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input readyRx;
  input [7:0]bufferRx;
  input [7:0]SW;
  output [7:0]LED;
  output [15:0]window0;
  output [15:0]window1;
  output [15:0]window2;
  output [7:0]pulseShaper_width0;
  output [7:0]pulseShaper_width1;
  output [7:0]pulseShaper_width2;
  output enableGateKeeper0;
  output enableGateKeeper1;
  output enableGateKeeper2;
endmodule
