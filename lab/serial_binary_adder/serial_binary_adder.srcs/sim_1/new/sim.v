`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.02.2025 14:28:15
// Design Name: 
// Module Name: sim
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
module sim();
    reg clk;
    reg [3:0] A, B;  // 4-bit inputs
    wire s, c;
    wire [1:0] st;

    Serialbinaryadder uut(
        .clk(clk),
        .A(A),
        .B(B),
        .s(s),
        .c(c),
        .st(st)
    );

    always #5 clk = ~clk;  // Clock with 10ns period

    initial begin 
        clk = 0;
        A = 4'b1010;  // Example values
        B = 4'b1100;
        
        #40 $finish;  // Simulation stops after processing all bits
    end 

    initial begin 
        $monitor("Time=%0t | A=%b | B=%b | State=%b | Sum=%b | Carry=%b", 
                 $time, A, B, st, s, c);
    end
endmodule
