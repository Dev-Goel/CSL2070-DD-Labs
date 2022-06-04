`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.02.2022 13:18:53
// Design Name: 
// Module Name: test_d_flip_flop_asyn
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


module test_d_flip_flop_asyn;

reg clk, d, reset;
wire q;

d_flip_flop_asyn dff(d, clk, reset, q);

always #10 clk=~clk;

initial
    begin
        d = 0; clk = 0; reset = 0;
        #20 reset = 1;
        #20 d = 1; reset = 0;
        #20 reset = 1;
    end
initial #80 $finish;
endmodule
