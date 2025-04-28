`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2025 20:04:05
// Design Name: 
// Module Name: seq_generator_tb
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

module seq_generator_tb();
reg clk,reset;
wire [3:0]Q;
seq_generator uut(.clk(clk), .reset(reset),.Q(Q));
always #5 clk=~clk;
initial begin
clk=0;reset=1;#10;
reset=0;#150;
$finish;
end
endmodule
