`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2025 16:54:51
// Design Name: 
// Module Name: dff
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

module dff(
input clk,D,reset,
output reg Q
    );
    always @(negedge clk)
    begin
    if(reset)
    Q<=0;
    else
    begin
    if(D)
    Q<=1;
    else
    Q<=0;
    end
    end
endmodule