`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.03.2022 16:55:08
// Design Name: 
// Module Name: electronic_voting_machine
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


module electronic_voting_machine(admin, participant1, participant2, reset, led1, led2, led, invalid, X1, Y1, Z1, X2, Y2, Z2);

input admin, participant1, participant2, reset;
output reg led1=0, led2=0, led=0, invalid=0;

reg ctrl = 0;
reg [7:0] CA=0,CB=0;
output [3:0] X1, Y1, Z1, X2, Y2, Z2;
 
always @(posedge admin)

begin
    ctrl = 1;
    invalid = 0;
end

always @(posedge participant1 or posedge participant2)

begin

    //Participant 2 Votes First and Ctrl is high
    if(participant2 & !participant1 & ctrl)
    begin
        led2 = 1;
        ctrl = 0;
        led = 1;
        invalid = 0;
        CB = CB+1;
    end
    
    // Participant 1 Votes First and Ctrl is high
    else if(participant1 & !participant2 & ctrl)
    begin
        led1 = 1;
        ctrl = 0;
        led = 1;
        invalid = 0;
        CA = CA+1;
    end
    
    // Invalid State
    else if((participant1 & participant2 & ctrl) | (!ctrl))
        invalid = 1;      
end


// For BCD Display 
assign Z1 = CA%(4'd10);
assign Z2 = CB%(4'd10);

assign Y1 = (CA%7'd100)/(4'd10);
assign Y2 = (CB%7'd100)/(4'd10);

assign X1 = CA/(7'd100);
assign X2 = CB/(7'd100);

// Condition is reset is high
always @(posedge reset)
begin
    led1 = 0;
    led2 = 0;
    led = 0;
    invalid = 0;
    ctrl = 0;
end

endmodule
