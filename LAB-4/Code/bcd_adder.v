`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.02.2022 13:19:58
// Design Name: 
// Module Name: bcd_adder
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


module bcd_adder(inp_A, inp_B, inp_cin, out_ans, output_carry);

input [3:0] inp_A, inp_B;
input inp_cin;
output [3:0] out_ans;
output output_carry;

wire [3:0] out_S1;
wire out_carry;
wire [3:0] inp_A2;
wire c_out;

four_bit_adder fba1(inp_A, inp_B, inp_cin, out_S1, out_carry);
assign output_carry = (out_carry) | (out_S1[3]&out_S1[2]) | (out_S1[3]&out_S1[1]);
assign inp_A2[3] = 0;
assign inp_A2[2] = output_carry;
assign inp_A2[1] = output_carry;
assign inp_A2[0] = 0;

four_bit_adder fba2(inp_A2, out_S1, 0, out_ans, c_out);
endmodule
