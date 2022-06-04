`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2022 19:27:04
// Design Name: 
// Module Name: test_melay_machine_2_complement
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


module test_melay_machine_2_complement;

reg clk, reset;
reg a;
wire out;
wire ps, ns;

melay_machine_2_complement mem2c(clk, reset, a, out, ps, ns);

always #5 clk = ~clk;

initial 
    begin
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
        #10 a = 1;
        #10 a = 1;
        #10 a = 1;
    end
    
initial #110 $finish;
endmodule
