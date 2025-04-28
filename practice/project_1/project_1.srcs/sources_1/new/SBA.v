`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2025 17:11:38
// Design Name: 
// Module Name: SBA
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


module SBA(
input [3:0] A, B,
input clk, shift, reset,
output [3:0]sum,
output carry_out
    );
wire serial_A,serial_B,serial_sum;
wire carry,carry_next;
piso p1 (.D(A),.clk(clk),.shift(shift),.reset(reset),.y(serial_A));
piso p2 (.D(B),.clk(clk),.shift(shift),.reset(reset),.y(serial_B));

dff d1(.clk(clk),.D(carry_next),.reset(reset),.Q(carry));


fa f1 ( .a(serial_A),.b(serial_B),.cin(carry),.sum(serial_sum),.cout(carry_next));

sipo s1 (.D(serial_sum),.clk(clk),.reset(reset),.Q(sum));

assign carry_out = carry_next;  // Change from carry to carry_next

endmodule
