`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.02.2022 14:30:10
// Design Name: 
// Module Name: bcd_adder
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


module bcd_adder(inp_a, inp_b, carry_in, sum, carry);

input [3:0] inp_a, inp_b;
input carry_in;
output [3:0] sum;
output carry;
reg [4:0] sum_temp;
reg [3:0] sum;
reg carry;  


always @(inp_a, inp_b, carry_in)
begin
    sum_temp = inp_a + inp_b + carry_in; 
    if(sum_temp > 9)
        begin
            sum_temp = sum_temp+6; 
            carry = 1;  
            sum = sum_temp[3:0];
        end
    else
        begin
            carry = 0;
            sum = sum_temp[3:0];
        end
end     

endmodule
