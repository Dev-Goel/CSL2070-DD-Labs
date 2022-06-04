`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2022 13:20:31
// Design Name: 
// Module Name: test_binary_to_gray
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


module test_binary_to_gray;

reg [0:3] bin;
wire [0:3] Gray;

binary_to_gray b2g(bin, Gray);

always
begin
    bin = 0;
    #10 bin = 1;
    #10 bin = 2;
    #10 bin = 3;
    #10 bin = 4;
    #10 bin = 5;
    #10 bin = 6;
    #10 bin = 7;
    #10 bin = 8;
    #10 bin = 9;
    #10 bin = 10;
    #10 bin = 11;
    #10 bin = 12;
    #10 bin = 13;
    #10 bin = 14;
    #10 bin = 15;
    #10;
   $stop;
  end
endmodule
