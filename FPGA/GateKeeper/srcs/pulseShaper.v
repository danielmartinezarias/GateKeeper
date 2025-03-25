`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2025 02:00:37 PM
// Design Name: 
// Module Name: pulseShaper
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


module pulseShaper(
    input wire clk,
    input wire [7:0] width,
    input wire pulse_in,
    output reg pulse_out = 1'b0
    );

    reg state = 1'b0;
    reg [7:0] c = 8'd0;

    always@(posedge clk) begin
        case(state)
            0:begin
                if(pulse_in)begin
                    state <= 1;
                    pulse_out <= 1'b1;
                end
            end
            1:begin
                if(c<width)begin
                    c <= c + 8'd1;
                end
                else begin
                    c <= 8'd0;
                    pulse_out <= 1'b0;
                    state <= 0;
                end
            end
        endcase

    end

endmodule
