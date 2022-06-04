`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.01.2022 15:18:53
// Design Name: 
// Module Name: test_four_bit_adder
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


module test_four_bit_adder;

wire s0, s1, s2, s3, carry;
reg a0, b0, a1, b1, a2, b2, a3, b3;

four_bit_adder fba(a0, b0, a1, b1, a2, b2, a3, b3, s0, s1, s2, s3, carry);
initial
  begin
    // 0000 + 0000
    a0 = 1'b0; b0 = 1'b0; a1 = 1'b0; b1 = 1'b0; a2 = 1'b0; b2 = 1'b0; a3 = 1'b0; b3 = 1'b0;
    // 0001 + 0001
    #10 a0 = 1'b1; b0 = 1'b1; 
    // 0101 + 0111
    #10 a2 = 1'b1; b2 = 1'b1; b1 = 1'b1;
    // 1000 + 0100
    #10 a3 = 1'b1; a2 = 1'b0; a0 = 1'b0; b1 = 1'b0; b0 = 1'b0;
    // 1111 + 0001
    #10 a2 = 1'b1; a1 = 1'b1; a0 = 1'b1; b2 = 1'b0; b0 = 1'b1;
    // 1111 + 1111
    #10 b3 = 1'b1; b2 = 1'b1; b1 = 1'b1;
  end
 
initial #60 $finish; 
endmodule
