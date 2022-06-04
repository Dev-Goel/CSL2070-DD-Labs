`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.01.2022 02:00:24
// Design Name: 
// Module Name: test_carry_look_ahead_adder
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


module test_carry_look_ahead_adder;

reg [31:0] inp_A, inp_B;
reg inp_cin;
wire [31:0] out_S;
wire out_cout;
integer i, j;

carry_look_ahead_adder cla1(inp_A, inp_B, inp_cin, out_S, out_cout);
initial
    begin
        for(i = 0 ; i<8; i=i+1)
            begin
                for(j = 0 ; j<8 ; j=j+1)
                    begin
                        assign inp_cin = 0;
                        assign inp_A = i;
                        assign inp_B = j; #10;               
                    end
            end
    end
endmodule
