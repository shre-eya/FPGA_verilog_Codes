`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.01.2025 15:23:58
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
reg clk,x;
wire z;
seq uut(clk,x,z);

always #5 clk=~clk;
initial begin 

clk=0; #5
x = 1;#10
x = 0;#10
x = 1;#10
x = 0;#10
x = 1;#10
x = 0;#10
x = 1;#10
x = 1;#10
x = 0;#10
x = 1;#10
x = 0;#10
$finish;
end
endmodule
