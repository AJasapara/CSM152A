`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:37:43 06/05/2018
// Design Name:   Game
// Module Name:   C:/Users/152/Desktop/CS152A-Lab4-TicTacToe-master/test.v
// Project Name:  Lab4proj
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Game
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg clk;
	reg btnU;
	reg btnR;
	reg btnL;
	reg btnD;
	reg btnS;
	reg [1:0] sw;

	// Outputs
	wire [7:0] Led;
	wire [2:0] red;
	wire [2:0] green;
	wire [1:0] blue;
	wire hsync;
	wire vsync;
	wire [7:0] seg;
	wire [3:0] an;

	// Instantiate the Unit Under Test (UUT)
	Game uut (
		.clk(clk), 
		.btnU(btnU), 
		.btnR(btnR), 
		.btnL(btnL), 
		.btnD(btnD), 
		.btnS(btnS), 
		.sw(sw), 
		.Led(Led), 
		.red(red), 
		.green(green), 
		.blue(blue), 
		.hsync(hsync), 
		.vsync(vsync), 
		.seg(seg), 
		.an(an)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		btnU = 0;
		btnR = 0;
		btnL = 0;
		btnD = 0;
		btnS = 0;
		sw = 0;

		// Wait 100 ns for global reset to finish
		#100;
		btnD = 1;
		
		#100;
		btnR = 1;
        
		// Add stimulus here

	end
      
endmodule

