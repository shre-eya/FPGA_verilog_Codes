`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.02.2025 00:01:23
// Design Name: 
// Module Name: tb
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


module tb();
reg clk,reset;
wire [3:0] count ; 
up4bit uut ( clk,reset,count);
always #5 clk=~clk;
initial begin 
clk=0;#5
reset=1;#10
reset=0;#10
#150
$finish ;
end 
endmodule
