// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Apr  3 16:27:09 2025
// Host        : donaufeld running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/danie/Documents/GitHub/GateKeeper/FPGA/GateKeeper/BD/GateKeeper_BD/ip/GateKeeper_BD_GateKeeper_1_0/GateKeeper_BD_GateKeeper_1_0_sim_netlist.v
// Design      : GateKeeper_BD_GateKeeper_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "GateKeeper_BD_GateKeeper_1_0,GateKeeper,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "GateKeeper,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module GateKeeper_BD_GateKeeper_1_0
   (clk,
    enable,
    window,
    pulseShaper_width,
    det_in,
    det_out,
    GateKeeper);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 400000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  input enable;
  input [15:0]window;
  input [7:0]pulseShaper_width;
  input det_in;
  output det_out;
  output GateKeeper;

  wire GateKeeper;
  wire clk;
  wire det_in;
  wire det_out;
  wire enable;
  wire [7:0]pulseShaper_width;
  wire [15:0]window;

  GateKeeper_BD_GateKeeper_1_0_GateKeeper inst
       (.GateKeeper(GateKeeper),
        .clk(clk),
        .det_in(det_in),
        .det_out(det_out),
        .enable(enable),
        .pulseShaper_width(pulseShaper_width),
        .window(window));
endmodule

