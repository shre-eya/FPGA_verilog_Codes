`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.02.2025 23:48:32
// Design Name: 
// Module Name: up4bit
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


module up4bit(
input clk,reset,
output reg [3:0] count
    );

initial begin
count = 1'b0000;
end
always@(posedge clk or posedge reset) begin 
if(reset)
count<=0;
else if ( count== 4'b1111)
 count<=0;

else 
 count<=count+1;
end 

endmodule
