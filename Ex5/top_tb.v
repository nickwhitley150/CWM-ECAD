//////////////////////////////////////////////////////////////////////////////////
// Test bench for Exercise #5 - Traffic Lights
// Student Name:
// Date: 
//
// Description: A testbench module to test Ex5 - Traffic Lights
// You need to write the whole file
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 100ps

module traffic_test();

parameter CLK_PERIOD = 10;
reg clk;
reg err;
reg red_prev;
reg amber_prev;
reg green_prev;
wire red;
wire amber;
wire green;

//clock
initial
    begin
       clk = 1'b0
       forever
         #(CLK_PERIOD/2) clk=~clk;
     end

initial 
	begin
        #200 
        if (err==0)
        	begin
          		$display("***TEST PASSED! :) ***");
        		$finish;
			end
		else	
			begin 
				$display("***Test failed... :(( ***");
        		$finish;
			end
	end



traffic traffic(clk, red, amber, green);

endmodule
