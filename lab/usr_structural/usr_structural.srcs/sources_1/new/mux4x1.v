`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.01.2025 18:58:22
// Design Name: 
// Module Name: mux4x1
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


module mux4x1(
input[3:0] in, [1:0] sel,
output out
    );
assign out = (sel ==2'b00) ? in[0]:(sel ==2'b01) ? in[1]:(sel ==2'b10) ? in[2]:in[3];
endmodule

