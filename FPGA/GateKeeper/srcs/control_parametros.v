`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: University fo Vienna
// Engineer: Daniel Martinez
// 
// Create Date:    14:31:32 09/21/2016 
// Design Name: 
// Module Name:    control_parametros 
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
module control_parametros(
   input clk, 
	input readyRx,
	input [7:0] bufferRx,
	input [7:0] SW,
	output wire [7:0] LED, 
	output reg [15:0] window0 = 16'd6, 
	output reg [15:0] window1 = 16'd6, 
	output reg [15:0] window2 = 16'd6,
	output reg [7:0] pulseShaper_width0 = 8'd20, 
	output reg [7:0] pulseShaper_width1 = 8'd20, 
	output reg [7:0] pulseShaper_width2 = 8'd20,
	output reg enableGateKeeper0 = 1'b0, 
	output reg enableGateKeeper1 = 1'b0, 
	output reg enableGateKeeper2 = 1'b0
    );

OneShot o1 (
    .clk(clk), 
    .signal(readyRx), 
    .trigger(os_readyRx)
    );

reg [15:0] ctrl = 0;
reg [7:0] d1 = 0;
reg [7:0] d2 = 0;
reg [7:0] d3 = 0;
reg [7:0] d4 = 0;
reg [7:0] d5 = 0;
reg [7:0] d6 = 0;
reg [7:0] d7 = 0;
reg [7:0] d8 = 0;
reg [15:0] orden = 0;
reg [31:0] counter = 32'd0;


reg [7:0] version = 8'd5; // version

assign LED = (SW[0]) ? {window0[4:0],version[2:0]}:8'd0;



always @(posedge clk) begin

case (ctrl)
	0: begin
		if(os_readyRx)begin
			ctrl				<= {8'd0,bufferRx};
		end
	end
	
	1: begin
		if(os_readyRx) begin
			d8				<= bufferRx;
			ctrl			<= 16'd2;
		end
	end
	
	2: begin
		if(os_readyRx) begin
			d7				<= bufferRx;
			ctrl			<= 16'd3;
		end
	end
	
	3: begin
		if(os_readyRx) begin
			d6				<= bufferRx;
			ctrl			<= 16'd4;
		end
	end
	
	4: begin
		if(os_readyRx) begin
			d5				<= bufferRx;
			ctrl			<= 16'd5;
		end
	end
	
	5: begin
		if(os_readyRx) begin
			d4				<= bufferRx;
			ctrl			<= 16'd6;
		end
	end
	
	6: begin
		if(os_readyRx)begin
			d3				<= bufferRx;
			ctrl			<= 16'd7;
		end
	end
	
	7: begin
		if(os_readyRx)begin
			d2				<= bufferRx;
			ctrl			<= 16'd8;
		end
	end
	
	8: begin
		if(os_readyRx)begin
			d1				<= bufferRx;
			ctrl			<= 16'd9;
		end
	end	
	
	9:begin 
	   if(os_readyRx)begin
			orden[15:8]		<= bufferRx;
			ctrl			<= 16'd10;
		end
	end
	
	10:begin 
	   if(os_readyRx)begin
			orden[7:0]		<= bufferRx;
			ctrl			<= 16'd11;
		end
	end
	
	11:begin 
		ctrl			<= orden;
	end
	
	21: begin
		window0					<= {d2,d1};
		ctrl					<= 16'd0;
	end

	22: begin
		pulseShaper_width0		<= {d1};
		ctrl					<= 16'd0;
	end

	23: begin
		enableGateKeeper0		<= d1[0];
		ctrl					<= 16'd0;
	end

	24: begin
		window1					<= {d2,d1};
		ctrl					<= 16'd0;
	end

	25: begin
		pulseShaper_width1		<= {d1};
		ctrl					<= 16'd0;
	end

	26: begin
		enableGateKeeper1		<= d1[0];
		ctrl					<= 16'd0;
	end

	27: begin
		window2					<= {d2,d1};
		ctrl					<= 16'd0;
	end

	28: begin
		pulseShaper_width2		<= {d1};
		ctrl					<= 16'd0;
	end

	29: begin
		enableGateKeeper2		<= d1[0];
		ctrl					<= 16'd0;
	end
	

	
	default:
		ctrl					<= 16'd0;
	
endcase
end
endmodule
