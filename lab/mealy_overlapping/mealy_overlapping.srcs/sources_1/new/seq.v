`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.01.2025 15:04:15
// Design Name: 
// Module Name: seq
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

module seq(
input clk,x,output reg  z
    );
parameter A =2'b00;
parameter B =2'b01;
parameter C =2'b10;
parameter D =2'b11;   
reg [1:0] st;
initial  begin z=0;st=A;
end 
always@( posedge clk ) begin 
case(st)
A: begin 
st<=x==1?B:A;
z<=0;
end 
B: begin 
st<=x==1?B:C;
z<=0;
end 
C: begin 
st<=x==1?D:A;
z<=0;
end        
D: begin 
st<=x==1?B:C;
if(x==0)
z<=1;
else
z<=0;
end
endcase       
end 
                                                                                                         
endmodule


