`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2022 18:54:52
// Design Name: 
// Module Name: MLS_Counter_test
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


module MLS_Counter_test;

reg clk;
wire [7:0] lfsr;

MLS_Counter mls(clk, lfsr);

initial begin
    clk = 0;
end

always #10 clk = ~clk;

initial #180 $finish;
endmodule
