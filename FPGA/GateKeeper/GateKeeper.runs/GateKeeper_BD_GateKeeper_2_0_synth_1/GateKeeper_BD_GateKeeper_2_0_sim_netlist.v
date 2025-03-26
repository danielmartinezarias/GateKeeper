// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Wed Mar 26 11:18:49 2025
// Host        : donaufeld running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ GateKeeper_BD_GateKeeper_2_0_sim_netlist.v
// Design      : GateKeeper_BD_GateKeeper_2_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_GateKeeper
   (det_out,
    pulseShaper_width,
    det_in,
    enable,
    clk,
    window);
  output det_out;
  input [7:0]pulseShaper_width;
  input det_in;
  input enable;
  input clk;
  input [15:0]window;

  wire \c2[0]_i_1_n_0 ;
  wire \c2[7]_i_1_n_0 ;
  wire \c2[7]_i_2_n_0 ;
  wire \c2[7]_i_4_n_0 ;
  wire [7:0]c2_reg;
  wire \c[0]_i_1_n_0 ;
  wire \c[0]_i_3_n_0 ;
  wire \c[0]_i_4_n_0 ;
  wire \c[0]_i_5_n_0 ;
  wire \c[0]_i_6_n_0 ;
  wire \c[0]_i_7_n_0 ;
  wire \c[12]_i_2_n_0 ;
  wire \c[12]_i_3_n_0 ;
  wire \c[12]_i_4_n_0 ;
  wire \c[12]_i_5_n_0 ;
  wire \c[4]_i_2_n_0 ;
  wire \c[4]_i_3_n_0 ;
  wire \c[4]_i_4_n_0 ;
  wire \c[4]_i_5_n_0 ;
  wire \c[8]_i_2_n_0 ;
  wire \c[8]_i_3_n_0 ;
  wire \c[8]_i_4_n_0 ;
  wire \c[8]_i_5_n_0 ;
  wire [15:0]c_reg;
  wire \c_reg[0]_i_2_n_0 ;
  wire \c_reg[0]_i_2_n_1 ;
  wire \c_reg[0]_i_2_n_2 ;
  wire \c_reg[0]_i_2_n_3 ;
  wire \c_reg[0]_i_2_n_4 ;
  wire \c_reg[0]_i_2_n_5 ;
  wire \c_reg[0]_i_2_n_6 ;
  wire \c_reg[0]_i_2_n_7 ;
  wire \c_reg[12]_i_1_n_1 ;
  wire \c_reg[12]_i_1_n_2 ;
  wire \c_reg[12]_i_1_n_3 ;
  wire \c_reg[12]_i_1_n_4 ;
  wire \c_reg[12]_i_1_n_5 ;
  wire \c_reg[12]_i_1_n_6 ;
  wire \c_reg[12]_i_1_n_7 ;
  wire \c_reg[4]_i_1_n_0 ;
  wire \c_reg[4]_i_1_n_1 ;
  wire \c_reg[4]_i_1_n_2 ;
  wire \c_reg[4]_i_1_n_3 ;
  wire \c_reg[4]_i_1_n_4 ;
  wire \c_reg[4]_i_1_n_5 ;
  wire \c_reg[4]_i_1_n_6 ;
  wire \c_reg[4]_i_1_n_7 ;
  wire \c_reg[8]_i_1_n_0 ;
  wire \c_reg[8]_i_1_n_1 ;
  wire \c_reg[8]_i_1_n_2 ;
  wire \c_reg[8]_i_1_n_3 ;
  wire \c_reg[8]_i_1_n_4 ;
  wire \c_reg[8]_i_1_n_5 ;
  wire \c_reg[8]_i_1_n_6 ;
  wire \c_reg[8]_i_1_n_7 ;
  wire clk;
  wire det_in;
  wire det_out;
  wire det_out0;
  wire det_out0_carry__0_i_1_n_0;
  wire det_out0_carry__0_i_2_n_0;
  wire det_out0_carry__0_i_3_n_0;
  wire det_out0_carry__0_i_4_n_0;
  wire det_out0_carry__0_i_5_n_0;
  wire det_out0_carry__0_i_6_n_0;
  wire det_out0_carry__0_i_7_n_0;
  wire det_out0_carry__0_i_8_n_0;
  wire det_out0_carry__0_n_1;
  wire det_out0_carry__0_n_2;
  wire det_out0_carry__0_n_3;
  wire det_out0_carry_i_1_n_0;
  wire det_out0_carry_i_2_n_0;
  wire det_out0_carry_i_3_n_0;
  wire det_out0_carry_i_4_n_0;
  wire det_out0_carry_i_5_n_0;
  wire det_out0_carry_i_6_n_0;
  wire det_out0_carry_i_7_n_0;
  wire det_out0_carry_i_8_n_0;
  wire det_out0_carry_n_0;
  wire det_out0_carry_n_1;
  wire det_out0_carry_n_2;
  wire det_out0_carry_n_3;
  wire det_out1;
  wire det_out1__3_carry__0_i_1_n_0;
  wire det_out1__3_carry__0_i_2_n_0;
  wire det_out1__3_carry__0_i_3_n_0;
  wire det_out1__3_carry__0_i_4_n_0;
  wire det_out1__3_carry__0_n_0;
  wire det_out1__3_carry__0_n_1;
  wire det_out1__3_carry__0_n_2;
  wire det_out1__3_carry__0_n_3;
  wire det_out1__3_carry__0_n_4;
  wire det_out1__3_carry__0_n_5;
  wire det_out1__3_carry__0_n_6;
  wire det_out1__3_carry__0_n_7;
  wire det_out1__3_carry__1_i_1_n_0;
  wire det_out1__3_carry__1_i_2_n_0;
  wire det_out1__3_carry__1_i_3_n_0;
  wire det_out1__3_carry__1_i_4_n_0;
  wire det_out1__3_carry__1_n_0;
  wire det_out1__3_carry__1_n_1;
  wire det_out1__3_carry__1_n_2;
  wire det_out1__3_carry__1_n_3;
  wire det_out1__3_carry__1_n_4;
  wire det_out1__3_carry__1_n_5;
  wire det_out1__3_carry__1_n_6;
  wire det_out1__3_carry__1_n_7;
  wire det_out1__3_carry__2_i_1_n_0;
  wire det_out1__3_carry__2_i_2_n_0;
  wire det_out1__3_carry__2_i_3_n_0;
  wire det_out1__3_carry__2_n_2;
  wire det_out1__3_carry__2_n_3;
  wire det_out1__3_carry__2_n_5;
  wire det_out1__3_carry__2_n_6;
  wire det_out1__3_carry__2_n_7;
  wire det_out1__3_carry_i_1_n_0;
  wire det_out1__3_carry_i_2_n_0;
  wire det_out1__3_carry_i_3_n_0;
  wire det_out1__3_carry_i_4_n_0;
  wire det_out1__3_carry_n_0;
  wire det_out1__3_carry_n_1;
  wire det_out1__3_carry_n_2;
  wire det_out1__3_carry_n_3;
  wire det_out1__3_carry_n_4;
  wire det_out1__3_carry_n_5;
  wire det_out1__3_carry_n_6;
  wire det_out1__3_carry_n_7;
  wire det_out1_carry__0_n_7;
  wire det_out1_carry_i_10_n_0;
  wire det_out1_carry_i_1_n_0;
  wire det_out1_carry_i_2_n_0;
  wire det_out1_carry_i_3_n_0;
  wire det_out1_carry_i_4_n_0;
  wire det_out1_carry_i_5_n_0;
  wire det_out1_carry_i_6_n_0;
  wire det_out1_carry_i_7_n_0;
  wire det_out1_carry_i_8_n_0;
  wire det_out1_carry_i_9_n_0;
  wire det_out1_carry_n_1;
  wire det_out1_carry_n_2;
  wire det_out1_carry_n_3;
  wire det_out_i_1_n_0;
  wire enable;
  wire [7:1]p_0_in;
  wire [7:0]pulseShaper_width;
  wire state_i_1_n_0;
  wire state_reg_n_0;
  wire [15:0]window;
  wire [3:3]\NLW_c_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_det_out0_carry_O_UNCONNECTED;
  wire [3:0]NLW_det_out0_carry__0_O_UNCONNECTED;
  wire [3:2]NLW_det_out1__3_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_det_out1__3_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_det_out1_carry_O_UNCONNECTED;
  wire [3:0]NLW_det_out1_carry__0_CO_UNCONNECTED;
  wire [3:1]NLW_det_out1_carry__0_O_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    \c2[0]_i_1 
       (.I0(c2_reg[0]),
        .O(\c2[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \c2[1]_i_1 
       (.I0(c2_reg[0]),
        .I1(c2_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \c2[2]_i_1 
       (.I0(c2_reg[0]),
        .I1(c2_reg[1]),
        .I2(c2_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \c2[3]_i_1 
       (.I0(c2_reg[1]),
        .I1(c2_reg[0]),
        .I2(c2_reg[2]),
        .I3(c2_reg[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \c2[4]_i_1 
       (.I0(c2_reg[2]),
        .I1(c2_reg[0]),
        .I2(c2_reg[1]),
        .I3(c2_reg[3]),
        .I4(c2_reg[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \c2[5]_i_1 
       (.I0(c2_reg[3]),
        .I1(c2_reg[1]),
        .I2(c2_reg[0]),
        .I3(c2_reg[2]),
        .I4(c2_reg[4]),
        .I5(c2_reg[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \c2[6]_i_1 
       (.I0(\c2[7]_i_4_n_0 ),
        .I1(c2_reg[6]),
        .O(p_0_in[6]));
  LUT3 #(
    .INIT(8'h80)) 
    \c2[7]_i_1 
       (.I0(enable),
        .I1(det_out1_carry__0_n_7),
        .I2(state_reg_n_0),
        .O(\c2[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \c2[7]_i_2 
       (.I0(state_reg_n_0),
        .I1(enable),
        .O(\c2[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \c2[7]_i_3 
       (.I0(\c2[7]_i_4_n_0 ),
        .I1(c2_reg[6]),
        .I2(c2_reg[7]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \c2[7]_i_4 
       (.I0(c2_reg[5]),
        .I1(c2_reg[3]),
        .I2(c2_reg[1]),
        .I3(c2_reg[0]),
        .I4(c2_reg[2]),
        .I5(c2_reg[4]),
        .O(\c2[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c2_reg[0] 
       (.C(clk),
        .CE(\c2[7]_i_2_n_0 ),
        .D(\c2[0]_i_1_n_0 ),
        .Q(c2_reg[0]),
        .R(\c2[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c2_reg[1] 
       (.C(clk),
        .CE(\c2[7]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(c2_reg[1]),
        .R(\c2[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c2_reg[2] 
       (.C(clk),
        .CE(\c2[7]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(c2_reg[2]),
        .R(\c2[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c2_reg[3] 
       (.C(clk),
        .CE(\c2[7]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(c2_reg[3]),
        .R(\c2[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c2_reg[4] 
       (.C(clk),
        .CE(\c2[7]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(c2_reg[4]),
        .R(\c2[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c2_reg[5] 
       (.C(clk),
        .CE(\c2[7]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(c2_reg[5]),
        .R(\c2[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c2_reg[6] 
       (.C(clk),
        .CE(\c2[7]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(c2_reg[6]),
        .R(\c2[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c2_reg[7] 
       (.C(clk),
        .CE(\c2[7]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(c2_reg[7]),
        .R(\c2[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \c[0]_i_1 
       (.I0(enable),
        .I1(state_reg_n_0),
        .O(\c[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \c[0]_i_3 
       (.I0(pulseShaper_width[0]),
        .I1(det_in),
        .I2(c_reg[0]),
        .O(\c[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \c[0]_i_4 
       (.I0(pulseShaper_width[3]),
        .I1(det_in),
        .I2(c_reg[3]),
        .O(\c[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \c[0]_i_5 
       (.I0(pulseShaper_width[2]),
        .I1(det_in),
        .I2(c_reg[2]),
        .O(\c[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \c[0]_i_6 
       (.I0(pulseShaper_width[1]),
        .I1(det_in),
        .I2(c_reg[1]),
        .O(\c[0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \c[0]_i_7 
       (.I0(c_reg[0]),
        .I1(pulseShaper_width[0]),
        .I2(det_in),
        .O(\c[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \c[12]_i_2 
       (.I0(c_reg[15]),
        .I1(det_in),
        .O(\c[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \c[12]_i_3 
       (.I0(c_reg[14]),
        .I1(det_in),
        .O(\c[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \c[12]_i_4 
       (.I0(c_reg[13]),
        .I1(det_in),
        .O(\c[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \c[12]_i_5 
       (.I0(c_reg[12]),
        .I1(det_in),
        .O(\c[12]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \c[4]_i_2 
       (.I0(pulseShaper_width[7]),
        .I1(det_in),
        .I2(c_reg[7]),
        .O(\c[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \c[4]_i_3 
       (.I0(pulseShaper_width[6]),
        .I1(det_in),
        .I2(c_reg[6]),
        .O(\c[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \c[4]_i_4 
       (.I0(pulseShaper_width[5]),
        .I1(det_in),
        .I2(c_reg[5]),
        .O(\c[4]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \c[4]_i_5 
       (.I0(pulseShaper_width[4]),
        .I1(det_in),
        .I2(c_reg[4]),
        .O(\c[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \c[8]_i_2 
       (.I0(c_reg[11]),
        .I1(det_in),
        .O(\c[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \c[8]_i_3 
       (.I0(c_reg[10]),
        .I1(det_in),
        .O(\c[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \c[8]_i_4 
       (.I0(c_reg[9]),
        .I1(det_in),
        .O(\c[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \c[8]_i_5 
       (.I0(c_reg[8]),
        .I1(det_in),
        .O(\c[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[0] 
       (.C(clk),
        .CE(\c[0]_i_1_n_0 ),
        .D(\c_reg[0]_i_2_n_7 ),
        .Q(c_reg[0]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \c_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\c_reg[0]_i_2_n_0 ,\c_reg[0]_i_2_n_1 ,\c_reg[0]_i_2_n_2 ,\c_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\c[0]_i_3_n_0 }),
        .O({\c_reg[0]_i_2_n_4 ,\c_reg[0]_i_2_n_5 ,\c_reg[0]_i_2_n_6 ,\c_reg[0]_i_2_n_7 }),
        .S({\c[0]_i_4_n_0 ,\c[0]_i_5_n_0 ,\c[0]_i_6_n_0 ,\c[0]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[10] 
       (.C(clk),
        .CE(\c[0]_i_1_n_0 ),
        .D(\c_reg[8]_i_1_n_5 ),
        .Q(c_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[11] 
       (.C(clk),
        .CE(\c[0]_i_1_n_0 ),
        .D(\c_reg[8]_i_1_n_4 ),
        .Q(c_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[12] 
       (.C(clk),
        .CE(\c[0]_i_1_n_0 ),
        .D(\c_reg[12]_i_1_n_7 ),
        .Q(c_reg[12]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \c_reg[12]_i_1 
       (.CI(\c_reg[8]_i_1_n_0 ),
        .CO({\NLW_c_reg[12]_i_1_CO_UNCONNECTED [3],\c_reg[12]_i_1_n_1 ,\c_reg[12]_i_1_n_2 ,\c_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\c_reg[12]_i_1_n_4 ,\c_reg[12]_i_1_n_5 ,\c_reg[12]_i_1_n_6 ,\c_reg[12]_i_1_n_7 }),
        .S({\c[12]_i_2_n_0 ,\c[12]_i_3_n_0 ,\c[12]_i_4_n_0 ,\c[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[13] 
       (.C(clk),
        .CE(\c[0]_i_1_n_0 ),
        .D(\c_reg[12]_i_1_n_6 ),
        .Q(c_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[14] 
       (.C(clk),
        .CE(\c[0]_i_1_n_0 ),
        .D(\c_reg[12]_i_1_n_5 ),
        .Q(c_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[15] 
       (.C(clk),
        .CE(\c[0]_i_1_n_0 ),
        .D(\c_reg[12]_i_1_n_4 ),
        .Q(c_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[1] 
       (.C(clk),
        .CE(\c[0]_i_1_n_0 ),
        .D(\c_reg[0]_i_2_n_6 ),
        .Q(c_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[2] 
       (.C(clk),
        .CE(\c[0]_i_1_n_0 ),
        .D(\c_reg[0]_i_2_n_5 ),
        .Q(c_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[3] 
       (.C(clk),
        .CE(\c[0]_i_1_n_0 ),
        .D(\c_reg[0]_i_2_n_4 ),
        .Q(c_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[4] 
       (.C(clk),
        .CE(\c[0]_i_1_n_0 ),
        .D(\c_reg[4]_i_1_n_7 ),
        .Q(c_reg[4]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \c_reg[4]_i_1 
       (.CI(\c_reg[0]_i_2_n_0 ),
        .CO({\c_reg[4]_i_1_n_0 ,\c_reg[4]_i_1_n_1 ,\c_reg[4]_i_1_n_2 ,\c_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\c_reg[4]_i_1_n_4 ,\c_reg[4]_i_1_n_5 ,\c_reg[4]_i_1_n_6 ,\c_reg[4]_i_1_n_7 }),
        .S({\c[4]_i_2_n_0 ,\c[4]_i_3_n_0 ,\c[4]_i_4_n_0 ,\c[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[5] 
       (.C(clk),
        .CE(\c[0]_i_1_n_0 ),
        .D(\c_reg[4]_i_1_n_6 ),
        .Q(c_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[6] 
       (.C(clk),
        .CE(\c[0]_i_1_n_0 ),
        .D(\c_reg[4]_i_1_n_5 ),
        .Q(c_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[7] 
       (.C(clk),
        .CE(\c[0]_i_1_n_0 ),
        .D(\c_reg[4]_i_1_n_4 ),
        .Q(c_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[8] 
       (.C(clk),
        .CE(\c[0]_i_1_n_0 ),
        .D(\c_reg[8]_i_1_n_7 ),
        .Q(c_reg[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \c_reg[8]_i_1 
       (.CI(\c_reg[4]_i_1_n_0 ),
        .CO({\c_reg[8]_i_1_n_0 ,\c_reg[8]_i_1_n_1 ,\c_reg[8]_i_1_n_2 ,\c_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\c_reg[8]_i_1_n_4 ,\c_reg[8]_i_1_n_5 ,\c_reg[8]_i_1_n_6 ,\c_reg[8]_i_1_n_7 }),
        .S({\c[8]_i_2_n_0 ,\c[8]_i_3_n_0 ,\c[8]_i_4_n_0 ,\c[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[9] 
       (.C(clk),
        .CE(\c[0]_i_1_n_0 ),
        .D(\c_reg[8]_i_1_n_6 ),
        .Q(c_reg[9]),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 det_out0_carry
       (.CI(1'b0),
        .CO({det_out0_carry_n_0,det_out0_carry_n_1,det_out0_carry_n_2,det_out0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({det_out0_carry_i_1_n_0,det_out0_carry_i_2_n_0,det_out0_carry_i_3_n_0,det_out0_carry_i_4_n_0}),
        .O(NLW_det_out0_carry_O_UNCONNECTED[3:0]),
        .S({det_out0_carry_i_5_n_0,det_out0_carry_i_6_n_0,det_out0_carry_i_7_n_0,det_out0_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 det_out0_carry__0
       (.CI(det_out0_carry_n_0),
        .CO({det_out0,det_out0_carry__0_n_1,det_out0_carry__0_n_2,det_out0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({det_out0_carry__0_i_1_n_0,det_out0_carry__0_i_2_n_0,det_out0_carry__0_i_3_n_0,det_out0_carry__0_i_4_n_0}),
        .O(NLW_det_out0_carry__0_O_UNCONNECTED[3:0]),
        .S({det_out0_carry__0_i_5_n_0,det_out0_carry__0_i_6_n_0,det_out0_carry__0_i_7_n_0,det_out0_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    det_out0_carry__0_i_1
       (.I0(c_reg[14]),
        .I1(det_out1__3_carry__2_n_6),
        .I2(det_out1__3_carry__2_n_5),
        .I3(c_reg[15]),
        .O(det_out0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    det_out0_carry__0_i_2
       (.I0(c_reg[12]),
        .I1(det_out1__3_carry__1_n_4),
        .I2(det_out1__3_carry__2_n_7),
        .I3(c_reg[13]),
        .O(det_out0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    det_out0_carry__0_i_3
       (.I0(c_reg[10]),
        .I1(det_out1__3_carry__1_n_6),
        .I2(det_out1__3_carry__1_n_5),
        .I3(c_reg[11]),
        .O(det_out0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    det_out0_carry__0_i_4
       (.I0(c_reg[8]),
        .I1(det_out1__3_carry__0_n_4),
        .I2(det_out1__3_carry__1_n_7),
        .I3(c_reg[9]),
        .O(det_out0_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    det_out0_carry__0_i_5
       (.I0(c_reg[14]),
        .I1(det_out1__3_carry__2_n_6),
        .I2(c_reg[15]),
        .I3(det_out1__3_carry__2_n_5),
        .O(det_out0_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    det_out0_carry__0_i_6
       (.I0(c_reg[12]),
        .I1(det_out1__3_carry__1_n_4),
        .I2(c_reg[13]),
        .I3(det_out1__3_carry__2_n_7),
        .O(det_out0_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    det_out0_carry__0_i_7
       (.I0(c_reg[10]),
        .I1(det_out1__3_carry__1_n_6),
        .I2(c_reg[11]),
        .I3(det_out1__3_carry__1_n_5),
        .O(det_out0_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    det_out0_carry__0_i_8
       (.I0(c_reg[8]),
        .I1(det_out1__3_carry__0_n_4),
        .I2(c_reg[9]),
        .I3(det_out1__3_carry__1_n_7),
        .O(det_out0_carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    det_out0_carry_i_1
       (.I0(c_reg[6]),
        .I1(det_out1__3_carry__0_n_6),
        .I2(det_out1__3_carry__0_n_5),
        .I3(c_reg[7]),
        .O(det_out0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    det_out0_carry_i_2
       (.I0(c_reg[4]),
        .I1(det_out1__3_carry_n_4),
        .I2(det_out1__3_carry__0_n_7),
        .I3(c_reg[5]),
        .O(det_out0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    det_out0_carry_i_3
       (.I0(c_reg[2]),
        .I1(det_out1__3_carry_n_6),
        .I2(det_out1__3_carry_n_5),
        .I3(c_reg[3]),
        .O(det_out0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h8F08)) 
    det_out0_carry_i_4
       (.I0(window[0]),
        .I1(c_reg[0]),
        .I2(det_out1__3_carry_n_7),
        .I3(c_reg[1]),
        .O(det_out0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    det_out0_carry_i_5
       (.I0(c_reg[6]),
        .I1(det_out1__3_carry__0_n_6),
        .I2(c_reg[7]),
        .I3(det_out1__3_carry__0_n_5),
        .O(det_out0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    det_out0_carry_i_6
       (.I0(c_reg[4]),
        .I1(det_out1__3_carry_n_4),
        .I2(c_reg[5]),
        .I3(det_out1__3_carry__0_n_7),
        .O(det_out0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    det_out0_carry_i_7
       (.I0(c_reg[2]),
        .I1(det_out1__3_carry_n_6),
        .I2(c_reg[3]),
        .I3(det_out1__3_carry_n_5),
        .O(det_out0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h6006)) 
    det_out0_carry_i_8
       (.I0(c_reg[0]),
        .I1(window[0]),
        .I2(c_reg[1]),
        .I3(det_out1__3_carry_n_7),
        .O(det_out0_carry_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 det_out1__3_carry
       (.CI(1'b0),
        .CO({det_out1__3_carry_n_0,det_out1__3_carry_n_1,det_out1__3_carry_n_2,det_out1__3_carry_n_3}),
        .CYINIT(window[0]),
        .DI(window[4:1]),
        .O({det_out1__3_carry_n_4,det_out1__3_carry_n_5,det_out1__3_carry_n_6,det_out1__3_carry_n_7}),
        .S({det_out1__3_carry_i_1_n_0,det_out1__3_carry_i_2_n_0,det_out1__3_carry_i_3_n_0,det_out1__3_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 det_out1__3_carry__0
       (.CI(det_out1__3_carry_n_0),
        .CO({det_out1__3_carry__0_n_0,det_out1__3_carry__0_n_1,det_out1__3_carry__0_n_2,det_out1__3_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(window[8:5]),
        .O({det_out1__3_carry__0_n_4,det_out1__3_carry__0_n_5,det_out1__3_carry__0_n_6,det_out1__3_carry__0_n_7}),
        .S({det_out1__3_carry__0_i_1_n_0,det_out1__3_carry__0_i_2_n_0,det_out1__3_carry__0_i_3_n_0,det_out1__3_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    det_out1__3_carry__0_i_1
       (.I0(window[8]),
        .O(det_out1__3_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    det_out1__3_carry__0_i_2
       (.I0(window[7]),
        .O(det_out1__3_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    det_out1__3_carry__0_i_3
       (.I0(window[6]),
        .O(det_out1__3_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    det_out1__3_carry__0_i_4
       (.I0(window[5]),
        .O(det_out1__3_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 det_out1__3_carry__1
       (.CI(det_out1__3_carry__0_n_0),
        .CO({det_out1__3_carry__1_n_0,det_out1__3_carry__1_n_1,det_out1__3_carry__1_n_2,det_out1__3_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(window[12:9]),
        .O({det_out1__3_carry__1_n_4,det_out1__3_carry__1_n_5,det_out1__3_carry__1_n_6,det_out1__3_carry__1_n_7}),
        .S({det_out1__3_carry__1_i_1_n_0,det_out1__3_carry__1_i_2_n_0,det_out1__3_carry__1_i_3_n_0,det_out1__3_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    det_out1__3_carry__1_i_1
       (.I0(window[12]),
        .O(det_out1__3_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    det_out1__3_carry__1_i_2
       (.I0(window[11]),
        .O(det_out1__3_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    det_out1__3_carry__1_i_3
       (.I0(window[10]),
        .O(det_out1__3_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    det_out1__3_carry__1_i_4
       (.I0(window[9]),
        .O(det_out1__3_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 det_out1__3_carry__2
       (.CI(det_out1__3_carry__1_n_0),
        .CO({NLW_det_out1__3_carry__2_CO_UNCONNECTED[3:2],det_out1__3_carry__2_n_2,det_out1__3_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,window[14:13]}),
        .O({NLW_det_out1__3_carry__2_O_UNCONNECTED[3],det_out1__3_carry__2_n_5,det_out1__3_carry__2_n_6,det_out1__3_carry__2_n_7}),
        .S({1'b0,det_out1__3_carry__2_i_1_n_0,det_out1__3_carry__2_i_2_n_0,det_out1__3_carry__2_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    det_out1__3_carry__2_i_1
       (.I0(window[15]),
        .O(det_out1__3_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    det_out1__3_carry__2_i_2
       (.I0(window[14]),
        .O(det_out1__3_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    det_out1__3_carry__2_i_3
       (.I0(window[13]),
        .O(det_out1__3_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    det_out1__3_carry_i_1
       (.I0(window[4]),
        .O(det_out1__3_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    det_out1__3_carry_i_2
       (.I0(window[3]),
        .O(det_out1__3_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    det_out1__3_carry_i_3
       (.I0(window[2]),
        .O(det_out1__3_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    det_out1__3_carry_i_4
       (.I0(window[1]),
        .O(det_out1__3_carry_i_4_n_0));
  CARRY4 det_out1_carry
       (.CI(1'b0),
        .CO({det_out1,det_out1_carry_n_1,det_out1_carry_n_2,det_out1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({det_out1_carry_i_1_n_0,det_out1_carry_i_2_n_0,det_out1_carry_i_3_n_0,det_out1_carry_i_4_n_0}),
        .O(NLW_det_out1_carry_O_UNCONNECTED[3:0]),
        .S({det_out1_carry_i_5_n_0,det_out1_carry_i_6_n_0,det_out1_carry_i_7_n_0,det_out1_carry_i_8_n_0}));
  CARRY4 det_out1_carry__0
       (.CI(det_out1),
        .CO(NLW_det_out1_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_det_out1_carry__0_O_UNCONNECTED[3:1],det_out1_carry__0_n_7}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT5 #(
    .INIT(32'h4001FD43)) 
    det_out1_carry_i_1
       (.I0(c2_reg[6]),
        .I1(pulseShaper_width[6]),
        .I2(det_out1_carry_i_9_n_0),
        .I3(pulseShaper_width[7]),
        .I4(c2_reg[7]),
        .O(det_out1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    det_out1_carry_i_10
       (.I0(pulseShaper_width[2]),
        .I1(pulseShaper_width[0]),
        .I2(pulseShaper_width[1]),
        .I3(pulseShaper_width[3]),
        .O(det_out1_carry_i_10_n_0));
  LUT5 #(
    .INIT(32'h4001FD43)) 
    det_out1_carry_i_2
       (.I0(c2_reg[4]),
        .I1(pulseShaper_width[4]),
        .I2(det_out1_carry_i_10_n_0),
        .I3(pulseShaper_width[5]),
        .I4(c2_reg[5]),
        .O(det_out1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h44400001FFFD4443)) 
    det_out1_carry_i_3
       (.I0(c2_reg[2]),
        .I1(pulseShaper_width[2]),
        .I2(pulseShaper_width[0]),
        .I3(pulseShaper_width[1]),
        .I4(pulseShaper_width[3]),
        .I5(c2_reg[3]),
        .O(det_out1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h01D3)) 
    det_out1_carry_i_4
       (.I0(c2_reg[0]),
        .I1(pulseShaper_width[0]),
        .I2(pulseShaper_width[1]),
        .I3(c2_reg[1]),
        .O(det_out1_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h94020294)) 
    det_out1_carry_i_5
       (.I0(c2_reg[6]),
        .I1(pulseShaper_width[6]),
        .I2(det_out1_carry_i_9_n_0),
        .I3(pulseShaper_width[7]),
        .I4(c2_reg[7]),
        .O(det_out1_carry_i_5_n_0));
  LUT5 #(
    .INIT(32'h94020294)) 
    det_out1_carry_i_6
       (.I0(c2_reg[4]),
        .I1(pulseShaper_width[4]),
        .I2(det_out1_carry_i_10_n_0),
        .I3(pulseShaper_width[5]),
        .I4(c2_reg[5]),
        .O(det_out1_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h9994000200029994)) 
    det_out1_carry_i_7
       (.I0(c2_reg[2]),
        .I1(pulseShaper_width[2]),
        .I2(pulseShaper_width[0]),
        .I3(pulseShaper_width[1]),
        .I4(pulseShaper_width[3]),
        .I5(c2_reg[3]),
        .O(det_out1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h4224)) 
    det_out1_carry_i_8
       (.I0(c2_reg[0]),
        .I1(pulseShaper_width[0]),
        .I2(pulseShaper_width[1]),
        .I3(c2_reg[1]),
        .O(det_out1_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    det_out1_carry_i_9
       (.I0(pulseShaper_width[4]),
        .I1(pulseShaper_width[2]),
        .I2(pulseShaper_width[0]),
        .I3(pulseShaper_width[1]),
        .I4(pulseShaper_width[3]),
        .I5(pulseShaper_width[5]),
        .O(det_out1_carry_i_9_n_0));
  LUT6 #(
    .INIT(64'h0ACC0A00FFFF0000)) 
    det_out_i_1
       (.I0(det_out),
        .I1(det_out0),
        .I2(det_out1_carry__0_n_7),
        .I3(state_reg_n_0),
        .I4(det_in),
        .I5(enable),
        .O(det_out_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    det_out_reg
       (.C(clk),
        .CE(1'b1),
        .D(det_out_i_1_n_0),
        .Q(det_out),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h5580FF80)) 
    state_i_1
       (.I0(enable),
        .I1(det_out0),
        .I2(det_in),
        .I3(state_reg_n_0),
        .I4(det_out1_carry__0_n_7),
        .O(state_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    state_reg
       (.C(clk),
        .CE(1'b1),
        .D(state_i_1_n_0),
        .Q(state_reg_n_0),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "GateKeeper_BD_GateKeeper_2_0,GateKeeper,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "GateKeeper,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    enable,
    window,
    pulseShaper_width,
    det_in,
    det_out);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  input enable;
  input [15:0]window;
  input [7:0]pulseShaper_width;
  input det_in;
  output det_out;

  wire clk;
  wire det_in;
  wire det_out;
  wire enable;
  wire [7:0]pulseShaper_width;
  wire [15:0]window;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_GateKeeper inst
       (.clk(clk),
        .det_in(det_in),
        .det_out(det_out),
        .enable(enable),
        .pulseShaper_width(pulseShaper_width),
        .window(window));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
