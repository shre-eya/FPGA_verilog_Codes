`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2025 17:02:19
// Design Name: 
// Module Name: piso
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


module piso(
input [3:0]D,
input clk,
input shift,reset,
output wire y);
 wire [2:0] x ;
 wire [3:0] Q;
dff d1 (clk, D[3], reset, Q[3]);
mux m1(shift,D[2],Q[3],x[2]);
dff d2 (clk, x[2], reset, Q[2]);
mux m2(shift,D[1],Q[2],x[1]);
dff d3 (clk, x[1], reset, Q[1]);
mux m3(shift,D[0],Q[1],x[0]);
dff d4 (clk, x[0], reset, Q[0]);
assign y = Q[0];
endmodule
