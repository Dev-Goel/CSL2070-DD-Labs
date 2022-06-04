`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.02.2022 14:47:11
// Design Name: 
// Module Name: test_bcd_subtractor
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


module test_bcd_subtractor;

reg [3:0] inp_A, inp_B;
wire [3:0] out_S;
wire carry_out;

bcd_subtractor bcds1(inp_A, inp_B, carry_out, out_S);

initial 
    begin
        inp_A = 9;  inp_B = 6;  #10;
        inp_A = 3;  inp_B = 3;  #10;
        inp_A = 6;  inp_B = 9;  #10;
        inp_A = 4;  inp_B = 5;  #10;
        inp_A = 8;  inp_B = 2;  #10;
        inp_A = 9;  inp_B = 9;  #10;
    end
   
initial #60 $finish;
endmodule
