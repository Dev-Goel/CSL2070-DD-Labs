`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.03.2022 16:42:44
// Design Name: 
// Module Name: test_shift_and_add_multiplier
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


module test_shift_and_add_multiplier();
reg [3:0] A, B;
reg clk, ctrl, load;
wire [3:0] P, Q, M;
wire [7:0] PQ;
shift_and_add_multiplier saam(A, B, clk, ctrl, load, P, Q, M, PQ);

always #10 clk=~clk;

initial
fork
    A=4'd4; B=4'd11; clk=0; ctrl=0; load=0;
    #5 load=1;
    #15 load=0;
    #25 ctrl=1;
    #85 A=4'd15; #85 B=4'd15;
    #95 ctrl=0;
    #105 load=1;
    #115 load=0;
    #125 ctrl=1;
    #195 ctrl=0;
join
initial #200 $finish;
endmodule
