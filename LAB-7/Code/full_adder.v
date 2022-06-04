`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.03.2022 16:34:03
// Design Name: 
// Module Name: full_adder
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


module full_adder(inpA, inpB, inpC, outS, outCarry);

input inpA, inpB, inpC;
output outS, outCarry;

assign outS = inpA^inpB^inpC;
assign outCarry = (inpA&inpB)|(inpB&inpC)|(inpC&inpA);

endmodule
