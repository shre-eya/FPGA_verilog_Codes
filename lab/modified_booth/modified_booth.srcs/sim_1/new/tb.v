`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2025 22:53:33
// Design Name: 
// Module Name: tb
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






module array_multiplier(
input [3:0] A,B,
output [7:0] z);
 wire [3:0] p0, p1, p2, p3;
  wire [10:0] c;
  wire [5:0] s;
  
  genvar g;
  generate
    for(g = 0; g < 4; g = g + 1) begin : partial_products
      // p0: first partial product row
      and a0 (p0[g], A[g], B[0]);
      // p1: second partial product row
      and a1 (p1[g], A[g], B[1]);
      // p2: third partial product row
      and a2 (p2[g], A[g], B[2]);
      // p3: fourth partial product row
      and a3 (p3[g], A[g], B[3]);
    end
  endgenerate

  assign z[0] = p0[0];

  //row 0
  ha h0(p0[1], p1[0], z[1], c[0]);
  ha h1(p1[1], p2[0], s[0], c[1]);
  ha h2(p2[1], p3[0], s[1], c[2]);
  
  //row1
  fa f0(p0[2], c[0], s[0], z[2], c[3]);
  fa f1(p1[2], c[1], s[1], s[2], c[4]);
  fa f2(p2[2], c[2], p3[1], s[3], c[5]);
  
  //row2
  fa f3(p0[3], c[3], s[2], z[3], c[6]);
  fa f4(p1[3], c[4], s[3], s[4], c[7]);
  fa f5(p2[3], c[5], p3[2], s[5], c[8]);
  
  //row3
  ha h3(c[6], s[4], z[4], c[9]);
  fa f6(c[9], c[7], s[5], z[5], c[10]);
  fa f7(c[10], c[8], p3[3], z[6], z[7]);
 
endmodule

module tb();
reg [3:0] A,B;
wire [7:0] z;
array_multiplier uut (.A(A),.B(B),.z(z));
initial begin 
$monitor("Time=%t|A=%b(%d)|B=%b(%d)|P=%b(%d)"$time,A,A,B,B,P,P);
A=1;B=0;#10;
A=7;B=5;#10;
A=8;B=9;
end 
endmodule  




