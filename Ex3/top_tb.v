//////////////////////////////////////////////////////////////////////////////////
// Test bench for Exercise #3 - Up/Down counter
// Student Name:
// Date: 
//
// Description: A testbench module to test Ex3 - counter
// Guidance: start with simple tests of the module (how should it react to each 
// control signal?). Don't try to test everything at once - validate one part of 
// the functionality at a time.
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 100ps

module top_tb(
    );
    
//Todo: Parameters

parameter CLK_PERIOD = 10;

//Todo: Regitsers and wires

reg clk;
reg err;
reg rst;
reg enable;
reg direction;
reg [7:0]counter_out_prev;
wire [7:0]counter_out;


//Todo: Clock generation

initial
    begin
       clk = 1'b0
       forever
         #(CLK_PERIOD/2) clk=~clk;
     end

//Todo: User logic

 initial begin
        rst =0 ;
        enable =0;
        direction=1;
         #1 rst=0;
        enable=1;
        direction=1;
        #1 rst=0;
        enable=1;
        direction=1;
end
forever begin
         #CLK_PERIOD
         if ((rst==1)&&(counter_out!=8'b000000))
	begin
        $display("***TEST FAILED! rst==%d, enable==%d, direction==%d, counter_out==%d***", rst, enable, direction, counter_out, counter_out_prev);
        err =1;
          end 
      end


    
//Todo: Finish test, check for success

initial begin
        #50 
        if (err==0)
          $display("***TEST PASSED! :) ***");
        $finish;
      end

//Todo: Instantiate counter module

counter(
    //Todo: add ports 
    .clk (clk),
    .rst (rst),
    .enable (enable),
    .direction (direction),
    ,couter_out (counter_out)

 

    );
 
endmodule 
