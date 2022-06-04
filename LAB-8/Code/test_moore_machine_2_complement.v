`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2022 20:04:13
// Design Name: 
// Module Name: test_moore_machine_2_complement
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


module test_moore_machine_2_complement();

reg clk ,reset;
reg a;
wire out;
wire [1:0] state;
moore_machine_2_component mom2c(clk, reset, a, out, state);

always #5 clk = ~clk;

initial begin
    clk = 0;
    reset = 0;
    a = 1;
    #10 reset = 1;
    #10 a = 0;
    #10 a = 1;
    #10 a = 1;
    #10 a = 0;
    #10 a = 1;
    #10 a = 0;
end

initial #80 $finish; 
endmodule