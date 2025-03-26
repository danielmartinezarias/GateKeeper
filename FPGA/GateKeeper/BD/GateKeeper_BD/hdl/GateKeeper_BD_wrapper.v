//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Wed Mar 26 11:16:30 2025
//Host        : donaufeld running 64-bit major release  (build 9200)
//Command     : generate_target GateKeeper_BD_wrapper.bd
//Design      : GateKeeper_BD_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module GateKeeper_BD_wrapper
   (GCLK,
    JA10,
    det_in_0,
    det_in_1,
    det_in_2,
    det_out_0,
    det_out_1,
    det_out_2);
  input GCLK;
  input JA10;
  input det_in_0;
  input det_in_1;
  input det_in_2;
  output det_out_0;
  output det_out_1;
  output det_out_2;

  wire GCLK;
  wire JA10;
  wire det_in_0;
  wire det_in_1;
  wire det_in_2;
  wire det_out_0;
  wire det_out_1;
  wire det_out_2;

  GateKeeper_BD GateKeeper_BD_i
       (.GCLK(GCLK),
        .JA10(JA10),
        .det_in_0(det_in_0),
        .det_in_1(det_in_1),
        .det_in_2(det_in_2),
        .det_out_0(det_out_0),
        .det_out_1(det_out_1),
        .det_out_2(det_out_2));
endmodule
