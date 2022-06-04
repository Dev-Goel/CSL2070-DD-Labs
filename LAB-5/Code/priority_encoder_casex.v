`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.02.2022 16:24:29
// Design Name: 
// Module Name: priority_encoder_casex
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


module priority_encoder_casex(inp_D, out_X);

input [3:0] inp_D;
output reg [1:0] out_X;
reg V;

always@(inp_D)
    begin
        V = 1;
        case(inp_D)
        4'b1XXX: out_X = 2'b11;
        4'b01XX: out_X = 2'b10;
        4'b001X: out_X = 2'b01;
        4'b0001: out_X = 2'b00;
        default:
            begin V = 0;
            out_X = 2'bXX;
            end
        endcase
    end
endmodule
