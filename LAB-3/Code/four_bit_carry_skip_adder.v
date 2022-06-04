`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.01.2022 16:02:36
// Design Name: 
// Module Name: four_bit_carry_skip_adder
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


module four_bit_carry_skip_adder(inp_A, inp_B, inp_cin, out_S, out_cout);

input [3:0] inp_A, inp_B;
input inp_cin;
output [3:0] out_S;
output out_cout;
wire [3:0]c;
wire [3:0]p;
wire [3:1]aw;

full_adder fa1(inp_A[0], inp_B[0], inp_cin, out_S[0], c[0]);
full_adder fa2(inp_A[1], inp_B[1], c[0], out_S[1], c[1]);
full_adder fa3(inp_A[2], inp_B[2], c[1], out_S[2], c[2]);
full_adder fa4(inp_A[3], inp_B[3], c[2], out_S[3], c[3]);

assign p[0] = inp_A[0]^inp_B[0];
assign p[1] = inp_A[1]^inp_B[1];
assign p[2] = inp_A[2]^inp_B[2];
assign p[3] = inp_A[3]^inp_B[3];

and A1(aw[1], p[0], p[1]);
and A2(aw[2], p[2], p[3]);
and A3(aw[3], aw[1], aw[2]);

multiplexer mux1(c[3], inp_cin ,aw[3], out_cout);

endmodule
