`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.12.2024 09:49:43
// Design Name: 
// Module Name: syn_up_sim
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


module syn_up_sim();
reg clk,reset;
wire [3:0]Q;
sync_up uut(.clk(clk),.reset(reset),.Q(Q));
always #5 clk=~clk;
initial begin 
clk=0;
#10 reset=0;
#15 reset=1;
#160;
$finish;
end 
endmodule
