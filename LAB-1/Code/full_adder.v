`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.01.2022 11:20:36
// Design Name: 
// Module Name: full_adder
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


module full_adder(a, b, c, sum, carry);

input a, b, c;
output sum, carry;
wire ha1sum, ha1carry, ha2sum, ha2carry;

half_adder ha1(b, c, ha1sum, ha1carry);
half_adder ha2(a, ha1sum, ha2sum, ha2carry);

assign sum = ha2sum;
assign carry = ha1carry|ha2carry;

endmodule
