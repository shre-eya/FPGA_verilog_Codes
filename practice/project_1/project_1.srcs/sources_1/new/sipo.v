`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2025 16:57:28
// Design Name: 
// Module Name: sipo
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


module sipo(
input D,clk,reset,
output [3:0]Q
    );
dff d1(clk, D, reset, Q[0]);
    dff d2(clk, Q[0], reset, Q[1]);
    dff d3(clk, Q[1], reset, Q[2]);
    dff d4(clk, Q[2], reset, Q[3]);
endmodule
