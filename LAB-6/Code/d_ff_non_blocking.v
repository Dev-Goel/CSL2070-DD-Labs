`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.03.2022 21:58:31
// Design Name: 
// Module Name: d_ff_non_blocking
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


module d_ff_non_blocking(d, clk, reset, q1, q2);

input d, clk, reset;
output reg q1, q2;

always@(posedge clk)
    begin
        if(reset)
            begin
                q1 <= 0;
                q2 <= 0;
            end
        else
            begin
                q1 <= d;
                q2 <= q1;
            end
    end   
endmodule
