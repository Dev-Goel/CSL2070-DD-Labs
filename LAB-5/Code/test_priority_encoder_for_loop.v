`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.02.2022 17:29:58
// Design Name: 
// Module Name: test_priority_encoder_for_loop
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


module test_priority_encoder_for_loop;

reg [3:0] inp_D;
wire [1:0] out_X;

priority_encoder_for_loop pefl(inp_D, out_X);

initial
    begin
        inp_D = 4'b0000; #10;
        inp_D = 4'b0001; #10;
        inp_D = 4'b001X; #10;
        inp_D = 4'b01XX; #10;
        inp_D = 4'b1XXX; #10;
    end    

initial #50 $finish;
endmodule 

