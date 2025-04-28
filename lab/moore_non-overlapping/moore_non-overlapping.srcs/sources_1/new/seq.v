`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.01.2025 15:33:57
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
parameter A =3'b000;// is 3 bit correct ? 
parameter B =3'b001;
parameter C =3'b010;
parameter D =3'b011;   
parameter E =3'b100;
reg [2:0] st;//why 
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
st<=x==1?B:E;
z<=(x == 0)?1:0;
end 
E: begin 
st<=x==1?B:A;
z<=0;
end
endcase       
end 
                                                                                                         
endmodule

