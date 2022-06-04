`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.01.2022 18:55:11
// Design Name: 
// Module Name: test_comparator
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


module test_comparator;

reg [3:0] inp_A, inp_B;
reg inp_M;
wire [3:0] out_S;
wire out_C, out_AgreaterB, out_BgreaterA, out_AequalB, overflow;

comparator cmp(inp_A, inp_B, inp_M, out_S, out_C, overflow, out_AequalB, out_AgreaterB, out_BgreaterA);
initial 
    begin
        inp_M = 1; inp_A = 0; inp_B = 0;
        #5 inp_A = 4'b1100; inp_B = 4'b1011;
        #5 inp_A = 4'b0101; inp_B = 4'b1001;
        #5 inp_A = 4'b1010; inp_B = 4'b0001;
        #5 inp_A = 4'b0100; inp_B = 4'b0010;
        #5 inp_A = 4'b1010; inp_B = 4'b0110;
      end

initial #30 $finish;
endmodule
