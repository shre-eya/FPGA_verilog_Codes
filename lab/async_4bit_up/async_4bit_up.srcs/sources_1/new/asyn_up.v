`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.12.2024 14:47:39
// Design Name: 
// Module Name: asyn_up
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


module asyn_up(

    input clk,
    input reset,
    output [3:0] Q
    
    );

    wire [3:0] T_in;

    assign T_in[0] = 1'b1;
    assign T_in[1] = Q[0];
    assign T_in[2] = Q[0] & Q[1];
    assign T_in[3] = Q[0] & Q[1] & Q[2];

    T_ff FF0 (T_in[0], clk, reset,Q[0]);
    T_ff FF1 (T_in[1], clk, reset, Q[1]);
    T_ff FF2 (T_in[2], clk, reset, Q[2]);
    T_ff FF3 (T_in[3], clk, reset, Q[3]);

endmodule

  
