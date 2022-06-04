`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.02.2022 14:14:16
// Design Name: 
// Module Name: bcd_subtractor
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


module bcd_subtractor(inp_A, inp_B, carry_out, out_S);

input [3:0] inp_A, inp_B;
output carry_out;
output [3:0] out_S;

wire [3:0] out_B;

TensComplement c1(inp_B, out_B);

wire [3:0] out_ans;
bcd_adder bcd1(inp_A, out_B, 0, out_ans, carry_out);

wire [3:0] out_ans2;
TensComplement c2(out_ans, out_ans2);

assign out_S = (carry_out)?out_ans:out_ans2;
//always@(carry_out)
//    if(carry_out)
//        begin
//            TensComplement c2(out_ans, out_S);
//        end
//    else
//        begin
//            assign out_S = out_ans;
//        end
//assign out_S = out_ans;


endmodule
