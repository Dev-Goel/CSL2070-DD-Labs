`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.02.2022 22:16:44
// Design Name: 
// Module Name: test_binary_multiplier
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


module test_binary_multiplier;

reg [2:0] inp_A, inp_B;
wire [5:0] out_ans;
wire [3:0] ans_unit, ans_ten;
integer i, j;

binary_multiplier binMul1(inp_A, inp_B, out_ans, ans_unit, ans_ten);

initial
    begin
        for(i = 0; i<10; i=i+1)
        begin
            for(j = 0; j<10 ; j=j+1)
            begin
                assign inp_A = i;
                assign inp_B = j; #10;
            end
        end
    end    
initial #1000 $finish;
endmodule

