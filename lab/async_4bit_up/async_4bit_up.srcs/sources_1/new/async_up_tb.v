`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.12.2024 14:50:48
// Design Name: 
// Module Name: async_up_tb
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


module async_up_tb();

   reg clk, reset; 
   wire [3:0] Q; 
   
   asyn_up uut (clk, reset, Q); 
   
   always #5 clk = ~clk;
   
   initial begin 
    $monitor("Time=%0t | Q=%b", $time, Q); 
    
    clk = 0;  
    
    #10 reset = 0;  
    #20 reset = 1;  
    
    #160;

    $finish;
end

endmodule
  
