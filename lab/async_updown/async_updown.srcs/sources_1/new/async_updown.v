`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.12.2024 15:00:01
// Design Name: 
// Module Name: async_updown
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


module async_updown(
input clk,reset,m,
output [3:0] Q
    );
  wire T_in =1'b1;
  wire [2:0] T  ;

  assign T[0]=(~m&~Q[0])|(m&Q[0]);
  assign T[1]=(~m&~Q[1])|(m&Q[1]); 
  assign T[2]=(~m&~Q[2])|(m&Q[2]); 

  T_ff ff0(T_in,clk,reset,Q[0]);
  T_ff ff1(T_in,T[0],reset,Q[1]);
  T_ff ff2(T_in,T[1],reset,Q[2]);
  T_ff ff3(T_in,T[2],reset,Q[3]);
  
  
  
endmodule
