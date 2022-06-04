`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.01.2022 00:24:39
// Design Name: 
// Module Name: adder_subtractor
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


module adder_subtractor(inp_A, inp_B, inp_M, out_C, out_S, overflow);

input [3:0] inp_A, inp_B;
input inp_M;
output [3:0] out_S;
output out_C, overflow;
wire [3:0] inp_Bi;
wire out_C1, out_C2, out_C3, out_C4;

xor_gate g1(inp_M, inp_B[0], inp_Bi[0]);
xor_gate g2(inp_M, inp_B[1], inp_Bi[1]);
xor_gate g3(inp_M, inp_B[2], inp_Bi[2]);
xor_gate g4(inp_M, inp_B[3], inp_Bi[3]);
full_adder fa1(inp_A[0], inp_Bi[0], inp_M, out_S[0], out_C1);
full_adder fa2(inp_A[1], inp_Bi[1], out_C1, out_S[1], out_C2);
full_adder fa3(inp_A[2], inp_Bi[2], out_C2, out_S[2], out_C3);
full_adder fa4(inp_A[3], inp_Bi[3], out_C3, out_S[3], out_C4);
xor_gate g5(out_C3, out_C4, overflow);

assign out_C = out_C4;
endmodule
