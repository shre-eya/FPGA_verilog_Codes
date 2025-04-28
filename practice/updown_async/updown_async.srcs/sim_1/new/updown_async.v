`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.02.2025 13:56:15
// Design Name: 
// Module Name: updown_async
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


module updown_async(
input clk,reset,m,
output  [3:0]Q
    );
wire [3:0]T;
assign T[0] = 1'b1;
assign T[1] = (m&Q[0])|(~m&~Q[0]);
assign T[2] = (m&Q[1])|(~m&~Q[1]);
assign T[3] = (m&Q[2])|(~m&~Q[2]);

T_ff t0(T[0],clk,reset,Q[0]);
T_ff t1(T[0],T[1],reset,Q[1]);
T_ff t2(T[0],T[2],reset,Q[2]);
T_ff t3(T[0],T[3],reset,Q[3]);
endmodule
