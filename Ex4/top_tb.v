//////////////////////////////////////////////////////////////////////////////////
// Test bench for Exercise #4 - Electronic Dice
// Student Name:
// Date: 
//
// Description: A testbench module to test Ex4 - Electronic Dice
// You need to write the whole file
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
reg button;
reg direction;
reg [2:0]throw_prev;
wire [2:0]throw;


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
	button=1'b0;
	err=0;
	throw_prev=3'b111;
	throw=3'b111;
       
end
forever begin
         #CLK_PERIOD*10
         if ((rst==1)&&(counter_out_prev!=8'b000000))
	begin
        $display("***TEST FAILED! rst==%d, enable==%d, direction==%d, counter_out==%d***", rst, enable, direction, counter_out, counter_out_prev);
        err =1;
          end 
	 if ((enable==0)&&(counter_out_prev!=))
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
