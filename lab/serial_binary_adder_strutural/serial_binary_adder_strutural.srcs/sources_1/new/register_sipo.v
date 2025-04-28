`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.02.2025 22:55:12
// Design Name: 
// Module Name: register_sipo
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


module register_sipo (
    input clk, reset,
    input D,         // Serial Input
    output [3:0] Q   // Parallel Output
);
    D_FF d1(clk, D, reset, Q[0]);
    D_FF d2(clk, Q[0], reset, Q[1]);
    D_FF d3(clk, Q[1], reset, Q[2]);
    D_FF d4(clk, Q[2], reset, Q[3]);
endmodule

