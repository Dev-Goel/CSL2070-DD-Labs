`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.02.2022 17:03:53
// Design Name: 
// Module Name: priority_encoder_for_loop
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


module priority_encoder_for_loop(inp_D, out_X);

output reg [1:0] out_X;
input [3:0] inp_D;
reg V;
integer i;

always@(inp_D)
    begin
        out_X = 2'bXX;
        V = 0;
        for(i = 0; i < 4; i = i + 1)
            begin
                if(inp_D[i])
                    begin
                        out_X = i;
                        V = 1;
                    end
            end
    end
endmodule
