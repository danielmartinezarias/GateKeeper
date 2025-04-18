// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Fri Mar 28 13:22:00 2025
// Host        : donaufeld running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top GateKeeper_BD_clk_wiz_0_0 -prefix
//               GateKeeper_BD_clk_wiz_0_0_ GateKeeper_BD_clk_wiz_0_0_stub.v
// Design      : GateKeeper_BD_clk_wiz_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module GateKeeper_BD_clk_wiz_0_0(clk_100MHz, clk_400MHz, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_in1" */
/* synthesis syn_force_seq_prim="clk_100MHz" */
/* synthesis syn_force_seq_prim="clk_400MHz" */;
  output clk_100MHz /* synthesis syn_isclock = 1 */;
  output clk_400MHz /* synthesis syn_isclock = 1 */;
  input clk_in1;
endmodule
