`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.02.2025 23:41:09
// Design Name: 
// Module Name: NonRestoringDivision
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

module NonRestoringDivision(
    input [3:0] Q,  
    input [3:0] M,  
    output reg [3:0] A,  
    output reg [3:0] Q_out  
);
    integer n;  

    always @(*) begin
        A = 4'b0000;  
        Q_out = Q;  
        n = 4;  

        repeat (n) begin
            {A, Q_out} = {A, Q_out} << 1;  

            if (A[3] == 0)  
                A = A - M;  
            else  
                A = A + M;  

            if (A[3] == 0)  
                Q_out[0] = 1;  
            else  
                Q_out[0] = 0;  
        end

        if (A[3] == 1)  
            A = A + M;  
    end
endmodule
module tb();
    reg [3:0] Q;  
    reg [3:0] M;  
    wire [3:0] A;  
    wire [3:0] Q_out;  

    NonRestoringDivision uut (.Q(Q), .M(M), .A(A), .Q_out(Q_out));

    initial begin
        // Test Case 1
        Q = 4'b1010;  // Dividend (10)
        M = 4'b0011;  // Divisor (3)
        #10;
        
        // Test Case 2 (Optional, you can add more tests)
        Q = 4'b0110;  // Dividend (6)
        M = 4'b0010;  // Divisor (2)
        #10;
        
        // Test Case 3
        Q = 4'b1111;  // Dividend (15)
        M = 4'b0100;  // Divisor (4)
        #10;

        $finish;  // End the simulation
    end

    initial begin
        $monitor("Time = %0t | Q = %b | M = %b | A = %b | Q_out = %b", 
                 $time, Q, M, A, Q_out);
    end
endmodule

