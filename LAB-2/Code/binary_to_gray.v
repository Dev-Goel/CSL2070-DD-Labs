`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2022 13:12:14
// Design Name: 
// Module Name: binary_to_gray
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


module binary_to_gray(input [0:3] bin, output [0:3] Gray);
    
assign Gray[0] = bin[0];
assign Gray[1] = bin[0] ^ bin[1];
assign Gray[2] = bin[1] ^ bin[2];
assign Gray[3] = bin[2] ^ bin[3];

endmodule