(* ORIG_REF_NAME = "GateKeeper" *) 
module GateKeeper_BD_GateKeeper_1_0_GateKeeper
   (det_out,
    GateKeeper,
    enable,
    det_in,
    clk,
    window,
    pulseShaper_width);
  output det_out;
  output GateKeeper;
  input enable;
  input det_in;
  input clk;
  input [15:0]window;
  input [7:0]pulseShaper_width;

  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire GateKeeper;
  wire GateKeeper_i_1_n_0;
  wire GateKeeper_i_2_n_0;
  wire [15:0]c;
  wire c1__7_carry__0_i_1_n_0;
  wire c1__7_carry__0_i_2_n_0;
  wire c1__7_carry__0_i_3_n_0;
  wire c1__7_carry__0_i_4_n_0;
  wire c1__7_carry__0_n_1;
  wire c1__7_carry__0_n_2;
  wire c1__7_carry__0_n_3;
  wire c1__7_carry_i_1_n_0;
  wire c1__7_carry_i_2_n_0;
  wire c1__7_carry_i_3_n_0;
  wire c1__7_carry_i_4_n_0;
  wire c1__7_carry_i_5_n_0;
  wire c1__7_carry_i_6_n_0;
  wire c1__7_carry_i_7_n_0;
  wire c1__7_carry_i_8_n_0;
  wire c1__7_carry_n_0;
  wire c1__7_carry_n_1;
  wire c1__7_carry_n_2;
  wire c1__7_carry_n_3;
  wire c1_carry__0_i_1_n_0;
  wire c1_carry__0_i_2_n_0;
  wire c1_carry__0_i_3_n_0;
  wire c1_carry__0_i_4_n_0;
  wire c1_carry__0_i_5_n_0;
  wire c1_carry__0_i_6_n_0;
  wire c1_carry__0_i_7_n_0;
  wire c1_carry__0_i_8_n_0;
  wire c1_carry__0_n_0;
  wire c1_carry__0_n_1;
  wire c1_carry__0_n_2;
  wire c1_carry__0_n_3;
  wire c1_carry_i_1_n_0;
  wire c1_carry_i_2_n_0;
  wire c1_carry_i_3_n_0;
  wire c1_carry_i_4_n_0;
  wire c1_carry_i_5_n_0;
  wire c1_carry_i_6_n_0;
  wire c1_carry_i_7_n_0;
  wire c1_carry_i_8_n_0;
  wire c1_carry_n_0;
  wire c1_carry_n_1;
  wire c1_carry_n_2;
  wire c1_carry_n_3;
  wire \c[15]_i_1_n_0 ;
  wire \c_reg[12]_i_2_n_0 ;
  wire \c_reg[12]_i_2_n_1 ;
  wire \c_reg[12]_i_2_n_2 ;
  wire \c_reg[12]_i_2_n_3 ;
  wire \c_reg[15]_i_3_n_2 ;
  wire \c_reg[15]_i_3_n_3 ;
  wire \c_reg[4]_i_2_n_0 ;
  wire \c_reg[4]_i_2_n_1 ;
  wire \c_reg[4]_i_2_n_2 ;
  wire \c_reg[4]_i_2_n_3 ;
  wire \c_reg[8]_i_2_n_0 ;
  wire \c_reg[8]_i_2_n_1 ;
  wire \c_reg[8]_i_2_n_2 ;
  wire \c_reg[8]_i_2_n_3 ;
  wire \c_reg_n_0_[0] ;
  wire \c_reg_n_0_[10] ;
  wire \c_reg_n_0_[11] ;
  wire \c_reg_n_0_[12] ;
  wire \c_reg_n_0_[13] ;
  wire \c_reg_n_0_[14] ;
  wire \c_reg_n_0_[15] ;
  wire \c_reg_n_0_[1] ;
  wire \c_reg_n_0_[2] ;
  wire \c_reg_n_0_[3] ;
  wire \c_reg_n_0_[4] ;
  wire \c_reg_n_0_[5] ;
  wire \c_reg_n_0_[6] ;
  wire \c_reg_n_0_[7] ;
  wire \c_reg_n_0_[8] ;
  wire \c_reg_n_0_[9] ;
  wire clk;
  wire det_in;
  wire det_out;
  wire enable;
  wire p_0_in;
  wire [15:1]p_1_in;
  wire [7:0]pulseShaper_width;
  wire [1:0]state;
  wire [15:0]window;
  wire [3:0]NLW_c1__7_carry_O_UNCONNECTED;
  wire [3:0]NLW_c1__7_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_c1_carry_O_UNCONNECTED;
  wire [3:0]NLW_c1_carry__0_O_UNCONNECTED;
  wire [3:2]\NLW_c_reg[15]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_c_reg[15]_i_3_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hF522F5AAF500F500)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(enable),
        .I1(c1_carry__0_n_0),
        .I2(p_0_in),
        .I3(state[0]),
        .I4(state[1]),
        .I5(det_in),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF5FF0A00F5DD0A00)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(enable),
        .I1(c1_carry__0_n_0),
        .I2(p_0_in),
        .I3(state[0]),
        .I4(state[1]),
        .I5(det_in),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:01,iSTATE0:10,iSTATE1:00,iSTATE2:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:01,iSTATE0:10,iSTATE1:00,iSTATE2:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hB)) 
    GateKeeper_i_1
       (.I0(GateKeeper_i_2_n_0),
        .I1(enable),
        .O(GateKeeper_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFCFF5CF30003500)) 
    GateKeeper_i_2
       (.I0(det_in),
        .I1(p_0_in),
        .I2(state[0]),
        .I3(state[1]),
        .I4(c1_carry__0_n_0),
        .I5(GateKeeper),
        .O(GateKeeper_i_2_n_0));
  FDRE #(
    .INIT(1'b1)) 
    GateKeeper_reg
       (.C(clk),
        .CE(1'b1),
        .D(GateKeeper_i_1_n_0),
        .Q(GateKeeper),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 c1__7_carry
       (.CI(1'b0),
        .CO({c1__7_carry_n_0,c1__7_carry_n_1,c1__7_carry_n_2,c1__7_carry_n_3}),
        .CYINIT(1'b0),
        .DI({c1__7_carry_i_1_n_0,c1__7_carry_i_2_n_0,c1__7_carry_i_3_n_0,c1__7_carry_i_4_n_0}),
        .O(NLW_c1__7_carry_O_UNCONNECTED[3:0]),
        .S({c1__7_carry_i_5_n_0,c1__7_carry_i_6_n_0,c1__7_carry_i_7_n_0,c1__7_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 c1__7_carry__0
       (.CI(c1__7_carry_n_0),
        .CO({p_0_in,c1__7_carry__0_n_1,c1__7_carry__0_n_2,c1__7_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_c1__7_carry__0_O_UNCONNECTED[3:0]),
        .S({c1__7_carry__0_i_1_n_0,c1__7_carry__0_i_2_n_0,c1__7_carry__0_i_3_n_0,c1__7_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    c1__7_carry__0_i_1
       (.I0(\c_reg_n_0_[14] ),
        .I1(\c_reg_n_0_[15] ),
        .O(c1__7_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    c1__7_carry__0_i_2
       (.I0(\c_reg_n_0_[12] ),
        .I1(\c_reg_n_0_[13] ),
        .O(c1__7_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    c1__7_carry__0_i_3
       (.I0(\c_reg_n_0_[10] ),
        .I1(\c_reg_n_0_[11] ),
        .O(c1__7_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    c1__7_carry__0_i_4
       (.I0(\c_reg_n_0_[8] ),
        .I1(\c_reg_n_0_[9] ),
        .O(c1__7_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    c1__7_carry_i_1
       (.I0(pulseShaper_width[6]),
        .I1(\c_reg_n_0_[6] ),
        .I2(\c_reg_n_0_[7] ),
        .I3(pulseShaper_width[7]),
        .O(c1__7_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    c1__7_carry_i_2
       (.I0(pulseShaper_width[4]),
        .I1(\c_reg_n_0_[4] ),
        .I2(\c_reg_n_0_[5] ),
        .I3(pulseShaper_width[5]),
        .O(c1__7_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    c1__7_carry_i_3
       (.I0(pulseShaper_width[2]),
        .I1(\c_reg_n_0_[2] ),
        .I2(\c_reg_n_0_[3] ),
        .I3(pulseShaper_width[3]),
        .O(c1__7_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    c1__7_carry_i_4
       (.I0(pulseShaper_width[0]),
        .I1(\c_reg_n_0_[0] ),
        .I2(\c_reg_n_0_[1] ),
        .I3(pulseShaper_width[1]),
        .O(c1__7_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    c1__7_carry_i_5
       (.I0(pulseShaper_width[6]),
        .I1(\c_reg_n_0_[6] ),
        .I2(pulseShaper_width[7]),
        .I3(\c_reg_n_0_[7] ),
        .O(c1__7_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    c1__7_carry_i_6
       (.I0(pulseShaper_width[4]),
        .I1(\c_reg_n_0_[4] ),
        .I2(pulseShaper_width[5]),
        .I3(\c_reg_n_0_[5] ),
        .O(c1__7_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    c1__7_carry_i_7
       (.I0(pulseShaper_width[2]),
        .I1(\c_reg_n_0_[2] ),
        .I2(pulseShaper_width[3]),
        .I3(\c_reg_n_0_[3] ),
        .O(c1__7_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    c1__7_carry_i_8
       (.I0(pulseShaper_width[0]),
        .I1(\c_reg_n_0_[0] ),
        .I2(pulseShaper_width[1]),
        .I3(\c_reg_n_0_[1] ),
        .O(c1__7_carry_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 c1_carry
       (.CI(1'b0),
        .CO({c1_carry_n_0,c1_carry_n_1,c1_carry_n_2,c1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({c1_carry_i_1_n_0,c1_carry_i_2_n_0,c1_carry_i_3_n_0,c1_carry_i_4_n_0}),
        .O(NLW_c1_carry_O_UNCONNECTED[3:0]),
        .S({c1_carry_i_5_n_0,c1_carry_i_6_n_0,c1_carry_i_7_n_0,c1_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 c1_carry__0
       (.CI(c1_carry_n_0),
        .CO({c1_carry__0_n_0,c1_carry__0_n_1,c1_carry__0_n_2,c1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({c1_carry__0_i_1_n_0,c1_carry__0_i_2_n_0,c1_carry__0_i_3_n_0,c1_carry__0_i_4_n_0}),
        .O(NLW_c1_carry__0_O_UNCONNECTED[3:0]),
        .S({c1_carry__0_i_5_n_0,c1_carry__0_i_6_n_0,c1_carry__0_i_7_n_0,c1_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    c1_carry__0_i_1
       (.I0(window[14]),
        .I1(\c_reg_n_0_[14] ),
        .I2(\c_reg_n_0_[15] ),
        .I3(window[15]),
        .O(c1_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    c1_carry__0_i_2
       (.I0(window[12]),
        .I1(\c_reg_n_0_[12] ),
        .I2(\c_reg_n_0_[13] ),
        .I3(window[13]),
        .O(c1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    c1_carry__0_i_3
       (.I0(window[10]),
        .I1(\c_reg_n_0_[10] ),
        .I2(\c_reg_n_0_[11] ),
        .I3(window[11]),
        .O(c1_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    c1_carry__0_i_4
       (.I0(window[8]),
        .I1(\c_reg_n_0_[8] ),
        .I2(\c_reg_n_0_[9] ),
        .I3(window[9]),
        .O(c1_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    c1_carry__0_i_5
       (.I0(window[14]),
        .I1(\c_reg_n_0_[14] ),
        .I2(window[15]),
        .I3(\c_reg_n_0_[15] ),
        .O(c1_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    c1_carry__0_i_6
       (.I0(window[12]),
        .I1(\c_reg_n_0_[12] ),
        .I2(window[13]),
        .I3(\c_reg_n_0_[13] ),
        .O(c1_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    c1_carry__0_i_7
       (.I0(window[10]),
        .I1(\c_reg_n_0_[10] ),
        .I2(window[11]),
        .I3(\c_reg_n_0_[11] ),
        .O(c1_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    c1_carry__0_i_8
       (.I0(window[8]),
        .I1(\c_reg_n_0_[8] ),
        .I2(window[9]),
        .I3(\c_reg_n_0_[9] ),
        .O(c1_carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    c1_carry_i_1
       (.I0(window[6]),
        .I1(\c_reg_n_0_[6] ),
        .I2(\c_reg_n_0_[7] ),
        .I3(window[7]),
        .O(c1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    c1_carry_i_2
       (.I0(window[4]),
        .I1(\c_reg_n_0_[4] ),
        .I2(\c_reg_n_0_[5] ),
        .I3(window[5]),
        .O(c1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    c1_carry_i_3
       (.I0(window[2]),
        .I1(\c_reg_n_0_[2] ),
        .I2(\c_reg_n_0_[3] ),
        .I3(window[3]),
        .O(c1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    c1_carry_i_4
       (.I0(window[0]),
        .I1(\c_reg_n_0_[0] ),
        .I2(\c_reg_n_0_[1] ),
        .I3(window[1]),
        .O(c1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    c1_carry_i_5
       (.I0(window[6]),
        .I1(\c_reg_n_0_[6] ),
        .I2(window[7]),
        .I3(\c_reg_n_0_[7] ),
        .O(c1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    c1_carry_i_6
       (.I0(window[4]),
        .I1(\c_reg_n_0_[4] ),
        .I2(window[5]),
        .I3(\c_reg_n_0_[5] ),
        .O(c1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    c1_carry_i_7
       (.I0(window[2]),
        .I1(\c_reg_n_0_[2] ),
        .I2(window[3]),
        .I3(\c_reg_n_0_[3] ),
        .O(c1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    c1_carry_i_8
       (.I0(window[0]),
        .I1(\c_reg_n_0_[0] ),
        .I2(window[1]),
        .I3(\c_reg_n_0_[1] ),
        .O(c1_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h33337F7555557F75)) 
    \c[0]_i_1 
       (.I0(state[1]),
        .I1(\c_reg_n_0_[0] ),
        .I2(c1_carry__0_n_0),
        .I3(det_in),
        .I4(state[0]),
        .I5(p_0_in),
        .O(c[0]));
  LUT5 #(
    .INIT(32'hB8008800)) 
    \c[10]_i_1 
       (.I0(p_0_in),
        .I1(state[0]),
        .I2(state[1]),
        .I3(p_1_in[10]),
        .I4(c1_carry__0_n_0),
        .O(c[10]));
  LUT5 #(
    .INIT(32'hB8008800)) 
    \c[11]_i_1 
       (.I0(p_0_in),
        .I1(state[0]),
        .I2(state[1]),
        .I3(p_1_in[11]),
        .I4(c1_carry__0_n_0),
        .O(c[11]));
  LUT5 #(
    .INIT(32'hB8008800)) 
    \c[12]_i_1 
       (.I0(p_0_in),
        .I1(state[0]),
        .I2(state[1]),
        .I3(p_1_in[12]),
        .I4(c1_carry__0_n_0),
        .O(c[12]));
  LUT5 #(
    .INIT(32'hB8008800)) 
    \c[13]_i_1 
       (.I0(p_0_in),
        .I1(state[0]),
        .I2(state[1]),
        .I3(p_1_in[13]),
        .I4(c1_carry__0_n_0),
        .O(c[13]));
  LUT5 #(
    .INIT(32'hB8008800)) 
    \c[14]_i_1 
       (.I0(p_0_in),
        .I1(state[0]),
        .I2(state[1]),
        .I3(p_1_in[14]),
        .I4(c1_carry__0_n_0),
        .O(c[14]));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \c[15]_i_1 
       (.I0(enable),
        .I1(det_in),
        .I2(state[0]),
        .I3(state[1]),
        .O(\c[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8008800)) 
    \c[15]_i_2 
       (.I0(p_0_in),
        .I1(state[0]),
        .I2(state[1]),
        .I3(p_1_in[15]),
        .I4(c1_carry__0_n_0),
        .O(c[15]));
  LUT5 #(
    .INIT(32'hB8008800)) 
    \c[1]_i_1 
       (.I0(p_0_in),
        .I1(state[0]),
        .I2(state[1]),
        .I3(p_1_in[1]),
        .I4(c1_carry__0_n_0),
        .O(c[1]));
  LUT5 #(
    .INIT(32'hB8008800)) 
    \c[2]_i_1 
       (.I0(p_0_in),
        .I1(state[0]),
        .I2(state[1]),
        .I3(p_1_in[2]),
        .I4(c1_carry__0_n_0),
        .O(c[2]));
  LUT5 #(
    .INIT(32'hB8008800)) 
    \c[3]_i_1 
       (.I0(p_0_in),
        .I1(state[0]),
        .I2(state[1]),
        .I3(p_1_in[3]),
        .I4(c1_carry__0_n_0),
        .O(c[3]));
  LUT5 #(
    .INIT(32'hB8008800)) 
    \c[4]_i_1 
       (.I0(p_0_in),
        .I1(state[0]),
        .I2(state[1]),
        .I3(p_1_in[4]),
        .I4(c1_carry__0_n_0),
        .O(c[4]));
  LUT5 #(
    .INIT(32'hB8008800)) 
    \c[5]_i_1 
       (.I0(p_0_in),
        .I1(state[0]),
        .I2(state[1]),
        .I3(p_1_in[5]),
        .I4(c1_carry__0_n_0),
        .O(c[5]));
  LUT5 #(
    .INIT(32'hB8008800)) 
    \c[6]_i_1 
       (.I0(p_0_in),
        .I1(state[0]),
        .I2(state[1]),
        .I3(p_1_in[6]),
        .I4(c1_carry__0_n_0),
        .O(c[6]));
  LUT5 #(
    .INIT(32'hB8008800)) 
    \c[7]_i_1 
       (.I0(p_0_in),
        .I1(state[0]),
        .I2(state[1]),
        .I3(p_1_in[7]),
        .I4(c1_carry__0_n_0),
        .O(c[7]));
  LUT5 #(
    .INIT(32'hB8008800)) 
    \c[8]_i_1 
       (.I0(p_0_in),
        .I1(state[0]),
        .I2(state[1]),
        .I3(p_1_in[8]),
        .I4(c1_carry__0_n_0),
        .O(c[8]));
  LUT5 #(
    .INIT(32'hB8008800)) 
    \c[9]_i_1 
       (.I0(p_0_in),
        .I1(state[0]),
        .I2(state[1]),
        .I3(p_1_in[9]),
        .I4(c1_carry__0_n_0),
        .O(c[9]));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[0] 
       (.C(clk),
        .CE(\c[15]_i_1_n_0 ),
        .D(c[0]),
        .Q(\c_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[10] 
       (.C(clk),
        .CE(\c[15]_i_1_n_0 ),
        .D(c[10]),
        .Q(\c_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[11] 
       (.C(clk),
        .CE(\c[15]_i_1_n_0 ),
        .D(c[11]),
        .Q(\c_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[12] 
       (.C(clk),
        .CE(\c[15]_i_1_n_0 ),
        .D(c[12]),
        .Q(\c_reg_n_0_[12] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \c_reg[12]_i_2 
       (.CI(\c_reg[8]_i_2_n_0 ),
        .CO({\c_reg[12]_i_2_n_0 ,\c_reg[12]_i_2_n_1 ,\c_reg[12]_i_2_n_2 ,\c_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[12:9]),
        .S({\c_reg_n_0_[12] ,\c_reg_n_0_[11] ,\c_reg_n_0_[10] ,\c_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[13] 
       (.C(clk),
        .CE(\c[15]_i_1_n_0 ),
        .D(c[13]),
        .Q(\c_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[14] 
       (.C(clk),
        .CE(\c[15]_i_1_n_0 ),
        .D(c[14]),
        .Q(\c_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[15] 
       (.C(clk),
        .CE(\c[15]_i_1_n_0 ),
        .D(c[15]),
        .Q(\c_reg_n_0_[15] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \c_reg[15]_i_3 
       (.CI(\c_reg[12]_i_2_n_0 ),
        .CO({\NLW_c_reg[15]_i_3_CO_UNCONNECTED [3:2],\c_reg[15]_i_3_n_2 ,\c_reg[15]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_c_reg[15]_i_3_O_UNCONNECTED [3],p_1_in[15:13]}),
        .S({1'b0,\c_reg_n_0_[15] ,\c_reg_n_0_[14] ,\c_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[1] 
       (.C(clk),
        .CE(\c[15]_i_1_n_0 ),
        .D(c[1]),
        .Q(\c_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[2] 
       (.C(clk),
        .CE(\c[15]_i_1_n_0 ),
        .D(c[2]),
        .Q(\c_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[3] 
       (.C(clk),
        .CE(\c[15]_i_1_n_0 ),
        .D(c[3]),
        .Q(\c_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[4] 
       (.C(clk),
        .CE(\c[15]_i_1_n_0 ),
        .D(c[4]),
        .Q(\c_reg_n_0_[4] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \c_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\c_reg[4]_i_2_n_0 ,\c_reg[4]_i_2_n_1 ,\c_reg[4]_i_2_n_2 ,\c_reg[4]_i_2_n_3 }),
        .CYINIT(\c_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[4:1]),
        .S({\c_reg_n_0_[4] ,\c_reg_n_0_[3] ,\c_reg_n_0_[2] ,\c_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[5] 
       (.C(clk),
        .CE(\c[15]_i_1_n_0 ),
        .D(c[5]),
        .Q(\c_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[6] 
       (.C(clk),
        .CE(\c[15]_i_1_n_0 ),
        .D(c[6]),
        .Q(\c_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[7] 
       (.C(clk),
        .CE(\c[15]_i_1_n_0 ),
        .D(c[7]),
        .Q(\c_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[8] 
       (.C(clk),
        .CE(\c[15]_i_1_n_0 ),
        .D(c[8]),
        .Q(\c_reg_n_0_[8] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \c_reg[8]_i_2 
       (.CI(\c_reg[4]_i_2_n_0 ),
        .CO({\c_reg[8]_i_2_n_0 ,\c_reg[8]_i_2_n_1 ,\c_reg[8]_i_2_n_2 ,\c_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[8:5]),
        .S({\c_reg_n_0_[8] ,\c_reg_n_0_[7] ,\c_reg_n_0_[6] ,\c_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[9] 
       (.C(clk),
        .CE(\c[15]_i_1_n_0 ),
        .D(c[9]),
        .Q(\c_reg_n_0_[9] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    det_out_INST_0
       (.I0(GateKeeper),
        .I1(det_in),
        .O(det_out));
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
