`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.02.2025 23:23:22
// Design Name: 
// Module Name: register_piso
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


module register_piso (
    input clk, reset, shift,
    input [3:0] D,  // Parallel Input
    output y        // Serial Output
);
    wire [3:0] Q;
    wire [2:0] x;

    D_FF d1 (clk, D[3], reset, Q[3]);
    mux m1 (D[2], Q[3], shift, x[2]);
    D_FF d2 (clk, x[2], reset, Q[2]);
    mux m2 (D[1], Q[2], shift, x[1]);
    D_FF d3 (clk, x[1], reset, Q[1]);
    mux m3 (D[0], Q[1], shift, x[0]);
    D_FF d4 (clk, x[0], reset, Q[0]);

    assign y = Q[0];  // Serial Output
endmodule
