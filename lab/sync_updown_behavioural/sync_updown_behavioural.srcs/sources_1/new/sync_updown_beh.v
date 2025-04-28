`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.12.2024 11:01:35
// Design Name: 
// Module Name: sync_updown_beh
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


module sync_updown_beh(
input clk,reset,m,
output reg [3:0]count
    );
    reg [3:0]count=0;
    always@(posedge clk or posedge reset)
    begin 
    if(reset) count<=0;
    else if(m)
    if(count==15)
    count<=0;
    else count<=count+1;
    else 
    if(count==0)
    count<=15;
    else 
    count<=count-1;
   end  
endmodule
