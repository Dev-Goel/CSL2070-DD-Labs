`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.01.2022 17:48:31
// Design Name: 
// Module Name: test_carry_skip_adder
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


module test_carry_skip_adder;

reg [31:0] inp_A, inp_B;
reg inp_cin;
wire [31:0] out_S;
wire out_cout;
integer i,j;

carry_skip_adder csa1(inp_A, inp_B, inp_cin, out_S, out_cout);

initial
    begin
        assign inp_cin = 0;
        for(i = 0; i<8; i=i+1)
            begin
                for(j = 0; j<8 ; j=j+1)
                    begin
                        assign inp_A = i;
                        assign inp_B = j; #10;
                    end
            end
        assign inp_cin = 1;
        for(i = 0; i<8; i=i+1)
            begin
                for(j = 0; j<8 ; j=j+1)
                    begin
                        assign inp_A = i;
                        assign inp_B = j; #10;
                    end
            end
    end
endmodule
