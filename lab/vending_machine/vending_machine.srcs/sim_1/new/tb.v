`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.03.2025 13:54:43
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
reg clk, rst;
reg [1:0] min;
wire out;
wire [1:0] chg;
vm uut( .clk(clk), .rst(rst), .min(min), .chg(chg));
always #5 clk=~clk;

initial begin
rst = 1;
clk = 0;
min = 0;
#10;
rst = 0;
#10;
min = 1;
#10;
min=0;
#10;
min = 1;
#10;
#50
$finish;
end
endmodule

