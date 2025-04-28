`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2025 13:01:56
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
    reg [31:0] a, b;
    wire [31:0] r;

    fp_division uut (.a(a), .b(b), .r(r));
initial begin 
   $monitor("Time=%0t | a=%b | b=%b | r=%b", $time, a, b, r);


        a = 32'b01000000110000000000000000000000; // 6.0
        b = 32'b01000001000000000000000000000000; // 8.0
        #10;
       
        a = 32'b11000000110000000000000000000000; // -6.0
        b = 32'b01000001000000000000000000000000; // 8.0
        #10;
       
        a = 32'b00000000000000000000000000000000; // 0.0
        b = 32'b01000001000000000000000000000000; // 8.0
        #10;

        a = 32'b01000001000000000000000000000000; // 8.0
        b = 32'b00000000000000000000000000000000; // 0.0 (division by zero)
        #10;

        $finish;
    end
endmodule

