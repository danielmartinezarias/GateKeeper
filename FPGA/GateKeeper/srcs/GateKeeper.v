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
    output wire det_out,
    reg GateKeeper = 1'b1 // GateKeeper is used to vaariable the output of the module
);



reg [15:0] c = 16'h0000; // c counts the number of clock cycles since last detection
reg det_in_prev = 1'b0; // det_in_prev is used to store the previous value of det_in
reg [1:0] state = 2'd0; 
// reg GateKeeper = 1'b1; // GateKeeper is used to variable the output of the module


assign det_out = (GateKeeper) ? det_in:1'b0; // main assignation

//Every 2.5 ns logic is evaluated
always@(posedge clk) begin

    det_in_prev <= det_in; // store the previous value of det_in

    if(enable)begin//from GUI
        case(state)
            0:begin
                if(det_in)begin//input signal
                    c           <= 16'd1; // reset counter every time a detection is made
                    state       <= 1; // jump to state 1
                end
            end

            1:begin
                if(c<({8'd0,pulseShaper_width}))begin //
                    c               <= c + 16'd1; // increment c
                end
                else begin // if c is equal to pulseShaper_width, disable det_out 
                    c               <= 16'd1;
                    GateKeeper      <= 1'b0; // disable det_out
                    state           <= 2; // jump to state 2
                end
            end

            2:begin
                if(c<(window))begin // if c is less than window, increment c
                    c               <= c + 16'd1; // increment c
                end
                else begin // if c is equal to window, disable det_out
                    if(det_in)begin
                        c               <= 16'd1;
                        GateKeeper      <= 1'b0; // enable det_out
                        state           <= 3; // jump to state 3
                    end
                    else begin
                        c               <= 16'd0;
                        GateKeeper      <= 1'b1; // enable det_out
                        state           <= 0; // jump to state 0
                    end 
                end
            end

            3:begin
                if(c<({8'd0,pulseShaper_width}))begin //
                    c               <= c + 16'd1; // increment c
                end
                else begin // if c is equal to pulseShaper_width, disable det_out 
                    c               <= 16'd0;
                    GateKeeper      <= 1'b1; // disable det_out
                    state           <= 0; // jump to state 0
                end
            end

        endcase
    end

    else begin // when the module is not enabled, det_in is bypassed to det_out
        GateKeeper             <= 1'b1;// enable det_out
    end

end


endmodule
