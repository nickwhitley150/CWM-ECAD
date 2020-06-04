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
forever begin
	#10
	if ((red==0)&&(green==0)&&(amber==0))begin
	$display ("***FAILLLL! red==%d, amber==%d, green==%d***", red, amber, green);
	err=1;
	end
	else begin
	err=err;
	end
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



state traffic(
	.clk (clk),
	.red (red),
	.green (green),
	.amber (amber)
);
endmodule
