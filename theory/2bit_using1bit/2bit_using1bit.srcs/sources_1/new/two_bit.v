`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.12.2024 16:30:08
// Design Name: 
// Module Name: two_bit
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
module two_bit(
input A1,A0,B1,B0,
output E,G,L
);
wire w1,w2,E1,G1,L1,E0,G0,L0;
one_bit comp1(A1,B1,E1,G1,L1);
one_bit comp2(A0,B0,E0,G0,L0);
and(E,E1,E0);
and(w1,E1,G0);
or(G,G1,w1);
and(w2,E1,L0);
or(L,L1,w2);
endmodule
