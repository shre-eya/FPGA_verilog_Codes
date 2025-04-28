`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.01.2025 18:30:36
// Design Name: 
// Module Name: usr
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


module usr(
input wire clk,
input wire reset,
input wire [3:0]dat,
input wire left_in,
input wire right_in,
input [1:0]op,
output reg[3:0]q );
always@(posedge clk or posedge reset) begin 
if(reset)begin 
q<=4'b0000;
end else begin 
case(op)
2'b00:q<=q;
2'b01:q<={q[2:0],left_in};
2'b10:q<={right_in,q[3:1]};
2'b11:q<=dat;
endcase
end 
end 
endmodule 

