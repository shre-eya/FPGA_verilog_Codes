`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2025 22:46:37
// Design Name: 
// Module Name: modifeid_booth
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


module modifeid_booth(
input [7:0]M,Q,
output reg [15:0]AQ
    );
reg [7:0]A;
reg [7:0]Qb;
reg q;
integer n;
always@(*) begin 
Qb=Q;
A=8'b00000000;
n=4;q=1'b0;
repeat(n) begin 
case({Qb[1],Qb[0],q}) 
3'b001:A=A+M;
3'b010:A=A+M;
3'b011:A=A+2*M;
3'b100:A=A-2*M;
3'b101:A=A-M;
3'b110:A=A-M;
default: A=A ;
endcase
{A, Qb, q} = {A[7], A, Qb, q} >>> 1;
{A, Qb, q} = {A[7], A, Qb, q} >>> 1;
end 
AQ={A,Qb};
end 
endmodule

module tb();
reg [7:0]M,Q;
wire [15:0]AQ;
modifeid_booth uut(M,Q,AQ);
initial begin 
M=8'b00001010;
Q=8'b00001100;
#10
$finish;
end
initial begin 
$monitor("$Time = %0t|M = %b(%0d)|Q%b(%0d)|AQ =%b(%0d)",$time,M,M,Q,Q,AQ,AQ);
end 
endmodule