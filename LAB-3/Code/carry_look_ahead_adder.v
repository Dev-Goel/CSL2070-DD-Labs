`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.01.2022 00:04:26
// Design Name: 
// Module Name: carry_look_ahead_adder
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


module carry_look_ahead_adder(inp_A, inp_B, inp_cin, out_S, out_cout);

input [31:0]inp_A,inp_B;
input inp_cin;
output [31:0]out_S;
output out_cout;
wire [7:1]c;
wire [31:0]p,q;

fourbit_carry_look_ahead_adder fbcla1(inp_A[3:0], inp_B[3:0], inp_cin, out_S[3:0], c[1], p[3:0], q[3:0]);
fourbit_carry_look_ahead_adder fbcla2(inp_A[7:4], inp_B[7:4], c[1], out_S[7:4], c[2], p[7:4], q[7:4]);
fourbit_carry_look_ahead_adder fbcla3(inp_A[11:8], inp_B[11:8], c[2], out_S[11:8], c[3], p[11:8], q[11:8]);
fourbit_carry_look_ahead_adder fbcla4(inp_A[15:12], inp_B[15:12], c[3], out_S[15:12], c[4], p[15:12], q[15:12]);
fourbit_carry_look_ahead_adder fbcla5(inp_A[19:16], inp_B[19:16], c[4], out_S[19:16], c[5], p[19:16], q[19:16]);
fourbit_carry_look_ahead_adder fbcla6(inp_A[23:20], inp_B[23:20], c[5], out_S[23:20], c[6], p[23:20], q[23:20]);
fourbit_carry_look_ahead_adder fbcla7(inp_A[27:24], inp_B[27:24], c[6], out_S[27:24], c[7], p[27:24], q[27:24]);
fourbit_carry_look_ahead_adder fbcla8(inp_A[31:28], inp_B[31:28], c[7], out_S[31:28], out_cout, p[31:28], q[31:28]);

endmodule
