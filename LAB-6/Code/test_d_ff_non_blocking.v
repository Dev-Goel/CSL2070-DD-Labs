`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.03.2022 17:49:43
// Design Name: 
// Module Name: test_d_ff_non_blocking
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


module test_d_ff_non_blocking;

reg clk, d, reset;
wire q1, q2;

d_ff_non_blocking dffnb(d, clk, reset, q1, q2);

always #10 clk=~clk;

initial
    begin
        d = 0; clk = 0; reset = 0;
        #20 reset = 1;
        #20 d = 1; reset = 0;
        #40 reset = 1;
    end
initial #100 $finish;
endmodule

