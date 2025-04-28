`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.12.2024 15:23:00
// Design Name: 
// Module Name: asyn_tb
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



module async_tb();
reg clk,reset,m;
wire [3:0] Q;
async_updown uut(.clk(clk),.reset(reset),.m(m),.Q(Q));
initial clk=0;
always #5 clk=~clk;
initial begin
reset=1;
m=1; 
#300
reset=0;
#100
reset=1;
m=0;
#300;
end
endmodule
   