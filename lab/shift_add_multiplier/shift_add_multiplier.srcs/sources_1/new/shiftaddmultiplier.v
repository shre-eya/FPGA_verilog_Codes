`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.02.2025 22:38:45
// Design Name: 
// Module Name: shiftaddmultiplier
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


module shiftaddmultiplier(
input [3:0]M,
input [3:0]Q,
output reg[7:0]AQ );
reg C;
reg [3:0]A;
reg[3:0] tempQ;
integer i;
always@(*)begin 
A=4'b0000;
C=1'b0;
tempQ=Q;
AQ=8'b00000000;
for(i=0;i<4;i=i+1) begin 
if(tempQ[0]==1)begin 
A=A+M;
end 
{C,A,tempQ}={A[3],A,tempQ}>>1;
end
AQ={A,tempQ};
end 
endmodule 

module tb();
reg [3:0]M;
reg [3:0]Q;
wire [7:0]AQ;
shiftaddmultiplier uut (.M(M),.Q(Q),.AQ(AQ));
initial begin 
$display("TIme|M|Q|AQ(product)");
$monitor("%4t|%4b|%4b|%8b(%3d)",
$time, M,Q,AQ,AQ);
M= 4'b0011;Q=4'b0010; #10;
M=4'b0101; Q=4'b0011;#10;


$finish;
end  

endmodule
