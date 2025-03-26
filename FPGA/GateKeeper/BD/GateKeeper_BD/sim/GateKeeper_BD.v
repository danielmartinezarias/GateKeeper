//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Wed Mar 26 11:16:30 2025
//Host        : donaufeld running 64-bit major release  (build 9200)
//Command     : generate_target GateKeeper_BD.bd
//Design      : GateKeeper_BD
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "GateKeeper_BD,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=GateKeeper_BD,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=7,numReposBlks=7,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=6,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "GateKeeper_BD.hwdef" *) 
module GateKeeper_BD
   (GCLK,
    JA10,
    det_in_0,
    det_in_1,
    det_in_2,
    det_out_0,
    det_out_1,
    det_out_2);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.GCLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.GCLK, CLK_DOMAIN GateKeeper_BD_GCLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input GCLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.JA10 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.JA10, LAYERED_METADATA undef" *) input JA10;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.DET_IN_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.DET_IN_0, LAYERED_METADATA undef" *) input det_in_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.DET_IN_1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.DET_IN_1, LAYERED_METADATA undef" *) input det_in_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.DET_IN_2 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.DET_IN_2, LAYERED_METADATA undef" *) input det_in_2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.DET_OUT_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.DET_OUT_0, LAYERED_METADATA undef" *) output det_out_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.DET_OUT_1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.DET_OUT_1, LAYERED_METADATA undef" *) output det_out_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.DET_OUT_2 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.DET_OUT_2, LAYERED_METADATA undef" *) output det_out_2;

  wire GCLK_1;
  wire GateKeeper_0_det_out;
  wire GateKeeper_1_det_out;
  wire GateKeeper_2_det_out;
  wire JA10_1;
  wire [7:0]UART_Rx_0_bufferRx;
  wire UART_Rx_0_readyRx;
  wire clk_wiz_0_clk_100MHz;
  wire clk_wiz_0_clk_400MHz;
  wire control_parametros_0_enableGateKeeper;
  wire [7:0]control_parametros_0_pulseShaper_width;
  wire [15:0]control_parametros_0_window;
  wire det_in_0_1;
  wire det_in_1_1;
  wire det_in_2_1;
  wire tick_generator_0_tick;

  assign GCLK_1 = GCLK;
  assign JA10_1 = JA10;
  assign det_in_0_1 = det_in_0;
  assign det_in_1_1 = det_in_1;
  assign det_in_2_1 = det_in_2;
  assign det_out_0 = GateKeeper_0_det_out;
  assign det_out_1 = GateKeeper_1_det_out;
  assign det_out_2 = GateKeeper_2_det_out;
  GateKeeper_BD_GateKeeper_0_0 GateKeeper_0
       (.clk(clk_wiz_0_clk_400MHz),
        .det_in(det_in_0_1),
        .det_out(GateKeeper_0_det_out),
        .enable(control_parametros_0_enableGateKeeper),
        .pulseShaper_width(control_parametros_0_pulseShaper_width),
        .window(control_parametros_0_window));
  GateKeeper_BD_GateKeeper_1_0 GateKeeper_1
       (.clk(clk_wiz_0_clk_400MHz),
        .det_in(det_in_1_1),
        .det_out(GateKeeper_1_det_out),
        .enable(control_parametros_0_enableGateKeeper),
        .pulseShaper_width(control_parametros_0_pulseShaper_width),
        .window(control_parametros_0_window));
  GateKeeper_BD_GateKeeper_2_0 GateKeeper_2
       (.clk(clk_wiz_0_clk_400MHz),
        .det_in(det_in_2_1),
        .det_out(GateKeeper_2_det_out),
        .enable(control_parametros_0_enableGateKeeper),
        .pulseShaper_width(control_parametros_0_pulseShaper_width),
        .window(control_parametros_0_window));
  GateKeeper_BD_UART_Rx_0_0 UART_Rx_0
       (.PinRx(JA10_1),
        .bufferRx(UART_Rx_0_bufferRx),
        .clk(clk_wiz_0_clk_100MHz),
        .readyRx(UART_Rx_0_readyRx),
        .tick(tick_generator_0_tick));
  GateKeeper_BD_clk_wiz_0_0 clk_wiz_0
       (.clk_100MHz(clk_wiz_0_clk_100MHz),
        .clk_400MHz(clk_wiz_0_clk_400MHz),
        .clk_in1(GCLK_1));
  GateKeeper_BD_control_parametros_0_0 control_parametros_0
       (.bufferRx(UART_Rx_0_bufferRx),
        .clk(clk_wiz_0_clk_100MHz),
        .enableGateKeeper(control_parametros_0_enableGateKeeper),
        .pulseShaper_width(control_parametros_0_pulseShaper_width),
        .readyRx(UART_Rx_0_readyRx),
        .window(control_parametros_0_window));
  GateKeeper_BD_tick_generator_0_0 tick_generator_0
       (.clk(clk_wiz_0_clk_100MHz),
        .tick(tick_generator_0_tick));
endmodule
