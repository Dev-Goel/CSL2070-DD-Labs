`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.02.2022 20:06:26
// Design Name: 
// Module Name: TensComplement
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


module TensComplement(A,complement);

input [3:0] A;
output [3:0] complement;

assign complement[0] = A[0];
assign complement[1] = A[1]&A[0]|A[3]&(~A[0])|A[2]&(~A[1])&(~A[0]);
assign complement[2] = A[2]&(~A[1])|A[2]&(~A[0])|(~A[2])&A[1]&A[0];
assign complement[3] = (~A[2])&A[1]&(~A[0])|(~A[3])&(~A[2])&(~A[1])&A[0];

endmodule
