`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.02.2025 23:04:04
// Design Name: 
// Module Name: RestoringDivision
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
module RestoringDivision(
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
            A = A - M;  

            if (A[3] == 1) begin  
                Q_out[0] = 0;  
                A = A + M;  
            end else begin
                Q_out[0] = 1;  
            end
            
            n = n - 1;  
        end
    end
endmodule
module tb();
    reg [3:0] Q;  
    reg [3:0] M;  
    wire [3:0] A;  
    wire [3:0] Q_out;  

    RestoringDivision uut (.Q(Q), .M(M), .A(A), .Q_out(Q_out));

    initial begin
        Q = 4'b1010;  
        M = 4'b0011;  
        #10;
        Q = 4'b0110;  // 6 / 2
        M = 4'b0010;  
        #10;

        Q = 4'b1111;  // 15 / 4
        M = 4'b0100;  
        #10;
        $finish;
    end
endmodule
