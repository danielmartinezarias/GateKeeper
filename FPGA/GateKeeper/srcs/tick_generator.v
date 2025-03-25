`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: University of Vienna
// Engineer: Daniel Martinez
// 
// Create Date:    17:17:19 08/29/2016 
// Design Name: 
// Module Name:    tick_generator 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module tick_generator(
	input clk,
	output reg tick=0
    );

reg [5:0] reg_counter = 0;

	always @(posedge clk) begin
//		if (reg_counter > 9'd323) begin //9600baud@100MHz
		if (reg_counter > 5'd26) begin//115200@100MHz
//		if (reg_counter > 5'd26) begin//230400@200MHz
//		if (reg_counter > 6'd52) begin//115200@200MHz
			tick 			<= ~tick;
			reg_counter <= 0;
		end
		else
			reg_counter <= reg_counter + 6'd1;
		
	end


//reg[2:0] RegCount=0;
//always @(posedge  clk) begin
//
//
//	if(RegCount<3'd3)
//	tick<=1;
//	else
//	tick<=0;
//	
//	if(RegCount>3'd3)
//	RegCount<=0;
//	else
//		RegCount<=RegCount+3'd1;
//
//end

endmodule
