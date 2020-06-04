//////////////////////////////////////////////////////////////////////////////////
// Exercise #5 
// Student Name:
// Date: 
//
//  Description: In this exercise, you need to implement a UK traffic lights 
//  sequencing system. 
//
//  inputs:
//           clk
//
//  outputs:
//           red, amber, green
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 100ps

module traffic(
    //Todo: add ports 
	input clk
	output red
	output amber
	output green


    );
                    
    //Todo: add registers and wires, if needed

	reg[1:0]state;



    //Todo: add user logic

assign red = state[1]
assign amber = state[0]
assign green = (state == 2'b10)? (1'b1):(1'b0);

always @(posedge clk)
begin

if (state==2'b11)
	state <= 2'b0;
else 
	state <= state+1;

$display("lights=%h red=%h amber=%h green=%h", state, red, amber, green);  

end
initial 
	begin
		state = 2'b0;
	end

	
endmodule
