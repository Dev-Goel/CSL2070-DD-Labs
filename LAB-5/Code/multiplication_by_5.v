`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2022 02:24:39
// Design Name: 
// Module Name: multiplication_by_5
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


module multiplication_by_5(inp_a, out_b);

input [3:0] inp_a;
output reg[6:0] out_b;
reg [5:0] sum1;
reg [3:0] sum2;

always@*
    begin
        assign sum2 = inp_a;
        assign sum1 = inp_a << 2;
        assign out_b = sum1 + sum2;
    end
    
endmodule
