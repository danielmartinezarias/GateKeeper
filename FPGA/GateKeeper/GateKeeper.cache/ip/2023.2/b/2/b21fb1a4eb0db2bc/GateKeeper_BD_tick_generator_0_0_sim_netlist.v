// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Wed Mar 26 11:18:47 2025
// Host        : donaufeld running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ GateKeeper_BD_tick_generator_0_0_sim_netlist.v
// Design      : GateKeeper_BD_tick_generator_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "GateKeeper_BD_tick_generator_0_0,tick_generator,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "tick_generator,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    tick);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  output tick;

  wire clk;
  wire tick;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tick_generator inst
       (.clk(clk),
        .tick(tick));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tick_generator
   (tick,
    clk);
  output tick;
  input clk;

  wire clk;
  wire \reg_counter[0]_i_1_n_0 ;
  wire \reg_counter[1]_i_1_n_0 ;
  wire \reg_counter[2]_i_1_n_0 ;
  wire \reg_counter[3]_i_1_n_0 ;
  wire \reg_counter[4]_i_1_n_0 ;
  wire [4:0]reg_counter_reg;
  wire tick;
  wire tick0_n_0;
  wire tick_i_1_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    \reg_counter[0]_i_1 
       (.I0(reg_counter_reg[0]),
        .O(\reg_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \reg_counter[1]_i_1 
       (.I0(reg_counter_reg[0]),
        .I1(reg_counter_reg[1]),
        .O(\reg_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \reg_counter[2]_i_1 
       (.I0(reg_counter_reg[0]),
        .I1(reg_counter_reg[1]),
        .I2(reg_counter_reg[2]),
        .O(\reg_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \reg_counter[3]_i_1 
       (.I0(reg_counter_reg[1]),
        .I1(reg_counter_reg[0]),
        .I2(reg_counter_reg[2]),
        .I3(reg_counter_reg[3]),
        .O(\reg_counter[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \reg_counter[4]_i_1 
       (.I0(reg_counter_reg[2]),
        .I1(reg_counter_reg[0]),
        .I2(reg_counter_reg[1]),
        .I3(reg_counter_reg[3]),
        .I4(reg_counter_reg[4]),
        .O(\reg_counter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_counter[0]_i_1_n_0 ),
        .Q(reg_counter_reg[0]),
        .R(tick0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_counter[1]_i_1_n_0 ),
        .Q(reg_counter_reg[1]),
        .R(tick0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_counter[2]_i_1_n_0 ),
        .Q(reg_counter_reg[2]),
        .R(tick0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_counter[3]_i_1_n_0 ),
        .Q(reg_counter_reg[3]),
        .R(tick0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_counter[4]_i_1_n_0 ),
        .Q(reg_counter_reg[4]),
        .R(tick0_n_0));
  LUT5 #(
    .INIT(32'hA8880000)) 
    tick0
       (.I0(reg_counter_reg[3]),
        .I1(reg_counter_reg[2]),
        .I2(reg_counter_reg[0]),
        .I3(reg_counter_reg[1]),
        .I4(reg_counter_reg[4]),
        .O(tick0_n_0));
  LUT6 #(
    .INIT(64'h557FFFFFAA800000)) 
    tick_i_1
       (.I0(reg_counter_reg[4]),
        .I1(reg_counter_reg[1]),
        .I2(reg_counter_reg[0]),
        .I3(reg_counter_reg[2]),
        .I4(reg_counter_reg[3]),
        .I5(tick),
        .O(tick_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tick_reg
       (.C(clk),
        .CE(1'b1),
        .D(tick_i_1_n_0),
        .Q(tick),
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
