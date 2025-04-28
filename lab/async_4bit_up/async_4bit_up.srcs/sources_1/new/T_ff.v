`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.12.2024 14:48:26
// Design Name: 
// Module Name: T_ff
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


module T_ff(
input T,clk,clr,
output reg Q
);

always @(negedge clk or negedge clr) begin
        if (!clr) begin
            Q <= 0;
        end
        else if (T) begin
            Q <= ~Q;
        end
    end

endmodule
