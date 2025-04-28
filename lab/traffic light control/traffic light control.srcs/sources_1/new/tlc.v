`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2025 10:17:09
// Design Name: 
// Module Name: tlc
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


module tlc(
input clk,rst,y,g,
output reg [1:0]rl_1,rl_2
    );
parameter s0=2'b00,s1=2'b01,s2=2'b10,s3=2'b11;
reg[1:0] st,nxt_st;
always@ (posedge clk or posedge rst)begin 
if(rst) 
st<=s0; 
else 
st<=nxt_st;
end 
always@(*) begin 
case(st)
s0: nxt_st= y?s1:s0;
s1: nxt_st= (!y)?s2:s1;
s2: nxt_st= g?s3:s2;
s3: nxt_st= (!g)?s0:s3;
default : nxt_st= s0;
endcase
end
always@(*)begin 
case(st) 
s0: begin 
rl_1=2'b00;
rl_2=2'b10;
end 
s1: begin 
rl_1=2'b01;
rl_2=2'b10;
end
s2: begin 
rl_1=2'b10;
rl_2=2'b00;
end
s3: begin 
rl_1=2'b10;
rl_2=2'b01;
end
default: begin 
rl_1=2'b00;
rl_2=2'b10;
end
endcase 
end 

endmodule
