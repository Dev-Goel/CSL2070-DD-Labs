`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2022 02:55:05
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


module bcd_subtractor(inp_a, inp_b, diff, carry);

input [3:0] inp_a, inp_b;
output [3:0] diff;
output carry;
reg [4:0] diff_temp;
reg [3:0] diff;
reg [1:0]carry;  

always @(inp_a, inp_b)
begin
    diff_temp = inp_a + 10 - inp_b; 
    if(diff_temp > 9)
        begin
            diff_temp = diff_temp+6; 
            carry = 1;  
            diff = diff_temp[3:0];
        end 
    else
        begin
            carry = 0;
            diff = diff_temp[3:0];
            diff = 10-diff;
        end
end     

endmodule

