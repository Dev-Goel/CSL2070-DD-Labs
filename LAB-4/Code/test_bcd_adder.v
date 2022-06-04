`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.02.2022 13:54:54
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

reg [3:0] inp_A, inp_B;
reg inp_cin;
wire [3:0] out_ans;
wire output_carry;
integer i, j;
bcd_adder bcd1(inp_A, inp_B, inp_cin, out_ans, output_carry);

initial
    begin
        assign inp_cin = 0;
        for(i = 0; i<10; i=i+1)
        begin
            for(j = 0; j<10 ; j=j+1)
            begin
                assign inp_A = i;
                assign inp_B = j; #10;
            end
        end
    end 
   
initial #1000 $finish;
endmodule
