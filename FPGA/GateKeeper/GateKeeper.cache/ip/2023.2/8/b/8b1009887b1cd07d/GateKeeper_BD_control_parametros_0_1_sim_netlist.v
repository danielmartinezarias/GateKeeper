// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Mar 31 14:09:12 2025
// Host        : donaufeld running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ GateKeeper_BD_control_parametros_0_1_sim_netlist.v
// Design      : GateKeeper_BD_control_parametros_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "GateKeeper_BD_control_parametros_0_1,control_parametros,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "control_parametros,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    readyRx,
    bufferRx,
    SW,
    LED,
    window0,
    window1,
    window2,
    pulseShaper_width0,
    pulseShaper_width1,
    pulseShaper_width2,
    enableGateKeeper0,
    enableGateKeeper1,
    enableGateKeeper2);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
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

  wire \<const0> ;
  wire [7:3]\^LED ;
  wire [7:0]SW;
  wire [7:0]bufferRx;
  wire clk;
  wire enableGateKeeper0;
  wire enableGateKeeper1;
  wire enableGateKeeper2;
  wire [7:0]pulseShaper_width0;
  wire [7:0]pulseShaper_width1;
  wire [7:0]pulseShaper_width2;
  wire readyRx;
  wire [15:0]window0;
  wire [15:0]window1;
  wire [15:0]window2;

  assign LED[7:3] = \^LED [7:3];
  assign LED[2] = SW[0];
  assign LED[1] = \<const0> ;
  assign LED[0] = SW[0];
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_control_parametros inst
       (.LED(\^LED ),
        .SW(SW[0]),
        .bufferRx(bufferRx),
        .clk(clk),
        .enableGateKeeper0(enableGateKeeper0),
        .enableGateKeeper1(enableGateKeeper1),
        .enableGateKeeper2(enableGateKeeper2),
        .pulseShaper_width0(pulseShaper_width0),
        .pulseShaper_width1(pulseShaper_width1),
        .pulseShaper_width2(pulseShaper_width2),
        .readyRx(readyRx),
        .window0(window0),
        .window1(window1),
        .window2(window2));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_OneShot
   (\ctrl_reg[2] ,
    \ctrl_reg[4] ,
    E,
    \ctrl_reg[2]_0 ,
    \ctrl_reg[4]_0 ,
    clk,
    Q,
    \ctrl_reg[15] ,
    \orden_reg[3] ,
    \orden_reg[3]_0 ,
    \orden_reg[15] ,
    \ctrl_reg[8] ,
    \ctrl_reg[8]_0 ,
    \ctrl_reg[8]_1 ,
    \ctrl_reg[8]_2 ,
    \d2_reg[0] ,
    readyRx);
  output \ctrl_reg[2] ;
  output \ctrl_reg[4] ;
  output [1:0]E;
  output [0:0]\ctrl_reg[2]_0 ;
  output [0:0]\ctrl_reg[4]_0 ;
  input clk;
  input [4:0]Q;
  input \ctrl_reg[15] ;
  input \orden_reg[3] ;
  input \orden_reg[3]_0 ;
  input \orden_reg[15] ;
  input \ctrl_reg[8] ;
  input \ctrl_reg[8]_0 ;
  input \ctrl_reg[8]_1 ;
  input \ctrl_reg[8]_2 ;
  input \d2_reg[0] ;
  input readyRx;

  wire [1:0]E;
  wire [4:0]Q;
  wire clk;
  wire \ctrl[7]_i_6_n_0 ;
  wire \ctrl_reg[15] ;
  wire \ctrl_reg[2] ;
  wire [0:0]\ctrl_reg[2]_0 ;
  wire \ctrl_reg[4] ;
  wire [0:0]\ctrl_reg[4]_0 ;
  wire \ctrl_reg[8] ;
  wire \ctrl_reg[8]_0 ;
  wire \ctrl_reg[8]_1 ;
  wire \ctrl_reg[8]_2 ;
  wire \d2_reg[0] ;
  wire [1:0]monitor;
  wire \orden_reg[15] ;
  wire \orden_reg[3] ;
  wire \orden_reg[3]_0 ;
  wire os_readyRx;
  wire readyRx;
  wire trigger_i_1_n_0;

  LUT6 #(
    .INIT(64'hA8AAAAAAAAAAAAAA)) 
    \ctrl[15]_i_1 
       (.I0(\ctrl_reg[4] ),
        .I1(Q[2]),
        .I2(Q[4]),
        .I3(\ctrl_reg[15] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\ctrl_reg[2] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \ctrl[7]_i_1 
       (.I0(\ctrl_reg[8] ),
        .I1(\ctrl_reg[8]_0 ),
        .I2(\ctrl_reg[8]_1 ),
        .I3(Q[4]),
        .I4(\ctrl[7]_i_6_n_0 ),
        .I5(\ctrl_reg[8]_2 ),
        .O(\ctrl_reg[4] ));
  LUT3 #(
    .INIT(8'hF8)) 
    \ctrl[7]_i_6 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(os_readyRx),
        .O(\ctrl[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \d1[7]_i_1 
       (.I0(Q[2]),
        .I1(Q[4]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(os_readyRx),
        .I5(\ctrl_reg[15] ),
        .O(\ctrl_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \d2[7]_i_1 
       (.I0(\d2_reg[0] ),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(os_readyRx),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\ctrl_reg[4]_0 ));
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
    .INIT(64'h0000000010000000)) 
    \orden[15]_i_1 
       (.I0(Q[2]),
        .I1(Q[4]),
        .I2(os_readyRx),
        .I3(\orden_reg[15] ),
        .I4(Q[3]),
        .I5(\orden_reg[3]_0 ),
        .O(E[1]));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \orden[7]_i_1 
       (.I0(Q[2]),
        .I1(Q[4]),
        .I2(os_readyRx),
        .I3(\orden_reg[3] ),
        .I4(Q[3]),
        .I5(\orden_reg[3]_0 ),
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_control_parametros
   (window0,
    LED,
    window1,
    window2,
    pulseShaper_width0,
    pulseShaper_width1,
    pulseShaper_width2,
    enableGateKeeper0,
    enableGateKeeper1,
    enableGateKeeper2,
    clk,
    readyRx,
    bufferRx,
    SW);
  output [15:0]window0;
  output [4:0]LED;
  output [15:0]window1;
  output [15:0]window2;
  output [7:0]pulseShaper_width0;
  output [7:0]pulseShaper_width1;
  output [7:0]pulseShaper_width2;
  output enableGateKeeper0;
  output enableGateKeeper1;
  output enableGateKeeper2;
  input clk;
  input readyRx;
  input [7:0]bufferRx;
  input [0:0]SW;

  wire [4:0]LED;
  wire [0:0]SW;
  wire [7:0]bufferRx;
  wire clk;
  wire [15:0]ctrl;
  wire \ctrl[0]_i_1_n_0 ;
  wire \ctrl[0]_i_2_n_0 ;
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
  wire enableGateKeeper0;
  wire enableGateKeeper0_i_1_n_0;
  wire enableGateKeeper0_i_2_n_0;
  wire enableGateKeeper1;
  wire enableGateKeeper1_i_1_n_0;
  wire enableGateKeeper1_i_2_n_0;
  wire enableGateKeeper2;
  wire enableGateKeeper2_i_1_n_0;
  wire enableGateKeeper2_i_2_n_0;
  wire o1_n_0;
  wire o1_n_1;
  wire o1_n_4;
  wire o1_n_5;
  wire [15:0]orden;
  wire \orden[15]_i_2_n_0 ;
  wire \orden[7]_i_2_n_0 ;
  wire [8:5]p_0_in;
  wire [15:0]p_1_in;
  wire [7:0]pulseShaper_width0;
  wire \pulseShaper_width0[7]_i_1_n_0 ;
  wire [7:0]pulseShaper_width1;
  wire \pulseShaper_width1[7]_i_1_n_0 ;
  wire [7:0]pulseShaper_width2;
  wire \pulseShaper_width2[7]_i_1_n_0 ;
  wire readyRx;
  wire [15:0]window0;
  wire \window0[15]_i_1_n_0 ;
  wire \window0[15]_i_2_n_0 ;
  wire [15:0]window1;
  wire \window1[15]_i_1_n_0 ;
  wire \window1[15]_i_2_n_0 ;
  wire [15:0]window2;
  wire \window2[15]_i_1_n_0 ;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \LED[3]_INST_0 
       (.I0(SW),
        .I1(window0[0]),
        .O(LED[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \LED[4]_INST_0 
       (.I0(SW),
        .I1(window0[1]),
        .O(LED[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \LED[5]_INST_0 
       (.I0(SW),
        .I1(window0[2]),
        .O(LED[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \LED[6]_INST_0 
       (.I0(SW),
        .I1(window0[3]),
        .O(LED[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \LED[7]_INST_0 
       (.I0(SW),
        .I1(window0[4]),
        .O(LED[4]));
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
    .INIT(32'h0505D454)) 
    \ctrl[0]_i_2 
       (.I0(ctrl[0]),
        .I1(ctrl[1]),
        .I2(ctrl[3]),
        .I3(orden[0]),
        .I4(ctrl[2]),
        .O(\ctrl[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5500551455145514)) 
    \ctrl[1]_i_1 
       (.I0(\ctrl[3]_i_2_n_0 ),
        .I1(ctrl[1]),
        .I2(ctrl[0]),
        .I3(\ctrl[1]_i_2_n_0 ),
        .I4(ctrl[2]),
        .I5(ctrl[3]),
        .O(\ctrl[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h08080300)) 
    \ctrl[1]_i_2 
       (.I0(orden[1]),
        .I1(ctrl[1]),
        .I2(ctrl[2]),
        .I3(bufferRx[1]),
        .I4(ctrl[3]),
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
    .INIT(64'h9BBA9BBBDBBADBBB)) 
    \ctrl[3]_i_3 
       (.I0(ctrl[2]),
        .I1(ctrl[3]),
        .I2(ctrl[0]),
        .I3(ctrl[1]),
        .I4(bufferRx[3]),
        .I5(orden[3]),
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
    .INIT(64'hFFFFBFFF00008000)) 
    enableGateKeeper0_i_1
       (.I0(p_1_in[0]),
        .I1(ctrl[2]),
        .I2(ctrl[4]),
        .I3(\window0[15]_i_2_n_0 ),
        .I4(enableGateKeeper0_i_2_n_0),
        .I5(enableGateKeeper0),
        .O(enableGateKeeper0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h7)) 
    enableGateKeeper0_i_2
       (.I0(ctrl[0]),
        .I1(ctrl[1]),
        .O(enableGateKeeper0_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    enableGateKeeper0_reg
       (.C(clk),
        .CE(1'b1),
        .D(enableGateKeeper0_i_1_n_0),
        .Q(enableGateKeeper0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    enableGateKeeper1_i_1
       (.I0(p_1_in[0]),
        .I1(enableGateKeeper1_i_2_n_0),
        .I2(ctrl[4]),
        .I3(ctrl[0]),
        .I4(\window1[15]_i_2_n_0 ),
        .I5(enableGateKeeper1),
        .O(enableGateKeeper1_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    enableGateKeeper1_i_2
       (.I0(ctrl[1]),
        .I1(ctrl[2]),
        .O(enableGateKeeper1_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    enableGateKeeper1_reg
       (.C(clk),
        .CE(1'b1),
        .D(enableGateKeeper1_i_1_n_0),
        .Q(enableGateKeeper1),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    enableGateKeeper2_i_1
       (.I0(p_1_in[0]),
        .I1(enableGateKeeper2_i_2_n_0),
        .I2(ctrl[0]),
        .I3(ctrl[1]),
        .I4(\window1[15]_i_2_n_0 ),
        .I5(enableGateKeeper2),
        .O(enableGateKeeper2_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    enableGateKeeper2_i_2
       (.I0(ctrl[2]),
        .I1(ctrl[4]),
        .O(enableGateKeeper2_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    enableGateKeeper2_reg
       (.C(clk),
        .CE(1'b1),
        .D(enableGateKeeper2_i_1_n_0),
        .Q(enableGateKeeper2),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_OneShot o1
       (.E({p_0_in[8],p_0_in[5]}),
        .Q(ctrl[4:0]),
        .clk(clk),
        .\ctrl_reg[15] (\window1[15]_i_2_n_0 ),
        .\ctrl_reg[2] (o1_n_0),
        .\ctrl_reg[2]_0 (o1_n_4),
        .\ctrl_reg[4] (o1_n_1),
        .\ctrl_reg[4]_0 (o1_n_5),
        .\ctrl_reg[8] (\ctrl[7]_i_3_n_0 ),
        .\ctrl_reg[8]_0 (\ctrl[7]_i_4_n_0 ),
        .\ctrl_reg[8]_1 (\ctrl[7]_i_5_n_0 ),
        .\ctrl_reg[8]_2 (\ctrl[7]_i_7_n_0 ),
        .\d2_reg[0] (\window0[15]_i_2_n_0 ),
        .\orden_reg[15] (\orden[15]_i_2_n_0 ),
        .\orden_reg[3] (\orden[7]_i_2_n_0 ),
        .\orden_reg[3]_0 (\ctrl[7]_i_9_n_0 ),
        .readyRx(readyRx));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \orden[15]_i_2 
       (.I0(ctrl[0]),
        .I1(ctrl[1]),
        .O(\orden[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \orden[7]_i_2 
       (.I0(ctrl[1]),
        .I1(ctrl[0]),
        .O(\orden[7]_i_2_n_0 ));
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
    .INIT(32'h00800000)) 
    \pulseShaper_width0[7]_i_1 
       (.I0(ctrl[2]),
        .I1(ctrl[4]),
        .I2(ctrl[1]),
        .I3(ctrl[0]),
        .I4(\window0[15]_i_2_n_0 ),
        .O(\pulseShaper_width0[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulseShaper_width0_reg[0] 
       (.C(clk),
        .CE(\pulseShaper_width0[7]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(pulseShaper_width0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pulseShaper_width0_reg[1] 
       (.C(clk),
        .CE(\pulseShaper_width0[7]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(pulseShaper_width0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \pulseShaper_width0_reg[2] 
       (.C(clk),
        .CE(\pulseShaper_width0[7]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(pulseShaper_width0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pulseShaper_width0_reg[3] 
       (.C(clk),
        .CE(\pulseShaper_width0[7]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(pulseShaper_width0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \pulseShaper_width0_reg[4] 
       (.C(clk),
        .CE(\pulseShaper_width0[7]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(pulseShaper_width0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pulseShaper_width0_reg[5] 
       (.C(clk),
        .CE(\pulseShaper_width0[7]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(pulseShaper_width0[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pulseShaper_width0_reg[6] 
       (.C(clk),
        .CE(\pulseShaper_width0[7]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(pulseShaper_width0[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pulseShaper_width0_reg[7] 
       (.C(clk),
        .CE(\pulseShaper_width0[7]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(pulseShaper_width0[7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00200000)) 
    \pulseShaper_width1[7]_i_1 
       (.I0(ctrl[0]),
        .I1(ctrl[1]),
        .I2(ctrl[4]),
        .I3(ctrl[2]),
        .I4(\window1[15]_i_2_n_0 ),
        .O(\pulseShaper_width1[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulseShaper_width1_reg[0] 
       (.C(clk),
        .CE(\pulseShaper_width1[7]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(pulseShaper_width1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pulseShaper_width1_reg[1] 
       (.C(clk),
        .CE(\pulseShaper_width1[7]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(pulseShaper_width1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \pulseShaper_width1_reg[2] 
       (.C(clk),
        .CE(\pulseShaper_width1[7]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(pulseShaper_width1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pulseShaper_width1_reg[3] 
       (.C(clk),
        .CE(\pulseShaper_width1[7]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(pulseShaper_width1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \pulseShaper_width1_reg[4] 
       (.C(clk),
        .CE(\pulseShaper_width1[7]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(pulseShaper_width1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pulseShaper_width1_reg[5] 
       (.C(clk),
        .CE(\pulseShaper_width1[7]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(pulseShaper_width1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pulseShaper_width1_reg[6] 
       (.C(clk),
        .CE(\pulseShaper_width1[7]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(pulseShaper_width1[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pulseShaper_width1_reg[7] 
       (.C(clk),
        .CE(\pulseShaper_width1[7]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(pulseShaper_width1[7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00080000)) 
    \pulseShaper_width2[7]_i_1 
       (.I0(ctrl[2]),
        .I1(ctrl[4]),
        .I2(ctrl[0]),
        .I3(ctrl[1]),
        .I4(\window1[15]_i_2_n_0 ),
        .O(\pulseShaper_width2[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulseShaper_width2_reg[0] 
       (.C(clk),
        .CE(\pulseShaper_width2[7]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(pulseShaper_width2[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pulseShaper_width2_reg[1] 
       (.C(clk),
        .CE(\pulseShaper_width2[7]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(pulseShaper_width2[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \pulseShaper_width2_reg[2] 
       (.C(clk),
        .CE(\pulseShaper_width2[7]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(pulseShaper_width2[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pulseShaper_width2_reg[3] 
       (.C(clk),
        .CE(\pulseShaper_width2[7]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(pulseShaper_width2[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \pulseShaper_width2_reg[4] 
       (.C(clk),
        .CE(\pulseShaper_width2[7]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(pulseShaper_width2[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pulseShaper_width2_reg[5] 
       (.C(clk),
        .CE(\pulseShaper_width2[7]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(pulseShaper_width2[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pulseShaper_width2_reg[6] 
       (.C(clk),
        .CE(\pulseShaper_width2[7]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(pulseShaper_width2[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pulseShaper_width2_reg[7] 
       (.C(clk),
        .CE(\pulseShaper_width2[7]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(pulseShaper_width2[7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00800000)) 
    \window0[15]_i_1 
       (.I0(ctrl[2]),
        .I1(ctrl[4]),
        .I2(ctrl[0]),
        .I3(ctrl[1]),
        .I4(\window0[15]_i_2_n_0 ),
        .O(\window0[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \window0[15]_i_2 
       (.I0(\ctrl[7]_i_3_n_0 ),
        .I1(\ctrl[7]_i_4_n_0 ),
        .I2(ctrl[6]),
        .I3(ctrl[14]),
        .I4(ctrl[13]),
        .I5(ctrl[3]),
        .O(\window0[15]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \window0_reg[0] 
       (.C(clk),
        .CE(\window0[15]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(window0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \window0_reg[10] 
       (.C(clk),
        .CE(\window0[15]_i_1_n_0 ),
        .D(p_1_in[10]),
        .Q(window0[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \window0_reg[11] 
       (.C(clk),
        .CE(\window0[15]_i_1_n_0 ),
        .D(p_1_in[11]),
        .Q(window0[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \window0_reg[12] 
       (.C(clk),
        .CE(\window0[15]_i_1_n_0 ),
        .D(p_1_in[12]),
        .Q(window0[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \window0_reg[13] 
       (.C(clk),
        .CE(\window0[15]_i_1_n_0 ),
        .D(p_1_in[13]),
        .Q(window0[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \window0_reg[14] 
       (.C(clk),
        .CE(\window0[15]_i_1_n_0 ),
        .D(p_1_in[14]),
        .Q(window0[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \window0_reg[15] 
       (.C(clk),
        .CE(\window0[15]_i_1_n_0 ),
        .D(p_1_in[15]),
        .Q(window0[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \window0_reg[1] 
       (.C(clk),
        .CE(\window0[15]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(window0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \window0_reg[2] 
       (.C(clk),
        .CE(\window0[15]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(window0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \window0_reg[3] 
       (.C(clk),
        .CE(\window0[15]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(window0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \window0_reg[4] 
       (.C(clk),
        .CE(\window0[15]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(window0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \window0_reg[5] 
       (.C(clk),
        .CE(\window0[15]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(window0[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \window0_reg[6] 
       (.C(clk),
        .CE(\window0[15]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(window0[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \window0_reg[7] 
       (.C(clk),
        .CE(\window0[15]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(window0[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \window0_reg[8] 
       (.C(clk),
        .CE(\window0[15]_i_1_n_0 ),
        .D(p_1_in[8]),
        .Q(window0[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \window0_reg[9] 
       (.C(clk),
        .CE(\window0[15]_i_1_n_0 ),
        .D(p_1_in[9]),
        .Q(window0[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00100000)) 
    \window1[15]_i_1 
       (.I0(ctrl[0]),
        .I1(ctrl[1]),
        .I2(ctrl[4]),
        .I3(ctrl[2]),
        .I4(\window1[15]_i_2_n_0 ),
        .O(\window1[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \window1[15]_i_2 
       (.I0(ctrl[3]),
        .I1(\ctrl[7]_i_3_n_0 ),
        .I2(\ctrl[7]_i_4_n_0 ),
        .I3(ctrl[6]),
        .I4(ctrl[14]),
        .I5(ctrl[13]),
        .O(\window1[15]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \window1_reg[0] 
       (.C(clk),
        .CE(\window1[15]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(window1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \window1_reg[10] 
       (.C(clk),
        .CE(\window1[15]_i_1_n_0 ),
        .D(p_1_in[10]),
        .Q(window1[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \window1_reg[11] 
       (.C(clk),
        .CE(\window1[15]_i_1_n_0 ),
        .D(p_1_in[11]),
        .Q(window1[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \window1_reg[12] 
       (.C(clk),
        .CE(\window1[15]_i_1_n_0 ),
        .D(p_1_in[12]),
        .Q(window1[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \window1_reg[13] 
       (.C(clk),
        .CE(\window1[15]_i_1_n_0 ),
        .D(p_1_in[13]),
        .Q(window1[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \window1_reg[14] 
       (.C(clk),
        .CE(\window1[15]_i_1_n_0 ),
        .D(p_1_in[14]),
        .Q(window1[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \window1_reg[15] 
       (.C(clk),
        .CE(\window1[15]_i_1_n_0 ),
        .D(p_1_in[15]),
        .Q(window1[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \window1_reg[1] 
       (.C(clk),
        .CE(\window1[15]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(window1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \window1_reg[2] 
       (.C(clk),
        .CE(\window1[15]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(window1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \window1_reg[3] 
       (.C(clk),
        .CE(\window1[15]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(window1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \window1_reg[4] 
       (.C(clk),
        .CE(\window1[15]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(window1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \window1_reg[5] 
       (.C(clk),
        .CE(\window1[15]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(window1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \window1_reg[6] 
       (.C(clk),
        .CE(\window1[15]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(window1[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \window1_reg[7] 
       (.C(clk),
        .CE(\window1[15]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(window1[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \window1_reg[8] 
       (.C(clk),
        .CE(\window1[15]_i_1_n_0 ),
        .D(p_1_in[8]),
        .Q(window1[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \window1_reg[9] 
       (.C(clk),
        .CE(\window1[15]_i_1_n_0 ),
        .D(p_1_in[9]),
        .Q(window1[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h40000000)) 
    \window2[15]_i_1 
       (.I0(ctrl[2]),
        .I1(ctrl[4]),
        .I2(ctrl[0]),
        .I3(ctrl[1]),
        .I4(\window1[15]_i_2_n_0 ),
        .O(\window2[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \window2_reg[0] 
       (.C(clk),
        .CE(\window2[15]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(window2[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \window2_reg[10] 
       (.C(clk),
        .CE(\window2[15]_i_1_n_0 ),
        .D(p_1_in[10]),
        .Q(window2[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \window2_reg[11] 
       (.C(clk),
        .CE(\window2[15]_i_1_n_0 ),
        .D(p_1_in[11]),
        .Q(window2[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \window2_reg[12] 
       (.C(clk),
        .CE(\window2[15]_i_1_n_0 ),
        .D(p_1_in[12]),
        .Q(window2[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \window2_reg[13] 
       (.C(clk),
        .CE(\window2[15]_i_1_n_0 ),
        .D(p_1_in[13]),
        .Q(window2[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \window2_reg[14] 
       (.C(clk),
        .CE(\window2[15]_i_1_n_0 ),
        .D(p_1_in[14]),
        .Q(window2[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \window2_reg[15] 
       (.C(clk),
        .CE(\window2[15]_i_1_n_0 ),
        .D(p_1_in[15]),
        .Q(window2[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \window2_reg[1] 
       (.C(clk),
        .CE(\window2[15]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(window2[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \window2_reg[2] 
       (.C(clk),
        .CE(\window2[15]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(window2[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \window2_reg[3] 
       (.C(clk),
        .CE(\window2[15]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(window2[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \window2_reg[4] 
       (.C(clk),
        .CE(\window2[15]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(window2[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \window2_reg[5] 
       (.C(clk),
        .CE(\window2[15]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(window2[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \window2_reg[6] 
       (.C(clk),
        .CE(\window2[15]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(window2[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \window2_reg[7] 
       (.C(clk),
        .CE(\window2[15]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(window2[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \window2_reg[8] 
       (.C(clk),
        .CE(\window2[15]_i_1_n_0 ),
        .D(p_1_in[8]),
        .Q(window2[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \window2_reg[9] 
       (.C(clk),
        .CE(\window2[15]_i_1_n_0 ),
        .D(p_1_in[9]),
        .Q(window2[9]),
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
