`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.02.2022 14:08:29
// Design Name: 
// Module Name: test_alu
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


module test_alu;

reg [31:0] inp_a, inp_b;
reg [2:0] operator;
wire [31:0] out_ans;

alu alu1(inp_a, inp_b, operator, out_ans);

initial 
    begin   
        inp_a = 24;
        inp_b = 8;
        operator = 0; #10;
        operator = 1; #10;
        operator = 2; #10;
        operator = 3; #10;
        operator = 4; #10;
        operator = 5; #10;
        operator = 6; #10;
        operator = 7; #10;
    end
    
initial #80 $finish;
endmodule
