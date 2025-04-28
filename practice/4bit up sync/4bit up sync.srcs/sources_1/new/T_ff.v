`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.02.2025 22:49:08
// Design Name: 
// Module Name: T_ff
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

module T_ff(
input T,clk,clr,
output reg Q);
initial 

always@(posedge clk or posedge clr)  begin
if (clr) 
Q<=0;

else if (T) 
Q<=~Q;
end 
endmodule
