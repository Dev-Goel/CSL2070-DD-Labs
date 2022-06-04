`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.01.2022 22:16:24
// Design Name: 
// Module Name: Test_CarrySelectAdder
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


module Test_CarrySelectAdder;

reg [31:0] A, B;
reg cin;
wire [31:0] S;
wire cout;
integer i, j;

CarrySelectAdder csa(A, B, cin, S, cout);

initial
    begin
        A = 0;
        B = 0;      
        cin = 0;
        for(i=0;i<16;i=i+1) 
            begin
                for(j=0;j<16;j=j+1) 
                    begin
                        A = i;
                        B = j;
                        #10;
                    end
            end
        cin = 1;
        for(i=0;i<16;i=i+1) 
            begin
                for(j=0;j<16;j=j+1) 
                    begin
                        A = i;
                        B = j;
                        #10;                        
                    end
            end
    end
endmodule
