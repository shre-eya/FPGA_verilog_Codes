`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2025 14:57:04
// Design Name: 
// Module Name: fp_multiplication
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


module fp_multiplication(
 input [31:0] a, b,
    output reg [31:0] r
);
    reg [7:0] E1, E2, E;
    reg [23:0] M1, M2;
    reg [47:0] M;
    reg s1, s2, s;
    integer i;

    always @(*) begin
        s1 = a[31];
        s2 = b[31];
        E1 = a[30:23];
        E2 = b[30:23];
        M1 = {1'b1, a[22:0]};
        M2 = {1'b1, b[22:0]};
        s = s1 ^ s2;
       
        if ((a == 32'b0) || (b == 32'b0)) begin
            r = 32'b0;
        end 
        else begin 
        E=E1+E2-127;
        M=M1*M2;
        if(M[47])begin 
        M=M>>1;
        E=E+1;
        end 
        else begin 
        for (i=0; i<23;i=i+1) begin 
        if (!M[46])begin 
        M=M<<1;
        E=E-1;
        end 
        end 
        end 
        if(E>=255) begin 
        r={s,8'hff,23'b0};
        end 
        else if (E<=0) begin 
        r=32'b0;
        end else begin 
        r={s,E[7:0],M[45:23]};
        end 
        end 
        end 
        

 
endmodule
