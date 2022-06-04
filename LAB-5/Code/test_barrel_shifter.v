`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.02.2022 13:29:39
// Design Name: 
// Module Name: test_barrel_shifter
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


module test_barrel_shifter;

reg [3:0] inp_w;
reg [1:0] inp_s;
wire [3:0] out_y;
integer i;

barrel_shifter bs1(inp_w, inp_s, out_y);

initial
    begin
        for(i = 1; i < 16; i=i+1)
        begin
            assign inp_w = i; 
            inp_s[1] = 0;
            inp_s[0] = 0; #10;
            inp_s[1] = 0;
            inp_s[0] = 1; #10;
            inp_s[1] = 1;
            inp_s[0] = 0; #10;
            inp_s[1] = 1;
            inp_s[0] = 1; #10;
        end
    end
initial #600 $finish;
        
endmodule
