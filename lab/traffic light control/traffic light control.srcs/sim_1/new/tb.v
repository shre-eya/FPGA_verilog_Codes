`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2025 10:35:43
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


module tb( );
reg clk;
reg rst;
reg y;
reg g;
wire [1:0] rl_1;
wire [1:0] rl_2;
 tlc uut ( .clk(clk),.rst(rst),.y(y),.g(g),.rl_1(rl_1),.rl_2(rl_2));
  always #5 clk=~clk;
 initial begin 
clk = 0 ;
rst=1;
y = 0 ;
g=0 ;
#10 rst=0 ;
#10 y=1 ;
 #10 y=0 ;
 #10 g=1;
 #10 g=0 ;
 #10 $finish;
 end 
 initial begin 
 $monitor ("Time=%0t| State = %b| rl_1 =%b| rl_2 =%b| y =%b| g =%b|",$time,uut.st,rl_1,rl_2,y,g);
 end 
endmodule
