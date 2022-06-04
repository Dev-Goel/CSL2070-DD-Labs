`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.03.2022 16:56:05
// Design Name: 
// Module Name: test_electronic_voting_machine
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


module test_electronic_voting_machine();

reg admin, participant1, participant2, reset;
wire led1, led2, led, invalid;
wire [3:0] X1, Y1, Z1, X2, Y2, Z2;
electronic_voting_machine EVM(admin, participant1, participant2, reset, led1, led2, led, invalid, X1, Y1, Z1, X2, Y2, Z2);

initial
begin
    admin=0; participant1=0; participant2=0; reset=0; #5 admin=1; #1 admin=0;
    #2 participant1=1; #1 participant1=0;
    #1 reset=1; #1 reset=0;
    #6 admin=1; #1 admin=0; #5 participant2=1; #1 participant2=0;
    #6 reset=1; #1 reset=0;
    #4 admin=1; #1 admin=0;
    #2 participant1=1; participant2=1; #1 participant1=0; participant2=0;
    #3 participant1=1; #1 participant1=0;
    #5 reset=1; #1 reset=0;
    #1 admin=1; #1 admin=0; #4 participant1=1; #1 participant1=0;
    #2 participant2=1; #1 participant2=0;
    #3 reset=1; #1 reset=0;
    #1 participant1=1; #1 participant1=0; #2 participant2=1; #1 participant2=0;
    #2 admin=1; #1 admin=0; #9 reset=1; #1 reset=0;
    #2 admin=1; #1 admin=0; #1 participant2=1; #1 participant2=0;
    #2 reset=1; #1 reset=0;
    #1 admin=1; #1 admin=0; #1 participant1=1; #1 participant1=0; #1 reset=1; #1 reset=0;
    admin=1; #1 admin=0; #1 participant1=1; #1 participant1=0; #1 reset=1; #1 reset=0;

end
initial #105 $finish;
endmodule
