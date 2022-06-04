`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.01.2022 13:28:31
// Design Name: 
// Module Name: four_bit_adder
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


module four_bit_adder(a0, b0, a1, b1, a2, b2, a3, b3, s0, s1, s2, s3, carry);

input a0, b0, a1, b1, a2, b2, a3, b3;
output s0, s1, s2, s3, carry;
wire fa0carry, fa1carry, fa2carry;
full_adder f1(a0, b0, 0, s0, fa0carry);
full_adder f2(a1, b1, fa0carry, s1, fa1carry);
full_adder f3(a2, b2, fa1carry, s2, fa2carry);
full_adder f4(a3, b3, fa2carry, s3, carry);

endmodule
