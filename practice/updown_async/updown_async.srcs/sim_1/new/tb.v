`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.02.2025 16:06:18
// Design Name: 
// Module Name: tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb();
reg clk,reset,m;
wire [3:0]Q;
updown_async uut(clk,reset,m,Q);
initial clk=0;
always #5 clk=~clk;
initial begin
    reset = 0;  // Assert reset initially
    #10 reset = 1; // Release reset after enough time
    m = 1;  // Start with up-counting
    #300
    reset = 0; // Reset again
    #10 reset = 1;
    m = 0; // Change to down-counting
    #300;
end


