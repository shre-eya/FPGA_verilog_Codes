`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2025 20:01:21
// Design Name: 
// Module Name: seq_generator
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


module seq_generator(
input clk,reset,
output [3:0]Q
    );
    wire F,R;
    assign R=(~Q[0]&~Q[1]|~Q[2]&~Q[3]|Q[0]&Q[1]&~Q[3]|Q[1]&Q[2]&Q[3]|Q[0]&~Q[1]&~Q[2]);
    assign F=~Q[0]|~Q[3];
    D_FF d1(clk,F,R,reset,Q[0]);
    D_FF d2(clk,Q[0],0,R|reset,Q[1]);
    D_FF d3(clk,Q[1],R,reset,Q[2]);
    D_FF d4(clk,Q[2],R,reset,Q[3]);
endmodule

   