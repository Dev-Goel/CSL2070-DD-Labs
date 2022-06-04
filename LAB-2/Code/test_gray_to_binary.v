`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2022 13:48:10
// Design Name: 
// Module Name: test_gray_to_binary
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


module test_gray_to_binary;

reg [0:3] Gray;
wire [0:3] bin_out;

gray_to_binary g2b(Gray, bin_out);

always
begin
    Gray = 0;
    #10 Gray = 1;
    #10 Gray = 3;
    #10 Gray = 2;
    #10 Gray = 6;
    #10 Gray = 7;
    #10 Gray = 5;
    #10 Gray = 4;
    #10 Gray = 12;
    #10 Gray = 13;
    #10 Gray = 15;
    #10 Gray = 14;
    #10 Gray = 10;
    #10 Gray = 11;
    #10 Gray = 9;
    #10 Gray = 8;
    #10;
   $stop;
  end
endmodule
