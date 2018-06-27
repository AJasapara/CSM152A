`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:30:30 05/15/2018 
// Design Name: 
// Module Name:    clock 
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
module clock(sec1, sec10, min1, min10, select, pause, adj, 
		blink, faster, seven_segment, an);
		
	input[3:0] sec1;
	wire[3:0] secs_ones;
	input[2:0] sec10;
	wire[3:0] secs_tens;
	input[3:0] min1;
	wire[3:0] mins_ones;
	input[2:0] min10;
	wire[3:0] mins_tens;
	input [1:0] select;
	input pause;
	input adj;
	input blink;
	input faster;
	
	output [7:0] seven_segment;
	output [3:0] an;
	
	reg[3:0] curr;
	
	reg[3:0] an_cache;
	reg[7:0] seven_segment_cache;
	reg[1:0] select_prev = 2'b00;
	reg[3:0] display = 4'h0;
	reg[1:0] counter = 0;
	
	// for each tick of fast clock, increments counter, and sets an_cache based on display
	always @ (posedge faster) begin
		case(counter)
			2'b00:
				begin
					curr <= sec1;
					an_cache <= 4'b0111 | display;
					counter <= counter + 1;
				end
			2'b01:
				begin
					curr <= sec10;
					an_cache <= 4'b1110 | display;
					counter <= counter + 1;
				end
			2'b10:
				begin
					curr <= min1;
					an_cache <= 4'b1101 | display;
					counter <= counter + 1;
				end
			2'b11:
				begin
					curr <= min10;
					an_cache <= 4'b1011 | display;
					counter <= counter + 1;
				end
		endcase
		
		// sets each of seven segments based on number
		case(curr)
			4'h0: seven_segment_cache = 8'b11000000;
			4'h1: seven_segment_cache = 8'b11111001;
			4'h2: seven_segment_cache = 8'b10100100;
			4'h3: seven_segment_cache = 8'b10110000;
			4'h4: seven_segment_cache = 8'b10011001;
			4'h5: seven_segment_cache = 8'b10010010;
			4'h6: seven_segment_cache = 8'b10000010;
			4'h7: seven_segment_cache = 8'b11111000;
			4'h8: seven_segment_cache = 8'b10000000;
			4'h9: seven_segment_cache = 8'b10010000;
			default: seven_segment_cache = 8'b11111111;
		endcase
	end
	
	// if clock is in adjust mode, based on select switches, clears that display then brings it back	
	always @ (posedge blink) begin
		if (adj == 1'b1) begin
			if (select_prev != select) begin
				display = 4'b0000;
				select_prev = select;
			end
			case (select)
			2'b00:	
				display[0] = ~display[0];
			2'b01:	
				display[1] = ~display[1];
			2'b10:	
				display[2] = ~display[2];
			2'b11:
				display[3] = ~display[3];
			endcase
		end
		else
			display = 4'b0000;
	end
	
	assign seven_segment = seven_segment_cache;
	assign an = an_cache;
endmodule
