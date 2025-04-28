`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.12.2024 10:45:02
// Design Name: 
// Module Name: sync_updown
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


module sync_updown(
input clk,reset,m,
output [3:0] Q
    );
  wire [3:0] T  ;
  assign T[0]=1'b1;
  assign T[3]=(~m&~Q[2]&~Q[1]&~Q[0])|(m&Q[2]&Q[1]&Q[0]);
  assign T[2]=(~m&~Q[1]&~Q[0])|(m&Q[1]&Q[0]); 
  assign T[1]=(~m&~Q[0])|(m&~Q[0]); 
  T_ff ff0(T[0],clk,reset,Q[0]);
  T_ff ff1(T[1],clk,reset,Q[1]);
  T_ff ff2(T[2],clk,reset,Q[2]);
  T_ff ff3(T[3],clk,reset,Q[3]);
  
  
endmodule
