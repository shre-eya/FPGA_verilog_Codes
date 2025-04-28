`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.12.2024 15:25:10
// Design Name: 
// Module Name: sync_tb
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


module sync_tb();
reg clk,reset,m;
wire [3:0] Q;
sync_updown uut(.clk(clk),.reset(reset),.m(m),.Q(Q));
initial clk=0;
always #5 clk=~clk;
initial begin
reset=0;
m=1; 
#300
reset=1;
#100
reset=0;
m=0;
#300;
end
endmodule
   
