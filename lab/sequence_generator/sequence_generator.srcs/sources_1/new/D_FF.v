`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2025 20:02:27
// Design Name: 
// Module Name: D_FF
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


module D_FF(
input clk,D,preset,reset,
output reg Q
    );
    always @(negedge clk)
    begin
    if(reset)
    Q<=0;
    else if(preset)
    Q<=1;
    else
    begin
    if(D)
    Q<=1;
    else
    Q<=0;
    end
    end
endmodule 
   
