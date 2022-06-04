`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2022 13:10:50
// Design Name: 
// Module Name: shift_and_add_multiplier
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


module shift_and_add_multiplier(inpA, inpB, clk, ctrl, ld, P, Q, M, PQ);
input [3:0] inpA, inpB;
input clk, ctrl, ld;
output reg [3:0] P, Q, M;
output [7:0] PQ;
wire V;
wire [3:0] D1, D2, D3, R, S, U;

assign D1[0] = ld?inpA[0]:Q[0];
assign D1[1] = ld?inpA[1]:Q[1];
assign D1[2] = ld?inpA[2]:Q[2];
assign D1[3] = ld?inpA[3]:Q[3];

assign D2[0]= ld?inpB[0]:M[0];
assign D2[1]= ld?inpB[1]:M[1];
assign D2[2]= ld?inpB[2]:M[2];
assign D2[3]= ld?inpB[3]:M[3];

assign D3[0] = ld?0:U[1];
assign D3[1] = ld?0:U[2];
assign D3[2] = ld?0:U[3];
assign D3[3] = ld?0:V;

always @(posedge clk)

begin
    Q[0] =D1[0];
    Q[1] =D1[1];
    Q[2] =D1[2];
    Q[3] =D1[3];
    
    M[0] = D2[0];
    M[1] = D2[1];
    M[2] = D2[2];
    M[3] = D2[3];
end

assign R[0] = M[0]&Q[0];
assign R[1] = M[1]&Q[0];
assign R[2] = M[2]&Q[0];
assign R[3] = M[3]&Q[0];

four_bit_adder fba(R, P, U, V);

always @(posedge clk)
begin
    if(ctrl)
        begin
            Q[0] = Q[1];
            Q[1] = Q[2];
            Q[2] = Q[3];
            Q[3] = U[0];
        end
    
    P[0] = D3[0];
    P[1] = D3[1];
    P[2] = D3[2];
    P[3] = D3[3];
end

assign PQ[0] = Q[0];
assign PQ[1] = Q[1];
assign PQ[2] = Q[2];
assign PQ[3] = Q[3];

assign PQ[4] = P[0];
assign PQ[5] = P[1];
assign PQ[6] = P[2];
assign PQ[7] = P[3];

endmodule

