`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.02.2022 13:59:07
// Design Name: 
// Module Name: alu
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


module alu(inp_a, inp_b, operator, out_ans);

input [31:0] inp_a, inp_b;
input [2:0] operator;
output reg [31:0] out_ans;

always @*
    begin
        case(operator)
            // Clear
            0: out_ans = 0;
            // Addition
            1: out_ans = inp_a + inp_b;
            // Subtraction
            2: out_ans = inp_a - inp_b;
            // Left shift
            3: out_ans = inp_a << 1;
            // Right Shift
            4: out_ans = inp_a >> 1;
            // A AND B
            5: out_ans = inp_a & inp_b;
            // A OR B
            6: out_ans = inp_a | inp_b;
            // A XOR B
            7: out_ans = inp_a ^ inp_b;
        endcase
    end
endmodule
