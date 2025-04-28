`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.01.2025 18:52:50
// Design Name: 
// Module Name: usr
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



module usr(
input wire clk,
input wire [3:0]dat, 
input wire reset,
input wire [1:0] op,
input wire left_in,
input wire right_in,
output wire [3:0]q
    );
wire [3:0] d_in;


mux4x1 mux0 (
        .in({dat[0], q[1], right_in, q[0]}),
        .sel(op),
        .out(d_in[0])
    );
mux4x1 mux1 (
        .in({dat[1], q[2], q[0], q[1]}),
        .sel(op),
        .out(d_in[1])

    );
 mux4x1 mux2 (
        .in({dat[2], q[3], q[1], q[2]}),
        .sel(op),
        .out(d_in[2])
    );
mux4x1 mux3 (
        .in({dat[3], left_in, q[2], q[3]}),
        .sel(op),
        .out(d_in[3])
    );
 // D flip-flops to store values
    d_ff ff0 (.clk(clk), .clr(reset), .d(d_in[0]), .q(q[0]));
    d_ff ff1 (.clk(clk), .clr(reset), .d(d_in[1]), .q(q[1]));
    d_ff ff2 (.clk(clk), .clr(reset), .d(d_in[2]), .q(q[2]));
    d_ff ff3 (.clk(clk), .clr(reset), .d(d_in[3]), .q(q[3]));

endmodule


