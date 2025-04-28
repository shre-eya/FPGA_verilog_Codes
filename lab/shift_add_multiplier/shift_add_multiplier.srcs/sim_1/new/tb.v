`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.02.2025 22:46:21
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
