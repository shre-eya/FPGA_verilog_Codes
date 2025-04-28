`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.02.2025 23:22:26
// Design Name: 
// Module Name: async4bit
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


module async4bit(
input clk,reset,
output [3:0]Q
    );
   wire T;
   assign T= 1;
T_ff t0(T,clk,reset,Q[0]);
T_ff t1(T,Q[0],reset,Q[1]);
T_ff t2(T,Q[1],reset,Q[2]);
T_ff t3(T,Q[2],reset,Q[3]);

endmodule
