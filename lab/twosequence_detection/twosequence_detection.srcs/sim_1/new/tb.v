`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.01.2025 16:37:07
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
seq uut (clk,x,z);
always #5 clk=~clk;
initial begin 

clk=0; #5
    x = 0;#10  // Start with 0
    x = 0;#10  // Sequence begins: 00
    x = 1;#10  // Sequence: 001
    x = 0;#10  // Sequence: 0010 (first match)
    x = 0;#10  // Overlapping part starts: 000
    x = 0;#10  // Sequence: 0001 (second match)
    x = 1;#10  // Another potential sequence continuation
    x = 0;#10  // Restart potential sequence
    x = 1;#10 // Another pattern check for overlapping
    x = 0;#10 // Continue checking overlapping

$finish;
end
endmodule

