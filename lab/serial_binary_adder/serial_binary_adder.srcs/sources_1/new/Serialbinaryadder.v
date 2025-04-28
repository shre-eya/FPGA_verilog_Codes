`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.02.2025 14:12:05
// Design Name: 
// Module Name: Serialbinaryadder
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
module Serialbinaryadder(
    input clk,
    input [3:0] A,  // 4-bit input A
    input [3:0] B,  // 4-bit input B
    output reg s,   // Sum output
    output reg c,   // Carry output
    output reg [1:0] st  // State register for debugging
);
    parameter A_state = 2'b00;
    parameter B_state = 2'b01;

    reg [1:0] i;  // Bit index (wire, so not shown in waveform)
    wire [1:0] x; // 2-bit wire formed by serial extraction of bits

    assign x = {A[i], B[i]};  // Extracting one bit at a time

    initial begin 
        st = A_state;
        s = 0;
        c = 0;
        i = 0;
    end 

    always @(posedge clk) begin 
        case(st)
            A_state: begin 
                if (x == 2'b00) begin
                    s <= 0; c <= 0; st <= A_state;
                end
                else if (x == 2'b01 || x == 2'b10) begin
                    s <= 1; c <= 0; st <= A_state;
                end
                else if (x == 2'b11) begin
                    s <= 0; c <= 1; st <= B_state;
                end
            end 
            B_state: begin 
                if (x == 2'b00) begin
                    s <= 1; c <= 0; st <= A_state;
                end
                else if (x == 2'b01 || x == 2'b10) begin
                    s <= 0; c <= 1; st <= B_state;
                end
                else if (x == 2'b11) begin
                    s <= 1; c <= 1; st <= B_state;
                end
            end
        endcase

        if (i < 3)
            i <= i + 1;  // Move to next bit in A and B
    end
endmodule


