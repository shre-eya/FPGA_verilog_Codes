`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.12.2024 08:23:33
// Design Name: 
// Module Name: tff
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


module tff(input clk,reset,t,
output reg q);
initial
begin
q=1;
end
always @(negedge clk or posedge reset)
begin
if(reset)
begin q=0;end
else
if(t)begin
q<=~q;end
end
endmodule

   
