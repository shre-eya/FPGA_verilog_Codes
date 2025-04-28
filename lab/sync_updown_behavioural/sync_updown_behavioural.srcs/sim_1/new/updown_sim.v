`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.12.2024 12:14:20
// Design Name: 
// Module Name: updown_sim
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


module updown_sim();
reg clk,reset,m;
wire [3:0] count;
sync_updown_beh uut(.clk(clk),.reset(reset),.m(m),.count(count));
initial clk=0;
always #5 clk=~clk;
initial begin
reset =0;
m=1;
#300
reset=1;
#100
reset=0;
m=0;
#300;
end
endmodule
