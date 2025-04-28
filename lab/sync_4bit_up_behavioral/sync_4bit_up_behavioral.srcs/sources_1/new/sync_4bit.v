`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.12.2024 10:29:04
// Design Name: 
// Module Name: sync_4bit
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


module sync_4bit(
input clk,reset,
output  reg [3:0]count
    );
reg [3:0] count=4'b0000; 
always@(posedge clk or posedge reset)
begin 
if(reset || count==15) 
count<=0;
else 
count<=count+1;
end 
endmodule
