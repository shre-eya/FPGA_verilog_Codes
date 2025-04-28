`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.12.2024 16:50:38
// Design Name: 
// Module Name: two_bit_tb
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

module two_bit_tb();
reg A1,A0,B1,B0;
wire E,G,L;
two_bit uut(A1,B1,A0,B0,E,G,L);
 initial begin 
        $monitor("Time=%0d A1=%b A0=%b B1=%b B0=%b | E=%b G=%b L=%b", $time, A1, A0, B1, B0, E, G, L);
    end
initial begin 
A1 = 0; A0 = 0; B1 = 0; B0 = 0; #10; 
A1 = 0; A0 = 1; B1 = 0; B0 = 0; #10; 
A1 = 1; A0 = 0; B1 = 0; B0 = 1; #10; 
A1 = 1; A0 = 1; B1 = 1; B0 = 1; #10; 
A1 = 1; A0 = 0; B1 = 0; B0 = 0; #10;
$finish;
end
endmodule
