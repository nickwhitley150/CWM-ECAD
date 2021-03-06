//////////////////////////////////////////////////////////////////////////////////
// Exercise #2 
// Student Name:
// Date: 
//
//  Description: In this exercise, you need to design a multiplexer, where the  
//  output acts according to the following truth table:
//
//  sel | out
// -----------------
//   0  | a
//   1  | b
//
//  inputs:
//           a, b, sel
//
//  outputs:
//           out
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

module mux(
    //Todo: define inputs here
	input a,
	input b,
	input sel,
	output out
    );
    
    //Todo: define registers and wires here
	wire out;


    //Todo: define your logic here   
	wire[1:0] sel={sel};
	assign #5 out = (sel==1'b0) ? a:
	b;           
      
endmodule
