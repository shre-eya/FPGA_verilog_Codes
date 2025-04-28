`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2025 11:13:27
// Design Name: 
// Module Name: tlc
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


module tlc(
    input clk, rst,
    output reg [1:0] rl_1, rl_2
);
    parameter s0 = 2'b00, s1 = 2'b01, s2 = 2'b10, s3 = 2'b11;
    reg [1:0] timer;
    reg [1:0] nxt_st;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            rl_1   <= 2'b11;
            rl_2   <= 2'b11;
            nxt_st <= s0;
            timer  <= 0;
        end else begin
            case (nxt_st)
                s0: begin 
                    rl_1 <= 2'b00; // Green
                    rl_2 <= 2'b10; // Red
                    if (timer == 3) begin 
                        timer  <= 0;
                        nxt_st <= s1;
                    end else begin
                        timer <= timer + 1;
                    end
                end
                s1: begin 
                    rl_1 <= 2'b01; // Yellow
                    rl_2 <= 2'b10; // Red
                    if (timer == 1) begin 
                        timer  <= 0;
                        nxt_st <= s2;
                    end else begin
                        timer <= timer + 1;
                    end
                end
                s2: begin 
                    rl_1 <= 2'b10; // Red
                    rl_2 <= 2'b00; // Green
                    if (timer == 3) begin 
                        timer  <= 0;
                        nxt_st <= s3;
                    end else begin
                        timer <= timer + 1;
                    end
                end
                s3: begin 
                    rl_1 <= 2'b10; // Red
                    rl_2 <= 2'b01; // Yellow
                    if (timer == 1) begin 
                        timer  <= 0;
                        nxt_st <= s0;
                    end else begin
                        timer <= timer + 1;
                    end
                end 
            endcase
        end
    end
endmodule


