`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.02.2025 23:10:46
// Design Name: 
// Module Name: tb
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


