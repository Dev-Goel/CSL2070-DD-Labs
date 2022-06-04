`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2022 11:17:57
// Design Name: 
// Module Name: test_bcd_subtractor
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


module test_bcd_subtractor;

reg [3:0] inp_a;
reg [3:0] inp_b;
wire [3:0] diff;
wire [1:0]carry;
   
bcd_subtractor bcds(inp_a, inp_b, diff, carry);

initial 
begin
    inp_a = 0;  inp_b = 0; #10;
    inp_a = 6;  inp_b = 9; #10;
    inp_a = 3;  inp_b = 3; #10;
    inp_a = 4;  inp_b = 5; #10;
    inp_a = 8;  inp_b = 2; #10;
    inp_a = 9;  inp_b = 9; #10;
    inp_a = 0;  inp_b = 0; #10;
    inp_a = 6;  inp_b = 9; #10;
    inp_a = 3;  inp_b = 3; #10;
    inp_a = 4;  inp_b = 5; #10;
    inp_a = 8;  inp_b = 2; #10;
    inp_a = 9;  inp_b = 9; #10;
end

initial #120 $finish;
endmodule

