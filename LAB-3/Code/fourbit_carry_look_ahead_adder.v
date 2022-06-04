`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.01.2022 01:08:57
// Design Name: 
// Module Name: fourbit_carry_look_ahead_adder
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


module fourbit_carry_look_ahead_adder(inp_A, inp_B, inp_cin, out_S, out_cout, p, g);

input [3:0] inp_A, inp_B;
input inp_cin;
output [3:0] out_S, p, g;
output out_cout;

wire [3:1]c; 
wire [10:1]aw; 
wire [6:1]ow;
 
half_adder ha1(inp_A[0], inp_B[0], p[0], g[0]);
half_adder ha2(inp_A[1], inp_B[1], p[1], g[1]);
half_adder ha3(inp_A[2], inp_B[2], p[2], g[2]);
half_adder ha4(inp_A[3], inp_B[3], p[3], g[3]);

// Logic
// c0 = cin (input carry)
// c1 = g[0] + p[0]c[0] 
// c2 = g[1] + p[1]g[0] + p[1]p[0]c[0] 
// c3 = g[2] + p[2]g[1] + p[2]p[1]g[0] + p[2]p[2]p[0]c[0] 

and A1(aw[1], p[0], inp_cin);
or O1(c[1], aw[1], g[0]);
and A2(aw[2], p[1], g[0]);
and A3(aw[3], p[1], aw[1]);
or O2(ow[1], aw[3], aw[2]);
or O3(c[2], ow[1], g[1]);
and A4(aw[4], p[2], g[1]);
and A5(aw[5], aw[2], p[2]);
and A6(aw[6], p[2], aw[3]);
or O4(ow[2], aw[5], aw[6]);
or O5(ow[3], aw[4], ow[2]);
or O6(c[3], g[2], ow[3]);
and A7(aw[7], p[3], g[2]);
and A8(aw[8], p[3], aw[4]);
and A9(aw[9], p[3], aw[5]);
and A10(aw[10], p[3], aw[6]);
or O7(ow[4], aw[10], aw[9]);
or O8(ow[5], ow[4], aw[8]);
or O9(ow[6], ow[5], aw[7]);
or O10(out_cout, ow[6], g[3]);
xor x1(out_S[0], p[0], inp_cin);
xor x2(out_S[1], p[1], c[1]);
xor x3(out_S[2], p[2], c[2]);
xor x4(out_S[3], p[3], c[3]);
 
endmodule
