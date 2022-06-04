`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.01.2022 17:31:46
// Design Name: 
// Module Name: multiplexer
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

module multiplexer(i0,i1,sel,bitout);

input i0,i1, sel;
output reg bitout;

always@(i0,i1,sel)
    begin
        if(sel == 0)
            bitout = i0;
        else
            bitout = i1;
    end
endmodule

