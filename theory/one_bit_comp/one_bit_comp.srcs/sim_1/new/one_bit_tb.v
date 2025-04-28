`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.12.2024 16:20:05
// Design Name: 
// Module Name: one_bit_tb
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

module one_bit_tb();
reg A,B;
wire E,G,L;
one_bit uut(A,B,E,G,L);
initial begin
A=0;B=0;#10
A=0;B=1;#10
A=1;B=0;#10
A=1;B=1;#10
$finish;
end
endmodule
