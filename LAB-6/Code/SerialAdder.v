`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.03.2022 20:22:30
// Design Name: 
// Module Name: SerialAdder
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


module SerialAdder(a, b, cout, sum, clk, reset);

input [7:0]a, b;
input clk, reset;
output reg cout;
output reg [8:0]sum;
reg [7:0]an, bn;
reg cin;

always@(posedge reset)
begin
    if(reset == 1)
        begin
            cin = 0;
            an[7:0] = a[7:0];
            bn[7:0] = b[7:0];
        end
end

always@(posedge clk)
    begin
        sum[7] = an[0] ^ bn[0] ^ cin;
        sum = sum >> 1;
        cout = (an[0] & bn[0]) | (cin & bn[0]) | (an[0] & cin);
        an = an>>1;
        bn = bn>>1;
        cin = cout;
    end
    
endmodule

