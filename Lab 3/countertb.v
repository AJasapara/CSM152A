`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:01:11 05/10/2018
// Design Name:   counter
// Module Name:   C:/Users/152/Desktop/lab3-mam/countertb.v
// Project Name:  lab3-mam
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module countertb;
       // Inputs
       reg clk;
       reg rst;
       // Outputs
       wire [3:0] secondsUnitCounter;
       wire [2:0] secondsTensCounter;
       wire [3:0] minutesUnitCounter;
       wire [2:0] minutesTensCounter;
       // Instantiate the Unit Under Test (UUT)
       counter uut (
              .clk(clk),
              .rst(rst),
              .secondsUnitFinal(secondsUnitCounter),
              .secondsTensFinal(secondsTensCounter),
              .minutesUnitFinal(minutesUnitCounter),
              .minutesTensFinal(minutesTensCounter)
       );
       initial begin
              // Initialize Inputs
              clk = 0;
              rst = 1;
              // Wait 100 ns for global reset to finish
              #100;
      rst = 0;
              // Add stimulus here
       end
       always #5 clk = ~clk;
endmodule
