`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.02.2025 22:50:19
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
wire [3:0] Q;
sync4bit uut(clk,reset,Q);
always #5 clk=~clk;
initial begin 
$monitor ("$Time=%0t|Q=%b",$time,Q);
clk =0;#5
reset = 1;#10
reset =0 ;#10
#150
$finish;
end 
endmodule

