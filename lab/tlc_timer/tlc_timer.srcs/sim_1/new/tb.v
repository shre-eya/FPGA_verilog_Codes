`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2025 11:22:52
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
    reg clk, rst;
    wire [1:0] rl_1, rl_2;
    
    tlc uut (.clk(clk), .rst(rst), .rl_1(rl_1), .rl_2(rl_2));

    always #5 clk = ~clk; // Clock toggles every 5 time units (10ns period)

    initial begin
        clk = 0;
        rst = 1;
        #10 rst = 0; // Release reset after 10 time units

        // Monitor changes in signals
        $monitor("Time=%0t | clk=%b | rst=%b | nxt_st=%b | timer=%d | rl_1=%b | rl_2=%b", 
                  $time, clk, rst, uut.nxt_st, uut.timer, rl_1, rl_2);

        #150 $finish; // End simulation
    end
endmodule

