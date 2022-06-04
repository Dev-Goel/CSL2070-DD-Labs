`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.01.2022 23:40:52
// Design Name: 
// Module Name: comparator
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


module comparator(inp_A, inp_B, inp_M, out_S, out_C, overflow, out_AequalB, out_AgreaterB, out_BgreaterA);

input [3:0] inp_A, inp_B;
input inp_M;
output [3:0] out_S;
output  out_C, out_AgreaterB, out_BgreaterA, out_AequalB, overflow;
wire temp;

assign inp_M = 1;
adder_subtractor addsub(inp_A, inp_B, inp_M,out_C, out_S, overflow);

assign out_AequalB = (inp_A == inp_B)? 1 : 0;
xnor (temp,overflow,out_S[3]);
assign out_AgreaterB = (out_AequalB == 0 & temp == 1)?1:0;
xor(out_BgreaterA,overflow,out_S[3]);


endmodule
