`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.12.2024 15:08:59
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
output reg[3:0]count
    );
    initial
    count=4'b0000;
    always@(posedge clk or posedge reset)
    begin 
    if(reset||count==8)
    count<=0;
    else 
    count<=count+1;
    end 
    
endmodule
