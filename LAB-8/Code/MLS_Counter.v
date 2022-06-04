`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2022 18:49:49
// Design Name: 
// Module Name: MLS_Counter
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


module MLS_Counter(clk, lfsr);

input clk;
output reg [7:0] lfsr = 42;

wire w1 = lfsr[3];
wire w2 = lfsr[2];
wire w3 = lfsr[1];
wire w4 = lfsr[7];

always@(posedge clk)
    begin
        lfsr[7:1] <= lfsr[6:0];
        lfsr[0] <= lfsr[3]^lfsr[4]^lfsr[5]^lfsr[7];
    end
endmodule
