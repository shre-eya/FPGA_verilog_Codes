module usr_tb();
reg clk;
reg reset;
reg [3:0] dat;
reg left_in;
reg right_in;
reg [1:0] op;
wire [3:0] q;

usr uut(.clk(clk), .reset(reset), .dat(dat), .left_in(left_in), .right_in(right_in), .op(op), .q(q));

initial begin 
    clk = 0;
    forever #5 clk = ~clk;  // Generate clock with period 10 units
end 

initial begin 
    // Initialize inputs 
    reset = 1;
    dat = 4'b0000;
    left_in = 0;
    right_in = 0;
    op = 2'b00;
    #20;   // Hold reset for 20 time units
    reset = 0;
    
    #10 op = 2'b00;  // No operation
    #10;
    
    op = 2'b01;  // Shift left operation
    left_in = 1;
    #10 left_in = 0;
    #10 left_in = 1;
    #10;

    op = 2'b10;  // Shift right operation
    right_in = 1;
    #10 right_in = 0;
    #10 right_in = 1;
    #10;

    op = 2'b11;  // Load new data
    dat = 4'b1100;
    #10;
    
    $finish;
end

initial begin 
    $monitor("Time: %0t | Reset: %b | Dat: %b | Left_in: %b | Right_in: %b | Op: %b | Q: %b", 
             $time, reset, dat, left_in, right_in, op, q);
end

endmodule 