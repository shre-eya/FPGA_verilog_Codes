`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.12.2024 21:58:57
// Design Name: 
// Module Name: sync_up
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


module sync_up(
input clk,reset,
output [3:0]Q
);
wire T;
assign T=1;
T_ff ff1(T,clk,reset,Q[0]);
T_ff ff2(T,Q[0],reset,Q[1]);
T_ff ff3(T,Q[1],reset,Q[2]);
T_ff ff4(T,Q[2],reset,Q[3]);

endmodule
