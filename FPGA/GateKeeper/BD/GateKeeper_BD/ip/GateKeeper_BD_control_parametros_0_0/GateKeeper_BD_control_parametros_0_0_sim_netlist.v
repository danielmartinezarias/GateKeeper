// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Wed Mar 26 11:18:50 2025
// Host        : donaufeld running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/danie/Documents/GitHub/GateKeeper/FPGA/GateKeeper/BD/GateKeeper_BD/ip/GateKeeper_BD_control_parametros_0_0/GateKeeper_BD_control_parametros_0_0_sim_netlist.v
// Design      : GateKeeper_BD_control_parametros_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "GateKeeper_BD_control_parametros_0_0,control_parametros,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "control_parametros,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module GateKeeper_BD_control_parametros_0_0
   (clk,
    readyRx,
    bufferRx,
    window,
    pulseShaper_width,
    enableGateKeeper);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  input readyRx;
  input [7:0]bufferRx;
  output [15:0]window;
  output [7:0]pulseShaper_width;
  output enableGateKeeper;

  wire [7:0]bufferRx;
  wire clk;
  wire enableGateKeeper;
  wire [7:0]pulseShaper_width;
  wire readyRx;
  wire [15:0]window;

  GateKeeper_BD_control_parametros_0_0_control_parametros inst
       (.bufferRx(bufferRx),
        .clk(clk),
        .enableGateKeeper(enableGateKeeper),
        .pulseShaper_width(pulseShaper_width),
        .readyRx(readyRx),
        .window(window));
endmodule

