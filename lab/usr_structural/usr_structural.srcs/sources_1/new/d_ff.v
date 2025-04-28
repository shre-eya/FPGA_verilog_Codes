`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.01.2025 18:53:12
// Design Name: 
// Module Name: d_ff
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

module d_ff(
input clk,clr,d,
output reg q
    );
always@(posedge clk) begin 
if(clr)
q<=0; 
else 
begin 
if (d)
q<=1;
else 
q<=0;
end 
end    
endmodule


