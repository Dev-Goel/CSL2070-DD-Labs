`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.02.2022 13:09:05
// Design Name: 
// Module Name: d_flip_flop_asyn
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


module d_flip_flop_asyn(d, clk, reset, q);

input d, clk, reset;
output reg q;

always@(posedge clk or posedge reset)
    if(reset)
        q = 0;
    else
        q = d;
endmodule
