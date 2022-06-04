`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.03.2022 16:33:14
// Design Name: 
// Module Name: four_bit_adder
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


module four_bit_adder(inpA, inpB, outS, outC);

input [3:0] inpA, inpB;
output [3:0] outS;
output outC;

wire [3:1] D;
full_adder fa1(inpA[0], inpB[0], 0, outS[0], D[1]);
full_adder fa2(inpA[1], inpB[1], D[1], outS[1], D[2]);
full_adder fa3(inpA[2], inpB[2], D[2], outS[2], D[3]);
full_adder fa4(inpA[3], inpB[3], D[3], outS[3], outC);

endmodule