`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.02.2025 13:57:20
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
output reg Q
    );
     initial
    begin
    Q=0;
    end

always@(negedge clk or negedge clr)
begin 
if (!clr)
Q<=0;
else if (T)
Q<=~Q;
end 
endmodule
