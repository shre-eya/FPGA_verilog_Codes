`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.12.2024 08:23:13
// Design Name: 
// Module Name: async_mod9
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


module async_mod9(
input clk,
output [3:0]q);
wire reset=q[3]&~q[2]&~q[1]&q[0];
tff t1(clk,reset,1,q[0]);
tff t2(q[0],reset,1,q[1]);
tff t3(q[1],reset,1,q[2]);
tff t4(q[2],reset,1,q[3]);
endmodule

   
