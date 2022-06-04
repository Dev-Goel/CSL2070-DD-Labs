`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.02.2022 21:57:36
// Design Name: 
// Module Name: binary_multiplier
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


module binary_multiplier(inp_A, inp_B, out_ans, ans_unit, ans_ten);

input [2:0] inp_A, inp_B;
output [5:0] out_ans;
output [3:0] ans_unit;
output reg [3:0] ans_ten;

wire [2:0] inp1a;
assign inp1a[0] = inp_A[0]&inp_B[1];
assign inp1a[1] = inp_A[1]&inp_B[1];
assign inp1a[2] = inp_A[2]&inp_B[1];
wire [2:0] inp1b;
assign inp1b[0] = inp_A[1]&inp_B[0];
assign inp1b[1] = inp_A[2]&inp_B[0];
assign inp1b[2] = 0;
wire [2:0] out1s;
wire out_carry1;
three_bit_adder tba1(inp1a, inp1b, 0, out1s, out_carry1);

wire [2:0] inp2a;
assign inp2a[0] = inp_A[0]&inp_B[2];
assign inp2a[1] = inp_A[1]&inp_B[2];
assign inp2a[2] = inp_A[2]&inp_B[2];
wire [2:0] inp2b;
assign inp2b[0] = out1s[1];
assign inp2b[1] = out1s[2];
assign inp2b[2] = out_carry1;
wire [2:0] out2s;
wire out_carry2;
three_bit_adder tba2(inp2a, inp2b, 0, out2s, out_carry2);

assign out_ans[0] = inp_A[0]&inp_B[0];
assign out_ans[1] = out1s[0];
assign out_ans[2] = out2s[0];
assign out_ans[3] = out2s[1];
assign out_ans[4] = out2s[2];
assign out_ans[5] = out_carry2;

assign ans_unit = out_ans%10;
always @(out_ans)
    begin
        if (out_ans < 10)
        begin
            assign ans_ten = 4'b0000;
        end   
        else if (out_ans < 20)
        begin 
            assign ans_ten = 4'b0001;
        end
        else if (out_ans < 30)
        begin 
            assign ans_ten = 4'b0010;
        end
        else if (out_ans < 40)
        begin 
            assign ans_ten = 4'b0011;
        end
        else if (out_ans < 50)
        begin 
            assign ans_ten = 4'b0100;
        end
    end
 endmodule
