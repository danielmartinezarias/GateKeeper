`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2025 12:02:41 PM
// Design Name: 
// Module Name: top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top(

    input GCLK,
    //UART
    input JA10,
    //output JA9,
    //input signals
    input [2:0] det_in,
    //output signals
    output [2:0] det_out
    );


    ////////////////////////////
    ////////Declarations////////
    ////////////////////////////
    
    //clock managment
    wire clk_100MHz;
    wire clk_400MHz;
    //uart TTL-232R
    wire tick;
    wire uart_tx_in;
    // wire uart_rx_out;
    //assign JA9  = uart_rx_out;
    assign uart_tx_in = JA10;

    //parameters
    wire [7:0] bufferRx;
    wire readyRx;
    wire [15:0] window;
    wire [7:0] pulseShaper_width;
    wire enableGateKeeper;



    ////////////////////////////
    ////////Instantiations///////
    ////////////////////////////

    clk_wiz_0 clk_wiz1(
        .clk_100MHz(clk_100MHz),     // output clk_100MHz
        .clk_400MHz(clk_400MHz),     // output clk_400MHz
        .clk_in1(GCLK)      // input clk_in1
    );

    GateKeeper GateKeeper0(
        .clk(clk_400MHz),
        .enable(enableGateKeeper),
        .window(window),
        .pulseShaper_width(pulseShaper_width),
        .det_in(det_in[0]),
        .det_out(det_out[0])
    );

    GateKeeper GateKeeper1(
        .clk(clk_400MHz),
        .enable(enableGateKeeper),
        .window(window),
        .pulseShaper_width(pulseShaper_width),
        .det_in(det_in[1]),
        .det_out(det_out[1])
    );

    GateKeeper GateKeeper2(
        .clk(clk_400MHz),
        .enable(enableGateKeeper),
        .window(window),
        .pulseShaper_width(pulseShaper_width),
        .det_in(det_in[2]),
        .det_out(det_out[2])
    );


    control_parametros control_parametros1(
        .clk(clk_100MHz),
        .readyRx(readyRx),
        .bufferRx(bufferRx),
        .window(window),
        .pulseShaper_width(pulseShaper_width),
        .enableGateKeeper(enableGateKeeper)
    );


    //UART
    tick_generator tick_generator_1(
        .clk(clk_100MHz),
        .tick(tick)
    );
        
    UART_Rx UART_Rx_1(
        .clk(clk_100MHz),
        .tick(tick),
        .PinRx(uart_tx_in),
        .bufferRx(bufferRx),
        .readyRx(readyRx)
    );


endmodule
