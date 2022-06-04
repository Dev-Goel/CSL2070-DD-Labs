`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.03.2022 20:23:25
// Design Name: 
// Module Name: Test_SerialAdder
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


module Test_SerialAdder;

reg [7:0]a, b;
reg clk, reset;
wire [8:0]sum;
wire cout;

SerialAdder sa(a, b, cout, sum, clk, reset);

initial 
    begin
        clk = 0;
    end

always #10 clk = !clk;

initial 
    begin
        a=8'b00010111;b=8'b00001101;
        #5 reset=1'b1;
        #5 reset=1'b0;
        #140 a=8'b01010110;b=8'b00010001;
        #5 reset=1'b1;
        #5 reset=1'b0;
        #140 a=8'b01000111;b=8'b00011011;
        reset=1'b1;
        #140 $stop;
    end
endmodule
