`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.02.2022 22:00:34
// Design Name: 
// Module Name: three_bit_adder
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


module three_bit_adder(inp_A, inp_B, inp_cin, out_S, out_cout);

input [2:0] inp_A, inp_B;
input inp_cin;
output [2:0] out_S;
output out_cout;
wire cout1, cout2;

full_adder fa1(inp_A[0], inp_B[0], inp_cin, out_S[0], cout1);
full_adder fa2(inp_A[1], inp_B[1], cout1, out_S[1], cout2);
full_adder fa3(inp_A[2], inp_B[2], cout2, out_S[2], out_cout);


endmodule