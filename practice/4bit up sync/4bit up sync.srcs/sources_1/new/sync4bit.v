`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.02.2025 22:49:50
// Design Name: 
// Module Name: sync4bit
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


module sync4bit(
input clk,reset,
output [3:0] Q
    );
wire [3:0]T_in;
assign T_in[0] = 1'b1;
assign T_in[1] = Q[0];
assign T_in[2] = Q[1]&Q[0];
assign T_in[3] = Q[2]&Q[1]&Q[0];
T_ff t0 (T_in [0],clk,reset,Q[0]);
T_ff t1 (T_in [1],clk,reset,Q[1]);
T_ff t2 (T_in [2],clk,reset,Q[2]);
T_ff t3 (T_in [3],clk,reset,Q[3]);
endmodule

