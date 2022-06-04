`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.02.2022 13:00:56
// Design Name: 
// Module Name: barrel_shifter
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

module barrel_shifter(inp_w, inp_s, out_y);

input [3:0] inp_w;
input [1:0] inp_s;
output [3:0] out_y;

mux41 m1(inp_w[3], inp_w[0], inp_w[1], inp_w[2], inp_s[0], inp_s[1], out_y[3]);
mux41 m2(inp_w[2], inp_w[3], inp_w[0], inp_w[1], inp_s[0], inp_s[1], out_y[2]);
mux41 m3(inp_w[1], inp_w[2], inp_w[3], inp_w[0], inp_s[0], inp_s[1], out_y[1]);
mux41 m4(inp_w[0], inp_w[1], inp_w[2], inp_w[3], inp_s[0], inp_s[1], out_y[0]);

endmodule
