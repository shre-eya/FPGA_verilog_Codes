`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.02.2025 23:26:56
// Design Name: 
// Module Name: tesetbench
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


module tesetbench();
    reg clk, reset, shift;
    reg [3:0] A, B;
    wire [3:0] Sum;
    wire Carry_out;
    SerialBinaryAdder uut (
        .clk(clk),
        .reset(reset),
        .shift(shift),
        .A(A),
        .B(B),
        .Sum(Sum),
        .Carry_out(Carry_out)
    );
    always #5 clk = ~clk;
    initial begin
        clk = 0;
        reset = 1; 
        shift = 0;
        A = 4'b0000;
        B = 4'b0000;
        #10 reset = 0;
        A = 4'b0101;
        B = 4'b0011;
        shift = 1;
        repeat (4) #10;
        A = 4'b1001;
        B = 4'b0110;
        shift = 1;
        repeat (4) #10;
        #20 $finish;
    end
    initial begin
        $dumpfile("tesetbench.vcd"); 
        $dumpvars(0, tesetbench);
    end
endmodule

