`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.01.2022 19:43:15
// Design Name: 
// Module Name: CarrySelectAdder
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

module CarrySelectAdder(A, B, cin, S, cout);

input [31:0] A, B;
input cin;
output [31:0] S;
output cout;

wire [31:0] temp0, temp1, carry0, carry1;
genvar i;

full_adder fa00(A[0], B[0], 1'b0, temp0[0], carry0[0]);
for(i = 1;i < 32 ; i=i+1)
    begin
        full_adder fa01(A[i], B[i], carry0[i-1], temp0[i], carry0[i]);
    end
    
full_adder fa10(A[0], B[0], 1'b1, temp1[0], carry1[0]);
    for(i = 1;i < 32 ; i=i+1)
        begin
            full_adder fa11(A[i], B[i], carry1[i-1], temp1[i], carry1[i]);
        end
       

multiplexer mux_carry(carry0[31], carry1[31], cin, cout);

for(i = 0; i < 32 ; i=i+1)
    begin
        multiplexer mux_sum(temp0[i], temp1[i], cin, S[i]);
    end
    
endmodule

