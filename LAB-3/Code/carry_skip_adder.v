`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.01.2022 17:24:46
// Design Name: 
// Module Name: carry_skip_adder
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


module carry_skip_adder(inp_A, inp_B, inp_cin, out_S, out_cout);

input [31:0] inp_A, inp_B;
input inp_cin;
output [31:0] out_S;
output out_cout;
wire [7:1]c;

four_bit_carry_skip_adder fbcsa1(inp_A[3:0], inp_B[3:0], inp_cin, out_S[3:0], c[1]);
four_bit_carry_skip_adder fbcsa2(inp_A[7:4], inp_B[7:4], c[1], out_S[7:4], c[2]);
four_bit_carry_skip_adder fbcsa3(inp_A[11:8], inp_B[11:8], c[2], out_S[11:8], c[3]);
four_bit_carry_skip_adder fbcsa4(inp_A[15:12], inp_B[15:12], c[3], out_S[15:12], c[4]);
four_bit_carry_skip_adder fbcsa5(inp_A[19:16], inp_B[19:16], c[4], out_S[19:16], c[5]);
four_bit_carry_skip_adder fbcsa6(inp_A[23:20], inp_B[23:20], c[5], out_S[23:20], c[6]);
four_bit_carry_skip_adder fbcsa7(inp_A[27:24], inp_B[27:24], c[6], out_S[27:24], c[7]);
four_bit_carry_skip_adder fbcsa8(inp_A[31:28], inp_B[31:28], c[7], out_S[31:28], out_cout);

endmodule
