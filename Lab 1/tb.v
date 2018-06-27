`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:49:07 04/12/2018
// Design Name:   convertRaw
// Module Name:   C:/Users/152/Desktop/lab1_mma/Lab1/tb.v
// Project Name:  Lab1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: convertRaw
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb;

	// Inputs
	reg [11:0] D;

	// Outputs
	wire S;
	wire [11:0] raw;

	// Instantiate the Unit Under Test (UUT)
	convertRaw uut (
		.D(D), 
		.S(S), 
		.raw(raw)
	);

	initial begin
		// Initialize Inputs
		D = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

