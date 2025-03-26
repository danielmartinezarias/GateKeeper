// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Wed Mar 26 11:18:50 2025
// Host        : donaufeld running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/danie/Documents/GitHub/GateKeeper/FPGA/GateKeeper/BD/GateKeeper_BD/ip/GateKeeper_BD_UART_Rx_0_0/GateKeeper_BD_UART_Rx_0_0_sim_netlist.v
// Design      : GateKeeper_BD_UART_Rx_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "GateKeeper_BD_UART_Rx_0_0,UART_Rx,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "UART_Rx,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module GateKeeper_BD_UART_Rx_0_0
   (clk,
    tick,
    PinRx,
    bufferRx,
    readyRx);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  input tick;
  input PinRx;
  output [7:0]bufferRx;
  output readyRx;

  wire PinRx;
  wire [7:0]bufferRx;
  wire clk;
  wire readyRx;
  wire tick;

  GateKeeper_BD_UART_Rx_0_0_UART_Rx inst
       (.PinRx(PinRx),
        .bufferRx(bufferRx),
        .clk(clk),
        .readyRx(readyRx),
        .tick(tick));
endmodule

(* ORIG_REF_NAME = "OneShot" *) 
module GateKeeper_BD_UART_Rx_0_0_OneShot
   (otick,
    E,
    trigger_reg_0,
    \FSM_onehot_ctrlRx_reg[2] ,
    trigger_reg_1,
    trigger_reg_2,
    \FSM_onehot_ctrlRx_reg[5] ,
    clk,
    Q,
    \FSM_onehot_ctrlRx_reg[0] ,
    \FSM_onehot_ctrlRx_reg[0]_0 ,
    \FSM_onehot_ctrlRx_reg[0]_1 ,
    \FSM_onehot_ctrlRx_reg[0]_2 ,
    countBit,
    \bufferRxInt_reg[0] ,
    readyRx,
    tick);
  output otick;
  output [0:0]E;
  output [0:0]trigger_reg_0;
  output \FSM_onehot_ctrlRx_reg[2] ;
  output [0:0]trigger_reg_1;
  output [0:0]trigger_reg_2;
  output \FSM_onehot_ctrlRx_reg[5] ;
  input clk;
  input [4:0]Q;
  input \FSM_onehot_ctrlRx_reg[0] ;
  input \FSM_onehot_ctrlRx_reg[0]_0 ;
  input \FSM_onehot_ctrlRx_reg[0]_1 ;
  input \FSM_onehot_ctrlRx_reg[0]_2 ;
  input [0:0]countBit;
  input [3:0]\bufferRxInt_reg[0] ;
  input readyRx;
  input tick;

  wire [0:0]E;
  wire \FSM_onehot_ctrlRx_reg[0] ;
  wire \FSM_onehot_ctrlRx_reg[0]_0 ;
  wire \FSM_onehot_ctrlRx_reg[0]_1 ;
  wire \FSM_onehot_ctrlRx_reg[0]_2 ;
  wire \FSM_onehot_ctrlRx_reg[2] ;
  wire \FSM_onehot_ctrlRx_reg[5] ;
  wire [4:0]Q;
  wire [3:0]\bufferRxInt_reg[0] ;
  wire clk;
  wire [0:0]countBit;
  wire [1:0]monitor;
  wire otick;
  wire readyRx;
  wire tick;
  wire trigger_i_1_n_0;
  wire [0:0]trigger_reg_0;
  wire [0:0]trigger_reg_1;
  wire [0:0]trigger_reg_2;

  LUT6 #(
    .INIT(64'hAAA8A8A8A8A8A8A8)) 
    \FSM_onehot_ctrlRx[5]_i_1 
       (.I0(otick),
        .I1(\FSM_onehot_ctrlRx_reg[0] ),
        .I2(\FSM_onehot_ctrlRx_reg[0]_0 ),
        .I3(\FSM_onehot_ctrlRx_reg[0]_1 ),
        .I4(\FSM_onehot_ctrlRx_reg[0]_2 ),
        .I5(countBit),
        .O(trigger_reg_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \bufferRxInt[7]_i_3 
       (.I0(Q[1]),
        .I1(\bufferRxInt_reg[0] [1]),
        .I2(\bufferRxInt_reg[0] [0]),
        .I3(\bufferRxInt_reg[0] [3]),
        .I4(\bufferRxInt_reg[0] [2]),
        .I5(otick),
        .O(\FSM_onehot_ctrlRx_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bufferRx[7]_i_1 
       (.I0(otick),
        .I1(Q[2]),
        .O(trigger_reg_1));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \countTick[3]_i_1 
       (.I0(otick),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[4]),
        .I5(Q[3]),
        .O(E));
  FDRE #(
    .INIT(1'b0)) 
    \monitor_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(tick),
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
  LUT2 #(
    .INIT(4'h8)) 
    \muestreo[4]_i_1 
       (.I0(otick),
        .I1(Q[1]),
        .O(trigger_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hDFC0)) 
    readyRx_i_1
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(otick),
        .I3(readyRx),
        .O(\FSM_onehot_ctrlRx_reg[5] ));
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
        .Q(otick),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "UART_Rx" *) 
module GateKeeper_BD_UART_Rx_0_0_UART_Rx
   (bufferRx,
    readyRx,
    clk,
    tick,
    PinRx);
  output [7:0]bufferRx;
  output readyRx;
  input clk;
  input tick;
  input PinRx;

  wire \FSM_onehot_ctrlRx[5]_i_2_n_0 ;
  wire \FSM_onehot_ctrlRx[5]_i_3_n_0 ;
  wire \FSM_onehot_ctrlRx[5]_i_4_n_0 ;
  wire \FSM_onehot_ctrlRx[5]_i_5_n_0 ;
  wire \FSM_onehot_ctrlRx_reg_n_0_[0] ;
  wire \FSM_onehot_ctrlRx_reg_n_0_[1] ;
  wire \FSM_onehot_ctrlRx_reg_n_0_[3] ;
  wire \FSM_onehot_ctrlRx_reg_n_0_[4] ;
  wire \FSM_onehot_ctrlRx_reg_n_0_[5] ;
  wire PinRx;
  wire [7:0]bufferRx;
  wire [7:0]bufferRxInt;
  wire bufferRxInt1;
  wire \bufferRxInt[0]_i_1_n_0 ;
  wire \bufferRxInt[1]_i_1_n_0 ;
  wire \bufferRxInt[2]_i_1_n_0 ;
  wire \bufferRxInt[3]_i_1_n_0 ;
  wire \bufferRxInt[4]_i_1_n_0 ;
  wire \bufferRxInt[5]_i_1_n_0 ;
  wire \bufferRxInt[6]_i_1_n_0 ;
  wire \bufferRxInt[7]_i_1_n_0 ;
  wire clk;
  wire [2:0]countBit;
  wire \countBit[0]_i_1_n_0 ;
  wire \countBit[1]_i_1_n_0 ;
  wire \countBit[2]_i_1_n_0 ;
  wire \countBit[2]_i_2_n_0 ;
  wire [3:0]countTick_reg;
  wire muestreo;
  wire \muestreo[4]_i_3_n_0 ;
  wire [4:3]muestreo_reg;
  wire \muestreo_reg_n_0_[0] ;
  wire \muestreo_reg_n_0_[1] ;
  wire \muestreo_reg_n_0_[2] ;
  wire o1_n_1;
  wire o1_n_2;
  wire o1_n_3;
  wire o1_n_4;
  wire o1_n_5;
  wire o1_n_6;
  wire otick;
  wire [3:0]p_0_in;
  wire [4:0]p_0_in__0;
  wire readyRx;
  wire tick;

  LUT6 #(
    .INIT(64'hE0A0000000000000)) 
    \FSM_onehot_ctrlRx[5]_i_2 
       (.I0(\FSM_onehot_ctrlRx_reg_n_0_[4] ),
        .I1(\FSM_onehot_ctrlRx_reg_n_0_[1] ),
        .I2(countTick_reg[1]),
        .I3(countTick_reg[0]),
        .I4(countTick_reg[3]),
        .I5(countTick_reg[2]),
        .O(\FSM_onehot_ctrlRx[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hEFEE)) 
    \FSM_onehot_ctrlRx[5]_i_3 
       (.I0(\FSM_onehot_ctrlRx_reg_n_0_[3] ),
        .I1(\FSM_onehot_ctrlRx_reg_n_0_[5] ),
        .I2(PinRx),
        .I3(\FSM_onehot_ctrlRx_reg_n_0_[0] ),
        .O(\FSM_onehot_ctrlRx[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \FSM_onehot_ctrlRx[5]_i_4 
       (.I0(countTick_reg[2]),
        .I1(countTick_reg[3]),
        .I2(countTick_reg[0]),
        .I3(countTick_reg[1]),
        .I4(muestreo),
        .O(\FSM_onehot_ctrlRx[5]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_ctrlRx[5]_i_5 
       (.I0(countBit[1]),
        .I1(countBit[2]),
        .O(\FSM_onehot_ctrlRx[5]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:000001,iSTATE0:000010,iSTATE1:000100,iSTATE2:001000,iSTATE3:010000,iSTATE4:100000," *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_ctrlRx_reg[0] 
       (.C(clk),
        .CE(o1_n_2),
        .D(\FSM_onehot_ctrlRx_reg_n_0_[5] ),
        .Q(\FSM_onehot_ctrlRx_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:000001,iSTATE0:000010,iSTATE1:000100,iSTATE2:001000,iSTATE3:010000,iSTATE4:100000," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_ctrlRx_reg[1] 
       (.C(clk),
        .CE(o1_n_2),
        .D(\FSM_onehot_ctrlRx_reg_n_0_[0] ),
        .Q(\FSM_onehot_ctrlRx_reg_n_0_[1] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:000001,iSTATE0:000010,iSTATE1:000100,iSTATE2:001000,iSTATE3:010000,iSTATE4:100000," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_ctrlRx_reg[2] 
       (.C(clk),
        .CE(o1_n_2),
        .D(\FSM_onehot_ctrlRx_reg_n_0_[1] ),
        .Q(muestreo),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:000001,iSTATE0:000010,iSTATE1:000100,iSTATE2:001000,iSTATE3:010000,iSTATE4:100000," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_ctrlRx_reg[3] 
       (.C(clk),
        .CE(o1_n_2),
        .D(muestreo),
        .Q(\FSM_onehot_ctrlRx_reg_n_0_[3] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:000001,iSTATE0:000010,iSTATE1:000100,iSTATE2:001000,iSTATE3:010000,iSTATE4:100000," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_ctrlRx_reg[4] 
       (.C(clk),
        .CE(o1_n_2),
        .D(\FSM_onehot_ctrlRx_reg_n_0_[3] ),
        .Q(\FSM_onehot_ctrlRx_reg_n_0_[4] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:000001,iSTATE0:000010,iSTATE1:000100,iSTATE2:001000,iSTATE3:010000,iSTATE4:100000," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_ctrlRx_reg[5] 
       (.C(clk),
        .CE(o1_n_2),
        .D(\FSM_onehot_ctrlRx_reg_n_0_[4] ),
        .Q(\FSM_onehot_ctrlRx_reg_n_0_[5] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \bufferRxInt[0]_i_1 
       (.I0(bufferRxInt1),
        .I1(countBit[2]),
        .I2(countBit[1]),
        .I3(countBit[0]),
        .I4(o1_n_3),
        .I5(bufferRxInt[0]),
        .O(\bufferRxInt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \bufferRxInt[1]_i_1 
       (.I0(bufferRxInt1),
        .I1(countBit[0]),
        .I2(countBit[1]),
        .I3(countBit[2]),
        .I4(o1_n_3),
        .I5(bufferRxInt[1]),
        .O(\bufferRxInt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \bufferRxInt[2]_i_1 
       (.I0(bufferRxInt1),
        .I1(countBit[2]),
        .I2(countBit[1]),
        .I3(countBit[0]),
        .I4(o1_n_3),
        .I5(bufferRxInt[2]),
        .O(\bufferRxInt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \bufferRxInt[3]_i_1 
       (.I0(bufferRxInt1),
        .I1(countBit[2]),
        .I2(countBit[1]),
        .I3(countBit[0]),
        .I4(o1_n_3),
        .I5(bufferRxInt[3]),
        .O(\bufferRxInt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \bufferRxInt[4]_i_1 
       (.I0(bufferRxInt1),
        .I1(countBit[1]),
        .I2(countBit[2]),
        .I3(countBit[0]),
        .I4(o1_n_3),
        .I5(bufferRxInt[4]),
        .O(\bufferRxInt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \bufferRxInt[5]_i_1 
       (.I0(bufferRxInt1),
        .I1(countBit[0]),
        .I2(countBit[2]),
        .I3(countBit[1]),
        .I4(o1_n_3),
        .I5(bufferRxInt[5]),
        .O(\bufferRxInt[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \bufferRxInt[6]_i_1 
       (.I0(bufferRxInt1),
        .I1(countBit[2]),
        .I2(countBit[1]),
        .I3(countBit[0]),
        .I4(o1_n_3),
        .I5(bufferRxInt[6]),
        .O(\bufferRxInt[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \bufferRxInt[7]_i_1 
       (.I0(bufferRxInt1),
        .I1(countBit[1]),
        .I2(countBit[0]),
        .I3(countBit[2]),
        .I4(o1_n_3),
        .I5(bufferRxInt[7]),
        .O(\bufferRxInt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \bufferRxInt[7]_i_2 
       (.I0(muestreo_reg[3]),
        .I1(muestreo_reg[4]),
        .O(bufferRxInt1));
  FDRE #(
    .INIT(1'b0)) 
    \bufferRxInt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\bufferRxInt[0]_i_1_n_0 ),
        .Q(bufferRxInt[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bufferRxInt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\bufferRxInt[1]_i_1_n_0 ),
        .Q(bufferRxInt[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bufferRxInt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\bufferRxInt[2]_i_1_n_0 ),
        .Q(bufferRxInt[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bufferRxInt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\bufferRxInt[3]_i_1_n_0 ),
        .Q(bufferRxInt[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bufferRxInt_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\bufferRxInt[4]_i_1_n_0 ),
        .Q(bufferRxInt[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bufferRxInt_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\bufferRxInt[5]_i_1_n_0 ),
        .Q(bufferRxInt[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bufferRxInt_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\bufferRxInt[6]_i_1_n_0 ),
        .Q(bufferRxInt[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bufferRxInt_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\bufferRxInt[7]_i_1_n_0 ),
        .Q(bufferRxInt[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bufferRx_reg[0] 
       (.C(clk),
        .CE(o1_n_4),
        .D(bufferRxInt[0]),
        .Q(bufferRx[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bufferRx_reg[1] 
       (.C(clk),
        .CE(o1_n_4),
        .D(bufferRxInt[1]),
        .Q(bufferRx[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bufferRx_reg[2] 
       (.C(clk),
        .CE(o1_n_4),
        .D(bufferRxInt[2]),
        .Q(bufferRx[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bufferRx_reg[3] 
       (.C(clk),
        .CE(o1_n_4),
        .D(bufferRxInt[3]),
        .Q(bufferRx[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bufferRx_reg[4] 
       (.C(clk),
        .CE(o1_n_4),
        .D(bufferRxInt[4]),
        .Q(bufferRx[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bufferRx_reg[5] 
       (.C(clk),
        .CE(o1_n_4),
        .D(bufferRxInt[5]),
        .Q(bufferRx[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bufferRx_reg[6] 
       (.C(clk),
        .CE(o1_n_4),
        .D(bufferRxInt[6]),
        .Q(bufferRx[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bufferRx_reg[7] 
       (.C(clk),
        .CE(o1_n_4),
        .D(bufferRxInt[7]),
        .Q(bufferRx[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \countBit[0]_i_1 
       (.I0(otick),
        .I1(\countBit[2]_i_2_n_0 ),
        .I2(muestreo),
        .I3(countBit[0]),
        .O(\countBit[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \countBit[1]_i_1 
       (.I0(countBit[0]),
        .I1(muestreo),
        .I2(\countBit[2]_i_2_n_0 ),
        .I3(otick),
        .I4(countBit[1]),
        .O(\countBit[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \countBit[2]_i_1 
       (.I0(countBit[0]),
        .I1(countBit[1]),
        .I2(muestreo),
        .I3(\countBit[2]_i_2_n_0 ),
        .I4(otick),
        .I5(countBit[2]),
        .O(\countBit[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \countBit[2]_i_2 
       (.I0(countTick_reg[1]),
        .I1(countTick_reg[0]),
        .I2(countTick_reg[3]),
        .I3(countTick_reg[2]),
        .O(\countBit[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \countBit_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\countBit[0]_i_1_n_0 ),
        .Q(countBit[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \countBit_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\countBit[1]_i_1_n_0 ),
        .Q(countBit[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \countBit_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\countBit[2]_i_1_n_0 ),
        .Q(countBit[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \countTick[0]_i_1 
       (.I0(countTick_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \countTick[1]_i_1 
       (.I0(countTick_reg[0]),
        .I1(countTick_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \countTick[2]_i_1 
       (.I0(countTick_reg[1]),
        .I1(countTick_reg[0]),
        .I2(countTick_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \countTick[3]_i_2 
       (.I0(countTick_reg[0]),
        .I1(countTick_reg[1]),
        .I2(countTick_reg[2]),
        .I3(countTick_reg[3]),
        .O(p_0_in[3]));
  FDRE #(
    .INIT(1'b0)) 
    \countTick_reg[0] 
       (.C(clk),
        .CE(o1_n_1),
        .D(p_0_in[0]),
        .Q(countTick_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \countTick_reg[1] 
       (.C(clk),
        .CE(o1_n_1),
        .D(p_0_in[1]),
        .Q(countTick_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \countTick_reg[2] 
       (.C(clk),
        .CE(o1_n_1),
        .D(p_0_in[2]),
        .Q(countTick_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \countTick_reg[3] 
       (.C(clk),
        .CE(o1_n_1),
        .D(p_0_in[3]),
        .Q(countTick_reg[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00007FFF7FFF0000)) 
    \muestreo[0]_i_1 
       (.I0(countTick_reg[1]),
        .I1(countTick_reg[0]),
        .I2(countTick_reg[3]),
        .I3(countTick_reg[2]),
        .I4(\muestreo_reg_n_0_[0] ),
        .I5(PinRx),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h1540)) 
    \muestreo[1]_i_1 
       (.I0(\countBit[2]_i_2_n_0 ),
        .I1(\muestreo_reg_n_0_[0] ),
        .I2(PinRx),
        .I3(\muestreo_reg_n_0_[1] ),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h007F0080)) 
    \muestreo[2]_i_1 
       (.I0(\muestreo_reg_n_0_[1] ),
        .I1(\muestreo_reg_n_0_[0] ),
        .I2(PinRx),
        .I3(\countBit[2]_i_2_n_0 ),
        .I4(\muestreo_reg_n_0_[2] ),
        .O(p_0_in__0[2]));
  LUT6 #(
    .INIT(64'h00007FFF00008000)) 
    \muestreo[3]_i_1 
       (.I0(\muestreo_reg_n_0_[2] ),
        .I1(PinRx),
        .I2(\muestreo_reg_n_0_[0] ),
        .I3(\muestreo_reg_n_0_[1] ),
        .I4(\countBit[2]_i_2_n_0 ),
        .I5(muestreo_reg[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0708)) 
    \muestreo[4]_i_2 
       (.I0(muestreo_reg[3]),
        .I1(\muestreo[4]_i_3_n_0 ),
        .I2(\countBit[2]_i_2_n_0 ),
        .I3(muestreo_reg[4]),
        .O(p_0_in__0[4]));
  LUT4 #(
    .INIT(16'h8000)) 
    \muestreo[4]_i_3 
       (.I0(\muestreo_reg_n_0_[2] ),
        .I1(PinRx),
        .I2(\muestreo_reg_n_0_[0] ),
        .I3(\muestreo_reg_n_0_[1] ),
        .O(\muestreo[4]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \muestreo_reg[0] 
       (.C(clk),
        .CE(o1_n_5),
        .D(p_0_in__0[0]),
        .Q(\muestreo_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \muestreo_reg[1] 
       (.C(clk),
        .CE(o1_n_5),
        .D(p_0_in__0[1]),
        .Q(\muestreo_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \muestreo_reg[2] 
       (.C(clk),
        .CE(o1_n_5),
        .D(p_0_in__0[2]),
        .Q(\muestreo_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \muestreo_reg[3] 
       (.C(clk),
        .CE(o1_n_5),
        .D(p_0_in__0[3]),
        .Q(muestreo_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \muestreo_reg[4] 
       (.C(clk),
        .CE(o1_n_5),
        .D(p_0_in__0[4]),
        .Q(muestreo_reg[4]),
        .R(1'b0));
  GateKeeper_BD_UART_Rx_0_0_OneShot o1
       (.E(o1_n_1),
        .\FSM_onehot_ctrlRx_reg[0] (\FSM_onehot_ctrlRx[5]_i_2_n_0 ),
        .\FSM_onehot_ctrlRx_reg[0]_0 (\FSM_onehot_ctrlRx[5]_i_3_n_0 ),
        .\FSM_onehot_ctrlRx_reg[0]_1 (\FSM_onehot_ctrlRx[5]_i_4_n_0 ),
        .\FSM_onehot_ctrlRx_reg[0]_2 (\FSM_onehot_ctrlRx[5]_i_5_n_0 ),
        .\FSM_onehot_ctrlRx_reg[2] (o1_n_3),
        .\FSM_onehot_ctrlRx_reg[5] (o1_n_6),
        .Q({\FSM_onehot_ctrlRx_reg_n_0_[5] ,\FSM_onehot_ctrlRx_reg_n_0_[4] ,\FSM_onehot_ctrlRx_reg_n_0_[3] ,muestreo,\FSM_onehot_ctrlRx_reg_n_0_[1] }),
        .\bufferRxInt_reg[0] (countTick_reg),
        .clk(clk),
        .countBit(countBit[0]),
        .otick(otick),
        .readyRx(readyRx),
        .tick(tick),
        .trigger_reg_0(o1_n_2),
        .trigger_reg_1(o1_n_4),
        .trigger_reg_2(o1_n_5));
  FDRE #(
    .INIT(1'b0)) 
    readyRx_reg
       (.C(clk),
        .CE(1'b1),
        .D(o1_n_6),
        .Q(readyRx),
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
