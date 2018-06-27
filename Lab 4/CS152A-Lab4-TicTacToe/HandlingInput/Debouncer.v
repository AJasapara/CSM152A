`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:21:18 05/29/2018
// Design Name: 
// Module Name:    Debouncer 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

module Debouncer(
    input clk,
    input real_btn_input,
    output debounced_btn_input
    );

	reg [22:0] step_d = 0;
//	reg press = 0;
	
	always @(posedge clk) 
	begin
		if (real_btn_input == 0)
		begin
			step_d <= 0;
//			press <= 0;
		end
		else 
		begin
			step_d <= step_d + 1'b1;
//			if (&step_d)
//			begin
//				press <= 1;
//				step_d <= 0;
//			end				
		end
	end
	
	assign debounced_btn_input = &step_d;
endmodule