(* ORIG_REF_NAME = "OneShot" *) 
module GateKeeper_BD_control_parametros_0_0_OneShot
   (\ctrl_reg[4] ,
    \ctrl_reg[4]_0 ,
    E,
    trigger_reg_0,
    \ctrl_reg[0] ,
    clk,
    \ctrl_reg[15] ,
    Q,
    \ctrl_reg[8] ,
    \ctrl_reg[8]_0 ,
    \ctrl_reg[8]_1 ,
    \ctrl_reg[8]_2 ,
    \orden_reg[3] ,
    \d2_reg[0] ,
    readyRx);
  output \ctrl_reg[4] ;
  output \ctrl_reg[4]_0 ;
  output [1:0]E;
  output [0:0]trigger_reg_0;
  output [0:0]\ctrl_reg[0] ;
  input clk;
  input \ctrl_reg[15] ;
  input [4:0]Q;
  input \ctrl_reg[8] ;
  input \ctrl_reg[8]_0 ;
  input \ctrl_reg[8]_1 ;
  input \ctrl_reg[8]_2 ;
  input \orden_reg[3] ;
  input \d2_reg[0] ;
  input readyRx;

  wire [1:0]E;
  wire [4:0]Q;
  wire clk;
  wire \ctrl[7]_i_6_n_0 ;
  wire [0:0]\ctrl_reg[0] ;
  wire \ctrl_reg[15] ;
  wire \ctrl_reg[4] ;
  wire \ctrl_reg[4]_0 ;
  wire \ctrl_reg[8] ;
  wire \ctrl_reg[8]_0 ;
  wire \ctrl_reg[8]_1 ;
  wire \ctrl_reg[8]_2 ;
  wire \d2_reg[0] ;
  wire [1:0]monitor;
  wire \orden_reg[3] ;
  wire os_readyRx;
  wire readyRx;
  wire trigger_i_1_n_0;
  wire [0:0]trigger_reg_0;

  LUT6 #(
    .INIT(64'hAAA2AAAAAAAAAAAA)) 
    \ctrl[15]_i_1 
       (.I0(\ctrl_reg[4]_0 ),
        .I1(\ctrl_reg[15] ),
        .I2(Q[4]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\ctrl_reg[4] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \ctrl[7]_i_1 
       (.I0(\ctrl_reg[8] ),
        .I1(\ctrl_reg[8]_0 ),
        .I2(\ctrl_reg[8]_1 ),
        .I3(Q[4]),
        .I4(\ctrl[7]_i_6_n_0 ),
        .I5(\ctrl_reg[8]_2 ),
        .O(\ctrl_reg[4]_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \ctrl[7]_i_6 
       (.I0(os_readyRx),
        .I1(Q[2]),
        .I2(Q[3]),
        .O(\ctrl[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \d1[7]_i_1 
       (.I0(os_readyRx),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\ctrl_reg[15] ),
        .O(trigger_reg_0));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \d2[7]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(os_readyRx),
        .I3(Q[4]),
        .I4(Q[2]),
        .I5(\d2_reg[0] ),
        .O(\ctrl_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \monitor_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(readyRx),
        .Q(monitor[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \monitor_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(monitor[0]),
        .Q(monitor[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \orden[15]_i_1 
       (.I0(\ctrl_reg[15] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(os_readyRx),
        .I4(Q[4]),
        .I5(\orden_reg[3] ),
        .O(E[1]));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \orden[7]_i_1 
       (.I0(\ctrl_reg[15] ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(os_readyRx),
        .I4(Q[4]),
        .I5(\orden_reg[3] ),
        .O(E[0]));
  LUT2 #(
    .INIT(4'h2)) 
    trigger_i_1
       (.I0(monitor[0]),
        .I1(monitor[1]),
        .O(trigger_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    trigger_reg
       (.C(clk),
        .CE(1'b1),
        .D(trigger_i_1_n_0),
        .Q(os_readyRx),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "control_parametros" *) 
module GateKeeper_BD_control_parametros_0_0_control_parametros
   (window,
    pulseShaper_width,
    enableGateKeeper,
    clk,
    readyRx,
    bufferRx);
  output [15:0]window;
  output [7:0]pulseShaper_width;
  output enableGateKeeper;
  input clk;
  input readyRx;
  input [7:0]bufferRx;

  wire [7:0]bufferRx;
  wire clk;
  wire [15:0]ctrl;
  wire \ctrl[0]_i_1_n_0 ;
  wire \ctrl[0]_i_2_n_0 ;
  wire \ctrl[15]_i_2_n_0 ;
  wire \ctrl[1]_i_1_n_0 ;
  wire \ctrl[1]_i_2_n_0 ;
  wire \ctrl[2]_i_1_n_0 ;
  wire \ctrl[2]_i_2_n_0 ;
  wire \ctrl[3]_i_1_n_0 ;
  wire \ctrl[3]_i_2_n_0 ;
  wire \ctrl[3]_i_3_n_0 ;
  wire \ctrl[4]_i_1_n_0 ;
  wire \ctrl[5]_i_1_n_0 ;
  wire \ctrl[6]_i_1_n_0 ;
  wire \ctrl[7]_i_2_n_0 ;
  wire \ctrl[7]_i_3_n_0 ;
  wire \ctrl[7]_i_4_n_0 ;
  wire \ctrl[7]_i_5_n_0 ;
  wire \ctrl[7]_i_7_n_0 ;
  wire \ctrl[7]_i_8_n_0 ;
  wire \ctrl[7]_i_9_n_0 ;
  wire enableGateKeeper;
  wire enableGateKeeper_i_1_n_0;
  wire enableGateKeeper_i_2_n_0;
  wire o1_n_0;
  wire o1_n_1;
  wire o1_n_4;
  wire o1_n_5;
  wire [15:0]orden;
  wire \orden[15]_i_2_n_0 ;
  wire [8:5]p_0_in;
  wire [15:0]p_1_in;
  wire [7:0]pulseShaper_width;
  wire \pulseShaper_width[7]_i_1_n_0 ;
  wire readyRx;
  wire [15:0]window;
  wire \window[15]_i_1_n_0 ;
  wire \window[15]_i_2_n_0 ;

  LUT6 #(
    .INIT(64'h000000FF00000010)) 
    \ctrl[0]_i_1 
       (.I0(ctrl[3]),
        .I1(ctrl[0]),
        .I2(bufferRx[0]),
        .I3(\ctrl[7]_i_9_n_0 ),
        .I4(ctrl[4]),
        .I5(\ctrl[0]_i_2_n_0 ),
        .O(\ctrl[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h000F80FC)) 
    \ctrl[0]_i_2 
       (.I0(orden[0]),
        .I1(ctrl[1]),
        .I2(ctrl[3]),
        .I3(ctrl[0]),
        .I4(ctrl[2]),
        .O(\ctrl[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \ctrl[15]_i_2 
       (.I0(ctrl[3]),
        .I1(\ctrl[7]_i_3_n_0 ),
        .I2(\ctrl[7]_i_4_n_0 ),
        .I3(ctrl[6]),
        .I4(ctrl[14]),
        .I5(ctrl[13]),
        .O(\ctrl[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5500551455145514)) 
    \ctrl[1]_i_1 
       (.I0(\ctrl[3]_i_2_n_0 ),
        .I1(ctrl[1]),
        .I2(ctrl[0]),
        .I3(\ctrl[1]_i_2_n_0 ),
        .I4(ctrl[3]),
        .I5(ctrl[2]),
        .O(\ctrl[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000A00C)) 
    \ctrl[1]_i_2 
       (.I0(orden[1]),
        .I1(bufferRx[1]),
        .I2(ctrl[3]),
        .I3(ctrl[1]),
        .I4(ctrl[2]),
        .O(\ctrl[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0000008C)) 
    \ctrl[2]_i_1 
       (.I0(orden[2]),
        .I1(\ctrl[2]_i_2_n_0 ),
        .I2(ctrl[3]),
        .I3(\ctrl[7]_i_9_n_0 ),
        .I4(ctrl[4]),
        .O(\ctrl[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h005FA0A4)) 
    \ctrl[2]_i_2 
       (.I0(ctrl[0]),
        .I1(bufferRx[2]),
        .I2(ctrl[1]),
        .I3(ctrl[3]),
        .I4(ctrl[2]),
        .O(\ctrl[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \ctrl[3]_i_1 
       (.I0(\ctrl[3]_i_2_n_0 ),
        .I1(\ctrl[3]_i_3_n_0 ),
        .O(\ctrl[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \ctrl[3]_i_2 
       (.I0(\ctrl[7]_i_3_n_0 ),
        .I1(\ctrl[7]_i_4_n_0 ),
        .I2(ctrl[6]),
        .I3(ctrl[14]),
        .I4(ctrl[13]),
        .I5(ctrl[4]),
        .O(\ctrl[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF3FFF3F00FDC0FD)) 
    \ctrl[3]_i_3 
       (.I0(bufferRx[3]),
        .I1(ctrl[1]),
        .I2(ctrl[0]),
        .I3(ctrl[3]),
        .I4(orden[3]),
        .I5(ctrl[2]),
        .O(\ctrl[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0000A0C0)) 
    \ctrl[4]_i_1 
       (.I0(orden[4]),
        .I1(bufferRx[4]),
        .I2(\ctrl[7]_i_8_n_0 ),
        .I3(ctrl[3]),
        .I4(\ctrl[7]_i_9_n_0 ),
        .O(\ctrl[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000A0C0)) 
    \ctrl[5]_i_1 
       (.I0(orden[5]),
        .I1(bufferRx[5]),
        .I2(\ctrl[7]_i_8_n_0 ),
        .I3(ctrl[3]),
        .I4(\ctrl[7]_i_9_n_0 ),
        .O(\ctrl[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000A0C0)) 
    \ctrl[6]_i_1 
       (.I0(orden[6]),
        .I1(bufferRx[6]),
        .I2(\ctrl[7]_i_8_n_0 ),
        .I3(ctrl[3]),
        .I4(\ctrl[7]_i_9_n_0 ),
        .O(\ctrl[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000A0C0)) 
    \ctrl[7]_i_2 
       (.I0(orden[7]),
        .I1(bufferRx[7]),
        .I2(\ctrl[7]_i_8_n_0 ),
        .I3(ctrl[3]),
        .I4(\ctrl[7]_i_9_n_0 ),
        .O(\ctrl[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ctrl[7]_i_3 
       (.I0(ctrl[8]),
        .I1(ctrl[5]),
        .I2(ctrl[10]),
        .I3(ctrl[7]),
        .O(\ctrl[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ctrl[7]_i_4 
       (.I0(ctrl[12]),
        .I1(ctrl[9]),
        .I2(ctrl[15]),
        .I3(ctrl[11]),
        .O(\ctrl[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \ctrl[7]_i_5 
       (.I0(ctrl[13]),
        .I1(ctrl[14]),
        .I2(ctrl[6]),
        .O(\ctrl[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \ctrl[7]_i_7 
       (.I0(ctrl[3]),
        .I1(ctrl[1]),
        .I2(ctrl[0]),
        .O(\ctrl[7]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000081)) 
    \ctrl[7]_i_8 
       (.I0(ctrl[3]),
        .I1(ctrl[1]),
        .I2(ctrl[0]),
        .I3(ctrl[4]),
        .I4(ctrl[2]),
        .O(\ctrl[7]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \ctrl[7]_i_9 
       (.I0(ctrl[13]),
        .I1(ctrl[14]),
        .I2(ctrl[6]),
        .I3(\ctrl[7]_i_4_n_0 ),
        .I4(\ctrl[7]_i_3_n_0 ),
        .O(\ctrl[7]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg[0] 
       (.C(clk),
        .CE(o1_n_1),
        .D(\ctrl[0]_i_1_n_0 ),
        .Q(ctrl[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg[10] 
       (.C(clk),
        .CE(o1_n_1),
        .D(orden[10]),
        .Q(ctrl[10]),
        .R(o1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg[11] 
       (.C(clk),
        .CE(o1_n_1),
        .D(orden[11]),
        .Q(ctrl[11]),
        .R(o1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg[12] 
       (.C(clk),
        .CE(o1_n_1),
        .D(orden[12]),
        .Q(ctrl[12]),
        .R(o1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg[13] 
       (.C(clk),
        .CE(o1_n_1),
        .D(orden[13]),
        .Q(ctrl[13]),
        .R(o1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg[14] 
       (.C(clk),
        .CE(o1_n_1),
        .D(orden[14]),
        .Q(ctrl[14]),
        .R(o1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg[15] 
       (.C(clk),
        .CE(o1_n_1),
        .D(orden[15]),
        .Q(ctrl[15]),
        .R(o1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg[1] 
       (.C(clk),
        .CE(o1_n_1),
        .D(\ctrl[1]_i_1_n_0 ),
        .Q(ctrl[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg[2] 
       (.C(clk),
        .CE(o1_n_1),
        .D(\ctrl[2]_i_1_n_0 ),
        .Q(ctrl[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg[3] 
       (.C(clk),
        .CE(o1_n_1),
        .D(\ctrl[3]_i_1_n_0 ),
        .Q(ctrl[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg[4] 
       (.C(clk),
        .CE(o1_n_1),
        .D(\ctrl[4]_i_1_n_0 ),
        .Q(ctrl[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg[5] 
       (.C(clk),
        .CE(o1_n_1),
        .D(\ctrl[5]_i_1_n_0 ),
        .Q(ctrl[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg[6] 
       (.C(clk),
        .CE(o1_n_1),
        .D(\ctrl[6]_i_1_n_0 ),
        .Q(ctrl[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg[7] 
       (.C(clk),
        .CE(o1_n_1),
        .D(\ctrl[7]_i_2_n_0 ),
        .Q(ctrl[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg[8] 
       (.C(clk),
        .CE(o1_n_1),
        .D(orden[8]),
        .Q(ctrl[8]),
        .R(o1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg[9] 
       (.C(clk),
        .CE(o1_n_1),
        .D(orden[9]),
        .Q(ctrl[9]),
        .R(o1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \d1_reg[0] 
       (.C(clk),
        .CE(o1_n_4),
        .D(bufferRx[0]),
        .Q(p_1_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d1_reg[1] 
       (.C(clk),
        .CE(o1_n_4),
        .D(bufferRx[1]),
        .Q(p_1_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d1_reg[2] 
       (.C(clk),
        .CE(o1_n_4),
        .D(bufferRx[2]),
        .Q(p_1_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d1_reg[3] 
       (.C(clk),
        .CE(o1_n_4),
        .D(bufferRx[3]),
        .Q(p_1_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d1_reg[4] 
       (.C(clk),
        .CE(o1_n_4),
        .D(bufferRx[4]),
        .Q(p_1_in[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d1_reg[5] 
       (.C(clk),
        .CE(o1_n_4),
        .D(bufferRx[5]),
        .Q(p_1_in[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d1_reg[6] 
       (.C(clk),
        .CE(o1_n_4),
        .D(bufferRx[6]),
        .Q(p_1_in[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d1_reg[7] 
       (.C(clk),
        .CE(o1_n_4),
        .D(bufferRx[7]),
        .Q(p_1_in[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d2_reg[0] 
       (.C(clk),
        .CE(o1_n_5),
        .D(bufferRx[0]),
        .Q(p_1_in[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d2_reg[1] 
       (.C(clk),
        .CE(o1_n_5),
        .D(bufferRx[1]),
        .Q(p_1_in[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d2_reg[2] 
       (.C(clk),
        .CE(o1_n_5),
        .D(bufferRx[2]),
        .Q(p_1_in[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d2_reg[3] 
       (.C(clk),
        .CE(o1_n_5),
        .D(bufferRx[3]),
        .Q(p_1_in[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d2_reg[4] 
       (.C(clk),
        .CE(o1_n_5),
        .D(bufferRx[4]),
        .Q(p_1_in[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d2_reg[5] 
       (.C(clk),
        .CE(o1_n_5),
        .D(bufferRx[5]),
        .Q(p_1_in[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d2_reg[6] 
       (.C(clk),
        .CE(o1_n_5),
        .D(bufferRx[6]),
        .Q(p_1_in[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d2_reg[7] 
       (.C(clk),
        .CE(o1_n_5),
        .D(bufferRx[7]),
        .Q(p_1_in[15]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    enableGateKeeper_i_1
       (.I0(p_1_in[0]),
        .I1(enableGateKeeper_i_2_n_0),
        .I2(ctrl[4]),
        .I3(ctrl[2]),
        .I4(\window[15]_i_2_n_0 ),
        .I5(enableGateKeeper),
        .O(enableGateKeeper_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h7)) 
    enableGateKeeper_i_2
       (.I0(ctrl[0]),
        .I1(ctrl[1]),
        .O(enableGateKeeper_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    enableGateKeeper_reg
       (.C(clk),
        .CE(1'b1),
        .D(enableGateKeeper_i_1_n_0),
        .Q(enableGateKeeper),
        .R(1'b0));
  GateKeeper_BD_control_parametros_0_0_OneShot o1
       (.E({p_0_in[8],p_0_in[5]}),
        .Q(ctrl[4:0]),
        .clk(clk),
        .\ctrl_reg[0] (o1_n_5),
        .\ctrl_reg[15] (\ctrl[15]_i_2_n_0 ),
        .\ctrl_reg[4] (o1_n_0),
        .\ctrl_reg[4]_0 (o1_n_1),
        .\ctrl_reg[8] (\ctrl[7]_i_3_n_0 ),
        .\ctrl_reg[8]_0 (\ctrl[7]_i_4_n_0 ),
        .\ctrl_reg[8]_1 (\ctrl[7]_i_5_n_0 ),
        .\ctrl_reg[8]_2 (\ctrl[7]_i_7_n_0 ),
        .\d2_reg[0] (\window[15]_i_2_n_0 ),
        .\orden_reg[3] (\orden[15]_i_2_n_0 ),
        .readyRx(readyRx),
        .trigger_reg_0(o1_n_4));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \orden[15]_i_2 
       (.I0(ctrl[3]),
        .I1(ctrl[2]),
        .O(\orden[15]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \orden_reg[0] 
       (.C(clk),
        .CE(p_0_in[5]),
        .D(bufferRx[0]),
        .Q(orden[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \orden_reg[10] 
       (.C(clk),
        .CE(p_0_in[8]),
        .D(bufferRx[2]),
        .Q(orden[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \orden_reg[11] 
       (.C(clk),
        .CE(p_0_in[8]),
        .D(bufferRx[3]),
        .Q(orden[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \orden_reg[12] 
       (.C(clk),
        .CE(p_0_in[8]),
        .D(bufferRx[4]),
        .Q(orden[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \orden_reg[13] 
       (.C(clk),
        .CE(p_0_in[8]),
        .D(bufferRx[5]),
        .Q(orden[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \orden_reg[14] 
       (.C(clk),
        .CE(p_0_in[8]),
        .D(bufferRx[6]),
        .Q(orden[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \orden_reg[15] 
       (.C(clk),
        .CE(p_0_in[8]),
        .D(bufferRx[7]),
        .Q(orden[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \orden_reg[1] 
       (.C(clk),
        .CE(p_0_in[5]),
        .D(bufferRx[1]),
        .Q(orden[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \orden_reg[2] 
       (.C(clk),
        .CE(p_0_in[5]),
        .D(bufferRx[2]),
        .Q(orden[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \orden_reg[3] 
       (.C(clk),
        .CE(p_0_in[5]),
        .D(bufferRx[3]),
        .Q(orden[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \orden_reg[4] 
       (.C(clk),
        .CE(p_0_in[5]),
        .D(bufferRx[4]),
        .Q(orden[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \orden_reg[5] 
       (.C(clk),
        .CE(p_0_in[5]),
        .D(bufferRx[5]),
        .Q(orden[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \orden_reg[6] 
       (.C(clk),
        .CE(p_0_in[5]),
        .D(bufferRx[6]),
        .Q(orden[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \orden_reg[7] 
       (.C(clk),
        .CE(p_0_in[5]),
        .D(bufferRx[7]),
        .Q(orden[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \orden_reg[8] 
       (.C(clk),
        .CE(p_0_in[8]),
        .D(bufferRx[0]),
        .Q(orden[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \orden_reg[9] 
       (.C(clk),
        .CE(p_0_in[8]),
        .D(bufferRx[1]),
        .Q(orden[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h40000000)) 
    \pulseShaper_width[7]_i_1 
       (.I0(ctrl[0]),
        .I1(ctrl[1]),
        .I2(ctrl[4]),
        .I3(ctrl[2]),
        .I4(\window[15]_i_2_n_0 ),
        .O(\pulseShaper_width[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulseShaper_width_reg[0] 
       (.C(clk),
        .CE(\pulseShaper_width[7]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(pulseShaper_width[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pulseShaper_width_reg[1] 
       (.C(clk),
        .CE(\pulseShaper_width[7]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(pulseShaper_width[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \pulseShaper_width_reg[2] 
       (.C(clk),
        .CE(\pulseShaper_width[7]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(pulseShaper_width[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pulseShaper_width_reg[3] 
       (.C(clk),
        .CE(\pulseShaper_width[7]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(pulseShaper_width[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \pulseShaper_width_reg[4] 
       (.C(clk),
        .CE(\pulseShaper_width[7]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(pulseShaper_width[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pulseShaper_width_reg[5] 
       (.C(clk),
        .CE(\pulseShaper_width[7]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(pulseShaper_width[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pulseShaper_width_reg[6] 
       (.C(clk),
        .CE(\pulseShaper_width[7]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(pulseShaper_width[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pulseShaper_width_reg[7] 
       (.C(clk),
        .CE(\pulseShaper_width[7]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(pulseShaper_width[7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h08000000)) 
    \window[15]_i_1 
       (.I0(ctrl[0]),
        .I1(ctrl[4]),
        .I2(ctrl[1]),
        .I3(ctrl[2]),
        .I4(\window[15]_i_2_n_0 ),
        .O(\window[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \window[15]_i_2 
       (.I0(\ctrl[7]_i_3_n_0 ),
        .I1(\ctrl[7]_i_4_n_0 ),
        .I2(ctrl[6]),
        .I3(ctrl[14]),
        .I4(ctrl[13]),
        .I5(ctrl[3]),
        .O(\window[15]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \window_reg[0] 
       (.C(clk),
        .CE(\window[15]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(window[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \window_reg[10] 
       (.C(clk),
        .CE(\window[15]_i_1_n_0 ),
        .D(p_1_in[10]),
        .Q(window[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \window_reg[11] 
       (.C(clk),
        .CE(\window[15]_i_1_n_0 ),
        .D(p_1_in[11]),
        .Q(window[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \window_reg[12] 
       (.C(clk),
        .CE(\window[15]_i_1_n_0 ),
        .D(p_1_in[12]),
        .Q(window[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \window_reg[13] 
       (.C(clk),
        .CE(\window[15]_i_1_n_0 ),
        .D(p_1_in[13]),
        .Q(window[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \window_reg[14] 
       (.C(clk),
        .CE(\window[15]_i_1_n_0 ),
        .D(p_1_in[14]),
        .Q(window[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \window_reg[15] 
       (.C(clk),
        .CE(\window[15]_i_1_n_0 ),
        .D(p_1_in[15]),
        .Q(window[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \window_reg[1] 
       (.C(clk),
        .CE(\window[15]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(window[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \window_reg[2] 
       (.C(clk),
        .CE(\window[15]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(window[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \window_reg[3] 
       (.C(clk),
        .CE(\window[15]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(window[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \window_reg[4] 
       (.C(clk),
        .CE(\window[15]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(window[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \window_reg[5] 
       (.C(clk),
        .CE(\window[15]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(window[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \window_reg[6] 
       (.C(clk),
        .CE(\window[15]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(window[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \window_reg[7] 
       (.C(clk),
        .CE(\window[15]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(window[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \window_reg[8] 
       (.C(clk),
        .CE(\window[15]_i_1_n_0 ),
        .D(p_1_in[8]),
        .Q(window[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \window_reg[9] 
       (.C(clk),
        .CE(\window[15]_i_1_n_0 ),
        .D(p_1_in[9]),
        .Q(window[9]),
        .R(1'b0));
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
