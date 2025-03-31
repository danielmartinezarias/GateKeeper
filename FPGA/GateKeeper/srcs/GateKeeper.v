`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2025 01:38:00 PM
// Design Name: 
// Module Name: GateKeeper
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


module GateKeeper(
    input wire clk,
    input wire enable,
    input wire [15:0] window,
    input wire [7:0] pulseShaper_width,
    input wire det_in,
    output wire det_out
    );



reg [15:0] c = 16'h0000; // c counts the number of clock cycles since last detection
reg [7:0] c2 = 8'd0; // c2 is used to elongate the pulse width 
reg state = 1'b0; 
reg GateKeeper = 1'b1; // GateKeeper is used to vaariable the output of the module

assign det_out = (GateKeeper) ? det_in:1'b0; // main assignation

//Every 2.5 ns logic is evaluated
always@(posedge clk) begin

    if(enable)begin//from GUI
        case(state)
            0:begin
                if(det_in)begin//input signal
                    if(c>=(window-16'd1))begin // if c is smaller than window (events close to each other)
                        GateKeeper <= 1'd0; // discard det_out
                        state       <= 1; // jump to state 1
                    end
                    c <= {8'd0,pulseShaper_width}; // reset counter every time a detection is made
                end
                else begin
                    c               <= c + 16'h0001; // increment counter whenever there is no detection
                end
            end

            1:begin
                if(c2<(pulseShaper_width-8'd1))begin // keep det_out high for pulseShaper_width clock cycles
                    c2 <= c2 + 8'd1; // increment c2
                end
                else begin // if c2 is equal to pulseShaper_width, reset 
                    c2          <= 8'd0;
                    GateKeeper <= 1'b1; // enable det_out
                    state       <= 0;
                end
            end
        endcase
    end

    else begin // when the module is not enabled, det_in is bypassed to det_out
        GateKeeper             <= 1'b1;// enable det_out
    end

end


endmodule
