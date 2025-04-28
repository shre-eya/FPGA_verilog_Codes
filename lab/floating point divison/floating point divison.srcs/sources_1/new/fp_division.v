`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2025 12:51:41
// Design Name: 
// Module Name: fp_division
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


module fp_division(
input [31:0] a,b,
output reg [31:0]r
    );
reg s,s1,s2;
reg[7:0] e,e1,e2;
reg[23:0] m1,m2;
reg[47:0]m;
always@(*) begin 
s1 = a[31];
s2 = b[31];
s=s1^s2;
e1=a[30:23];
e2=b[30:23];
m1={1'b1,a[22:0]};
m2={1'b1,b[22:0]};
if(b==32'b0)begin 
r={s,8'hFF,23'b0};
end 
else if (a==32'b0) begin
r=32'b0;
end 
else begin 
e=e1-e2+127;
m=(m1<<23)/m2;

if (m[23]) begin 
m=m<<1;
e=e-1;
end 

if (e>=255) begin 
r={s,8'hff,23'b0};
end 
else if (e==0) begin 
r=32'b0;
end else begin 
r = {s,e[7:0],m[22:0]};
end 
end 
end 
endmodule 