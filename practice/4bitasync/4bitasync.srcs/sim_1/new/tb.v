`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.02.2025 23:25:04
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
wire [3:0]Q;
async4bit uut ( .clk(clk),.reset(reset),.Q(Q));
always #5 clk = ~clk;
initial begin 
clk=0;
#10 reset=0;
#15 reset=1;
#160
$finish;
end
endmodule
