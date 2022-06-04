`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2022 13:42:53
// Design Name: 
// Module Name: gray_to_binary
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


module gray_to_binary(input [0:3] G, output [0:3] bin);

assign bin[0] = G[0];
assign bin[1] = G[0] ^ G[1];
assign bin[2] = G[0] ^ G[1] ^ G[2];
assign bin[3] = G[0] ^ G[1] ^ G[2] ^ G[3];

endmodule
