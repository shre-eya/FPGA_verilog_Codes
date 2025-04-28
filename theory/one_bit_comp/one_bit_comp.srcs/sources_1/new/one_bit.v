`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.12.2024 16:15:50
// Design Name: 
// Module Name: one_bit
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

module one_bit(
    input A,B,
    output E,G,L
    );
    wire w1,w2;
    xnor(E,A,B);
    not(w1,A);
    not(w2,B);
    and(G,A,w2);
    and(L,w1,B);
endmodule