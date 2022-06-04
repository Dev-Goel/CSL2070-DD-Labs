`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.01.2022 15:30:27
// Design Name: 
// Module Name: test_buzzer
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


module test_buzzer();

reg inp_a, inp_b, control;
wire out_a, out_b;

buzzer bz(inp_a, inp_b, control, out_a, out_b);
initial
    begin
        inp_a = 0; inp_b = 0; control = 0;
        #10 inp_a = 1; inp_b = 0; control = 0;
        #10 inp_a = 1; inp_b = 0; control = 1;
        #10 inp_a = 1; inp_b = 0; control = 0;
        #10 inp_a = 0; inp_b = 1; control = 1;
     end
initial #60 $finish;
endmodule
