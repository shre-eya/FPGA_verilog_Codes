`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.12.2024 14:46:02
// Design Name: 
// Module Name: mod9
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


module mod9(
input clk,reset,
output [3:0] Q
    );
wire [3:0] T_in;
assign T_in[0]=~Q[3];
assign T_in[1]=Q[0];
assign T_in[2]=Q[0]&Q[1];
assign T_in[3]=(Q[3])|(Q[2]&Q[1]&Q[0]);

T_ff ff0(T_in[0],clk,reset,Q[0]);
T_ff ff1(T_in[1],clk,reset,Q[1]);
T_ff ff2(T_in[2],clk,reset,Q[2]);
T_ff ff3(T_in[3],clk,reset,Q[3]);


endmodule
