`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.02.2025 22:51:58
// Design Name: 
// Module Name: serialbinaryadder
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
module SerialBinaryAdder (
    input clk, reset, shift,
    input [3:0] A, B,  // Parallel Inputs
    output [3:0] Sum,  // Parallel Output
    output Carry_out   // Final Carry
);
    wire serial_A, serial_B, serial_Sum;
    wire carry, carry_next;

    // Parallel-In Serial-Out (PISO) registers for A and B
    register_piso PISO_A (.clk(clk), .reset(reset), .shift(shift), .D(A), .y(serial_A));
    register_piso PISO_B (.clk(clk), .reset(reset), .shift(shift), .D(B), .y(serial_B));

    // D Flip-Flop for Carry Storage
    D_FF carry_ff (.clk(clk), .D(carry_next), .reset(reset), .Q(carry));

    // Full Adder for bitwise addition
    fa full_adder (.A(serial_A), .B(serial_B), .Cin(carry), .Sum(serial_Sum), .Cout(carry_next));

    // Serial-In Parallel-Out (SIPO) register for Sum
    register_sipo SIPO_Sum (.clk(clk), .reset(reset), .D(serial_Sum), .Q(Sum));

    assign Carry_out = carry; // Final Carry Output
endmodule

module register_piso (
    input clk, reset, shift,
    input [3:0] D,  // Parallel Input
    output y        // Serial Output
);
    wire [3:0] Q;
    wire [2:0] x;

    D_FF d1 (clk, D[3], reset, Q[3]);
    mux m1 (D[2], Q[3], shift, x[2]);
    D_FF d2 (clk, x[2], reset, Q[2]);
    mux m2 (D[1], Q[2], shift, x[1]);
    D_FF d3 (clk, x[1], reset, Q[1]);
    mux m3 (D[0], Q[1], shift, x[0]);
    D_FF d4 (clk, x[0], reset, Q[0]);

    assign y = Q[0];  // Serial Output
endmodule


module mux (
    input a, b, sel,
    output y
);
    assign y = sel ? b : a;
endmodule

module D_FF(
input clk,D,reset,
output reg Q
    );
    always @(negedge clk)
    begin
    if(reset)
    Q<=0;
    else
    begin
    if(D)
    Q<=1;
    else
    Q<=0;
    end
    end
endmodule


module register_sipo (
    input clk, reset,
    input D,         // Serial Input
    output [3:0] Q   // Parallel Output
);
    D_FF d1(clk, D, reset, Q[0]);
    D_FF d2(clk, Q[0], reset, Q[1]);
    D_FF d3(clk, Q[1], reset, Q[2]);
    D_FF d4(clk, Q[2], reset, Q[3]);
endmodule
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

