`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2025 02:57:35 PM
// Design Name: 
// Module Name: tb_GateKeeper
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


module tb_GateKeeper();
    // Testbench Signals
    reg clk = 0;
    reg enable = 1;
    reg [15:0] window = 16'd6;
    reg [7:0] pulseShaper_width = 8'd20;
    reg det_in = 0;
    wire det_out;
    wire GateKeeper;
    
    // Clock Generation (400 MHz -> 2.5 ns period)
    always #1.25 clk = ~clk;
    
    // Instantiate DUT (Device Under Test)
    GateKeeper GateKeeper0 (
        .clk(clk),
        .enable(enable),
        .window(window),
        .pulseShaper_width(pulseShaper_width),
        .det_in(det_in),
        .det_out(det_out),
        .GateKeeper(GateKeeper)
    );
    
    // Stimulus
    initial begin
        $dumpfile("tb_GateKeeper.vcd");
        $dumpvars(0, tb_GateKeeper);
        
        #15;
        det_in = 1;
        #50;
        det_in = 0;
        
        #50;
        det_in = 1;
        #50;
        det_in = 0;

        #13.0;
        det_in = 1;
        #50;
        det_in = 0;
        
        #14.0;
        det_in = 1;
        #50;
        det_in = 0;

        #15.0;
        det_in = 1;
        #50;
        det_in = 0;
        
        #16.0;
        det_in = 1;
        #50;
        det_in = 0;

        #17.0;
        det_in = 1;
        #50;
        det_in = 0;

        #18.0;
        det_in = 1;
        #50;
        det_in = 0;

        #19.0;
        det_in = 1;
        #50;
        det_in = 0;

        

        $finish;
    end
    
endmodule

