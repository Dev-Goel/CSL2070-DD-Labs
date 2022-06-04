`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.02.2022 14:32:51
// Design Name: 
// Module Name: test_bcd_adder
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


module test_bcd_adder;

reg [3:0] inp_a;
reg [3:0] inp_b;
reg carry_in;
wire [3:0] sum;
wire carry;
   
bcd_adder bcda(inp_a, inp_b, carry_in, sum, carry);

initial 
begin
    inp_a = 0;  inp_b = 0;  carry_in = 0;   #10;
    inp_a = 6;  inp_b = 9; #10;
    inp_a = 3;  inp_b = 3; #10;
    inp_a = 4;  inp_b = 5; #10;
    inp_a = 8;  inp_b = 2; #10;
    inp_a = 9;  inp_b = 9;  carry_in = 1;   #10;
    inp_a = 0;  inp_b = 0; #10;
    inp_a = 6;  inp_b = 9; #10;
    inp_a = 3;  inp_b = 3; #10;
    inp_a = 4;  inp_b = 5; #10;
    inp_a = 8;  inp_b = 2; #10;
    inp_a = 9;  inp_b = 9; #10;
end

initial #120 $finish;
endmodule