`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.01.2022 10:57:51
// Design Name: 
// Module Name: test_half_adder
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


module test_half_adder;

wire sum, carry;
reg a, b;

half_adder H1(a, b, sum, carry);

initial
  begin
      a = 1'b0;
      b = 1'b0;
      #10 b= 1'b1;
      #10 b = 1'b0; a = 1'b1;
      #10 b = 1'b1;
  end
    
initial #50 $finish;
endmodule
