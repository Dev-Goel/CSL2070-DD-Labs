`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2022 14:24:09
// Design Name: 
// Module Name: buzzer
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

module buzzer(inp_a, inp_b, control, out_a, out_b);

input inp_a, inp_b, control;
output out_a, out_b;
wire p, q;

assign p = inp_a && control;
assign q = inp_b && control;

bufif0(out_a, p, q);
bufif0(out_b, q, p);

endmodule
