`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.12.2024 15:00:19
// Design Name: 
// Module Name: mod9_tb
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


module mod9_tb();
reg clk,reset;
wire [3:0]Q;
mod9 uut (.clk(clk),.reset(reset),.Q(Q));
 always #5 clk = ~clk;
   
   initial begin 
    $monitor("Time=%0t | Q=%b", $time, Q); 
    
    clk = 0;  
    
    #10 reset = 0;  
    
    #160;

    $finish;
end

endmodule
