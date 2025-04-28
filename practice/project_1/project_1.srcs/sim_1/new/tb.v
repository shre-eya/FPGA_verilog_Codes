`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2025 17:26:24
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
reg [3:0]A,B;
reg clk,shift,reset;
wire [3:0]sum;
wire carry_out;
SBA uut( .A(A),.B(B),.clk(clk),.shift(shift),.reset(reset),.sum(sum),.carry_out(carry_out));
always #5 clk=~clk;
initial begin 
clk=0;
A=4'b0000;
B=4'b0000;
reset = 1;
shift = 0;
#10 reset = 0;
shift = 1;  // Start shifting

repeat (4) #10;  // Allow full addition cycle

shift = 0;  // Pause shifting before updating A and B
#10 A = 4'b1001;
    B = 4'b0110;
shift = 1;  // Restart shifting

repeat (4) #10;  // Allow another full addition cycle
#20 $finish;

        end
        initial begin
    $monitor("Time=%0t | A=%b B=%b | Sum=%b Carry=%b", $time, A, B, sum, carry_out);
end

    

endmodule
