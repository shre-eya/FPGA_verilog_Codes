`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.12.2024 15:14:30
// Design Name: 
// Module Name: tesetbench
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


module tesetbench();
reg clk,reset;
wire [3:0] count;
mod9 uut(.clk(clk),.reset(reset),.count(count));
initial clk=0;
always #5 clk=~clk;
initial begin 
reset=0;
#300;
$finish;
end 
endmodule
