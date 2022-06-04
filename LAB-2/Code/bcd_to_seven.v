`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2022 14:03:09
// Design Name: 
// Module Name: bcd_to_seven
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


module bcd_to_seven(bcd, sevenSeg);

input [0:3] bcd;
output [0:6] sevenSeg;
reg [0:6] sevenSeg;

always @(bcd)
    begin
        case (bcd) 
            0 : sevenSeg = 7'b1111110;
            1 : sevenSeg = 7'b0110000;
            2 : sevenSeg = 7'b1101101;
            3 : sevenSeg = 7'b1111001;
            4 : sevenSeg = 7'b0110011;
            5 : sevenSeg = 7'b1011011;
            6 : sevenSeg = 7'b1011111;
            7 : sevenSeg = 7'b1110000;
            8 : sevenSeg = 7'b1111111;
            9 : sevenSeg = 7'b1111011;
            default : sevenSeg = 7'b0000000; 
        endcase
    end
    
endmodule
