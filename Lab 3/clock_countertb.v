`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:52:03 05/10/2018
// Design Name:   clock_counter
// Module Name:   C:/Users/152/Desktop/lab3-mam/clock_countertb.v
// Project Name:  lab3-mam
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: clock_counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module clock_countertb;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire twoHzClock;
	wire oneHzClock;
	wire fastClock;
	wire adjustClock;

	// Instantiate the Unit Under Test (UUT)
	clock_counter uut (
		.clk(clk), 
		.rst(rst), 
		.twoHzClock(twoHzClock), 
		.oneHzClock(oneHzClock), 
		.fastClock(fastClock), 
		.adjustClock(adjustClock)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

