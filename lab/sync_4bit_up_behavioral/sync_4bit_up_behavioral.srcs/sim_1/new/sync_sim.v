`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.12.2024 10:33:41
// Design Name: 
// Module Name: sync_sim
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


module sync_sim( );
reg clk,reset;
wire [3:0] count;
sync_4bit uut(.clk(clk),.reset(reset),.count(count));
initial clk=0;
always #5 clk=~clk;
initial begin 
reset=0;
#300;
$finish;
end 
endmodule
