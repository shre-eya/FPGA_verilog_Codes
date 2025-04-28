`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.03.2025 13:53:38
// Design Name: 
// Module Name: vm
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


module vm( clk, rst, min, chg, out);
input clk;
input rst;
input [1:0] min;
output reg [1:0] chg;
output reg out;
parameter s0 = 2'b00;
parameter s1 = 2'b01;
parameter s2 = 2'b10;
reg [1:0] pst, nxt;
always @(posedge clk) begin
if (rst) begin
pst = s0;
nxt = s0;
chg = 2'b00;
out = 1'b0;
end else begin
pst = nxt;
case (pst)
s0: if (min == 2'b00) begin
nxt = s0;
chg = 2'b00;
out = 1'b0;
end else if (min == 2'b01) begin
nxt = s1;
chg = 2'b00;
out = 1'b0;
end else if (min == 2'b10) begin
nxt = s2;
chg = 2'b00;
out = 1'b0;
end
s1: if (min == 2'b00) begin
nxt = s0;
chg = 2'b01;
out = 1'b0;
end else if (min == 2'b01) begin
nxt = s2;
chg = 2'b00;
out = 1'b0;
end else if (min == 2'b10) begin
nxt = s0;
chg = 2'b00;
out = 1'b1;
end
s2: if (min == 2'b00) begin
nxt = s0;
chg = 2'b10;
out = 1'b0;
end else if (min == 2'b01) begin
nxt = s0;
chg = 2'b00;
out = 1'b1;
end else if (min == 2'b10) begin
nxt = s0;
chg = 2'b10;
out = 1'b1;
end
endcase
end
end
endmodule
