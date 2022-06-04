`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2022 02:27:47
// Design Name: 
// Module Name: test_multiplication_by_5
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


module test_multiplication_by_5;

reg [3:0] inp_a;
wire [6:0] out_b;
integer i;

multiplication_by_5 mb5(inp_a, out_b);

initial
    begin
        for(i = 0; i < 16; i=i+1)
        begin
            assign inp_a = i; #10;
        end
    end

initial #160 $finish;
endmodule
