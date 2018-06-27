`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:38:38 05/22/2018
// Design Name: 
// Module Name:    vga640x480 
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
module vga640x480(
	input wire pix_en,
    input wire clk,
	input wire rst,
	input wire [80:0] o_vec,
	input wire [80:0] x_vec,
	input wire [2:0] game_status,
	input [4:0] currBoard,
	input [4:0] currTile,
	output wire hsync,
	output wire vsync,
	output reg [2:0] red,	//red vga output
	output reg [2:0] green, //green vga output
	output reg [1:0] blue	//blue vga output
	);

parameter [9:0] hpixels = 800;// horizontal pixels per line
parameter [9:0] vlines = 521; // vertical lines per frame
parameter [9:0] hpulse = 96; 	// hsync pulse length
parameter [9:0] vpulse = 2; 	// vsync pulse length
parameter [9:0] hbp = 144; 	// end of horizontal back porch
parameter [9:0] hfp = 784; 	// beginning of horizontal front porch
parameter [9:0] vbp = 31; 		// end of vertical back porch
parameter [9:0] vfp = 511; 	// beginning of vertical front porch

reg [9:0] hc;
reg [9:0] vc;

// Horizontal & vertical counters
always @(posedge clk)
begin
	// reset condition
	if (rst == 1)
	begin
		hc <= 0;
		vc <= 0;
	end
	else if (pix_en == 1)
	begin
		// keep counting until the end of the line
		if (hc < hpixels - 1)
			hc <= hc + 1;
		else
		// When we hit the end of the line, reset the horizontal
		// counter and increment the vertical counter.
		// If vertical counter is at the end of the frame, then
		// reset that one too.
		begin
			hc <= 0;
			if (vc < vlines - 1)
				vc <= vc + 1;
			else
				vc <= 0;
		end
		
	end
end

// generate sync pulses (active low)
assign hsync = (hc < hpulse) ? 0:1;
assign vsync = (vc < vpulse) ? 0:1;

parameter [9:0] line_thickness = 2;
parameter [9:0] tile_offset = 10;
parameter [9:0] tile_width = 50;

// display 100% saturation colorbars
always @(*)
begin
	// active video range
	if (vc >= vbp && vc < vfp)
	begin
		red = 3'b111;
		green = 3'b111;
		blue = 2'b11;
		// Tic-Tac-Toe Lines
		if ( (hc >= (hbp + tile_offset + tile_width) && hc < (hbp + tile_offset + tile_width + line_thickness) 
					&& vc >= (vbp + tile_offset) && vc < (vbp + tile_offset + 9*tile_width + 2*line_thickness))
			|| (hc >= (hbp + tile_offset + tile_width*2 + line_thickness) && hc < (hbp + tile_offset + tile_width*2 + line_thickness*2) 
					&& vc >= (vbp + tile_offset) && vc < (vbp + tile_offset + 9*tile_width + 2*line_thickness))
			|| (hc >= (hbp + tile_offset + tile_width*4 + line_thickness) && hc < (hbp + tile_offset + tile_width*4 + line_thickness*2) 
					&& vc >= (vbp + tile_offset) && vc < (vbp + tile_offset + 9*tile_width + 2*line_thickness))
			|| (hc >= (hbp + tile_offset + tile_width*5 + line_thickness) && hc < (hbp + tile_offset + tile_width*5+ line_thickness*2) 
					&& vc >= (vbp + tile_offset) && vc < (vbp + tile_offset + 9*tile_width + 2*line_thickness))
			|| (hc >= (hbp + tile_offset + tile_width*7 + line_thickness) && hc < (hbp + tile_offset + tile_width*7 + line_thickness*2) 
					&& vc >= (vbp + tile_offset) && vc < (vbp + tile_offset + 9*tile_width + 2*line_thickness))
			|| (hc >= (hbp + tile_offset + tile_width*8 + line_thickness) && hc < (hbp + tile_offset + tile_width*8 + line_thickness*2) 
					&& vc >= (vbp + tile_offset) && vc < (vbp + tile_offset + 9*tile_width + 2*line_thickness))
			|| (vc >= (vbp + tile_offset + tile_width*8 + line_thickness) && vc < (vbp + tile_offset + tile_width*8 + line_thickness*2) 
					&& hc >= (hbp + tile_offset) && hc < (hbp + tile_offset + 9*tile_width + 2*line_thickness))
			|| (vc >= (vbp + tile_offset + tile_width*7 + line_thickness) && vc < (vbp + tile_offset + tile_width*7 + line_thickness*2) 
					&& hc >= (hbp + tile_offset) && hc < (hbp + tile_offset + 9*tile_width + 2*line_thickness))
			|| (vc >= (vbp + tile_offset + tile_width*5 + line_thickness) && vc < (vbp + tile_offset + tile_width*5 + line_thickness*2) 
					&& hc >= (hbp + tile_offset) && hc < (hbp + tile_offset + 9*tile_width + 2*line_thickness))
			|| (vc >= (vbp + tile_offset + tile_width*4 + line_thickness) && vc < (vbp + tile_offset + tile_width*4 + line_thickness*2) 
					&& hc >= (hbp + tile_offset) && hc < (hbp + tile_offset + 9*tile_width + 2*line_thickness))
			|| (vc >= (vbp + tile_offset + tile_width*2 + line_thickness) && vc < (vbp + tile_offset + tile_width*2 + line_thickness*2) 
					&& hc >= (hbp + tile_offset) && hc < (hbp + tile_offset + 9*tile_width + 2*line_thickness))
			|| (vc >= (vbp + tile_offset + tile_width) && vc < (vbp + tile_offset + tile_width + line_thickness) 
					&& hc >= (hbp + tile_offset) && hc < (hbp + tile_offset + 9*tile_width + 2*line_thickness))
			|| (hc >= (hbp + tile_offset + tile_width*3 + line_thickness) && hc < (hbp + tile_offset + tile_width*3 + line_thickness*3) 
					&& vc >= (vbp + tile_offset) && vc < (vbp + tile_offset + 9*tile_width + 3*line_thickness))
			|| (hc >= (hbp + tile_offset + tile_width*6 + line_thickness) && hc < (hbp + tile_offset + tile_width*6 + line_thickness*3) 
				&& vc >= (vbp + tile_offset) && vc < (vbp + tile_offset + 9*tile_width + 3*line_thickness))
			|| (vc >= (vbp + tile_offset + tile_width*6 + line_thickness) && vc < (vbp + tile_offset + tile_width*6 + line_thickness*3) 
				&& hc >= (hbp + tile_offset) && hc < (hbp + tile_offset + 9*tile_width + 3*line_thickness))
			|| (vc >= (vbp + tile_offset + tile_width*3 + line_thickness) && vc < (vbp + tile_offset + tile_width*3 + line_thickness*3) 
				&& hc >= (hbp + tile_offset) && hc < (hbp + tile_offset + 9*tile_width + 3*line_thickness))		
			)
		begin
			red = 3'b000;
			green = 3'b000;
			blue = 2'b00;
		end
	
		
		// Tile Blocks
		// 0 | 1 | 2
		// 3 | 4 | 5
		// 6 | 7 | 8
		// Begin Row 1  
		else if (   (hc >= (hbp + (tile_offset)) && hc < (hbp + (tile_offset) + (tile_width)))
					&& (vc >= (vbp + (tile_offset)) && vc < (vbp + (tile_offset) + (tile_width))))
		begin // Tile 0

			if (o_vec[0])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[0])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00000)
			begin
				if (currTile == 5'b00000)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + (tile_width)) && hc < (hbp + (tile_offset) + (2 * tile_width)))
					&& (vc >= (vbp + (tile_offset)) && vc < (vbp + (tile_offset) + (tile_width))))
		begin // Tile 1

			if (o_vec[1])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[1])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00000)
			begin
				if (currTile == 5'b00001)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + (2 * tile_width))& hc < (hbp + (tile_offset) + (3 * tile_width)))
					&& (vc >= (vbp + (tile_offset)) && vc < (vbp + (tile_offset) + (tile_width))))

		begin // Tile 2

			if (o_vec[2])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[2])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00000)
			begin
				if (currTile == 5'b00010)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset)) && hc < (hbp + (tile_offset) + (tile_width)))
					&& (vc >= (vbp + (tile_offset) + tile_width) && vc < (vbp + (tile_offset) + (2 * tile_width))))
		begin // Tile 3

			if (o_vec[3])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[3])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00000)
			begin
				if (currTile == 5'b00011)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + tile_width) && hc < (hbp + (tile_offset) + (2 * tile_width)))
					&& (vc >= (vbp + (tile_offset) + tile_width) && vc < (vbp + (tile_offset) + (2 * tile_width))))
		begin // Tile 4

			if (o_vec[4])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[4])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00000)
			begin
				if (currTile == 5'b00100)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + (2 * tile_width)) && hc < (hbp + (tile_offset) + (3 * tile_width)))
					&& (vc >= (vbp + (tile_offset) + tile_width) && vc < (vbp + (tile_offset) + (2 * tile_width))))
		begin // Tile 5

			if (o_vec[5])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[5])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00000)
			begin
				if (currTile == 5'b00101)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset)) && hc < (hbp + (tile_offset) + (tile_width)))
					&& (vc >= (vbp + (tile_offset) + (2 * tile_width) && vc < (vbp + (tile_offset) + (3 * tile_width)))))
		begin // Tile 6

			if (o_vec[6])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[6])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00000)
			begin
				if (currTile == 5'b00110)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + (tile_width)) && hc < (hbp + (tile_offset) + (2 * tile_width)))
					&& (vc >= (vbp + (tile_offset) + (2 * tile_width)) && vc < (vbp + (tile_offset) + (3 * tile_width))))
		begin // Tile 7

			if (o_vec[7])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[7])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00000)
			begin
				if (currTile == 5'b00111)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + (2 * tile_width)) && hc < (hbp + (tile_offset) + (3 * tile_width)))
					&& (vc >= (vbp + (tile_offset) + (2 * tile_width)) && vc < (vbp + (tile_offset) + (3 * tile_width))))
		begin // Tile 8

			if (o_vec[8])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[8])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00000)
			begin
				if (currTile == 5'b01000)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + (3 * tile_width)) && hc < (hbp + (tile_offset) + (4 * tile_width)))
					&& (vc >= (vbp + (tile_offset)) && vc < (vbp + (tile_offset) + (tile_width))))
		begin // Tile 9

			if (o_vec[9])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[9])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00001)
			begin
				if (currTile == 5'b00000)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

	else if (   (hc >= (hbp + (tile_offset) + (4 * tile_width))& hc < (hbp + (tile_offset) + (5 * tile_width)))
					&& (vc >= (vbp + (tile_offset)) && vc < (vbp + (tile_offset) + (tile_width))))
		begin // Tile 10

			if (o_vec[10])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[10])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00001)
			begin
				if (currTile == 5'b00001)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + (5*tile_width)) && hc < (hbp + (tile_offset) + (6*tile_width)))
					&& (vc >= (vbp + (tile_offset)) && vc < (vbp + (tile_offset) + (tile_width))))

		begin // Tile 11

			if (o_vec[11])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[11])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00001)
			begin
				if (currTile == 5'b00010)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + (3*tile_width)) && hc < (hbp + (tile_offset) + (4 * tile_width)))
					&& (vc >= (vbp + (tile_offset) + tile_width) && vc < (vbp + (tile_offset) + (2 * tile_width))))
		begin // Tile 12

			if (o_vec[12])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[12])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00001)
			begin
				if (currTile == 5'b00011)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + (4 * tile_width)) && hc < (hbp + (tile_offset) + (5 * tile_width)))
					&& (vc >= (vbp + (tile_offset) + tile_width) && vc < (vbp + (tile_offset) + (2 * tile_width))))
		begin // Tile 13

			if (o_vec[13])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[13])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00001)
			begin
				if (currTile == 5'b00100)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + (5 * tile_width)) && hc < (hbp + (tile_offset) + (6 * tile_width)))
					&& (vc >= (vbp + (tile_offset) + (tile_width)) && vc < (vbp + (tile_offset) + (2 * tile_width))))
		begin // Tile 14

			if (o_vec[14])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[14])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00001)
			begin
				if (currTile == 5'b00101)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + (3 * tile_width)) && hc < (hbp + (tile_offset) + (4 * tile_width)))
					&& (vc >= (vbp + (tile_offset) + (2 * tile_width)) && vc < (vbp + (tile_offset) + (3 * tile_width))))
		begin // Tile 15

			if (o_vec[15])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[15])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00001)
			begin
				if (currTile == 5'b00110)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + (4 * tile_width)) && hc < (hbp + (tile_offset) + (5 * tile_width)))
					&& (vc >= (vbp + (tile_offset) + (2 * tile_width)) && vc < (vbp + (tile_offset) + (3 * tile_width))))
		begin // Tile 16

			if (o_vec[16])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[16])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00001)
			begin
				if (currTile == 5'b00111)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + (5 * tile_width)) && hc < (hbp + (tile_offset) + (6 * tile_width)))
					&& (vc >= (vbp + (tile_offset) + (2 * tile_width)) && vc < (vbp + (tile_offset) + (3 * tile_width))))
		begin // Tile 17

			if (o_vec[17])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[17])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00001)
			begin
				if (currTile == 5'b01000)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + (6 * tile_width)) && hc < (hbp + (tile_offset) + (7 * tile_width)))
					&& (vc >= (vbp + (tile_offset)) && vc < (vbp + (tile_offset) + (tile_width))))
		begin // Tile 18

			if (o_vec[18])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[18])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00010)
			begin
				if (currTile == 5'b00000)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + (7 * tile_width)) && hc < (hbp + (tile_offset) + (8 * tile_width)))
					&& (vc >= (vbp + (tile_offset)) && vc < (vbp + (tile_offset) + (tile_width))))
		begin // Tile 19

			if (o_vec[19])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[19])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00010)
			begin
				if (currTile == 5'b00001)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + (8 * tile_width))& hc < (hbp + (tile_offset) + (9 * tile_width)))
					&& (vc >= (vbp + (tile_offset)) && vc < (vbp + (tile_offset) + (tile_width))))
		begin // Tile 20

			if (o_vec[20])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[20])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00010)
			begin
				if (currTile == 5'b00010)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + (6 * tile_width)) && hc < (hbp + (tile_offset) + (7 * tile_width)))
					&& (vc >= (vbp + (tile_offset) + tile_width) && vc < (vbp + (tile_offset) + (2 * tile_width))))
		begin // Tile 21

			if (o_vec[21])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[21])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00010)
			begin
				if (currTile == 5'b00011)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + (7 * tile_width)) && hc < (hbp + (tile_offset) + (8 * tile_width)))
					&& (vc >= (vbp + (tile_offset) + tile_width) && vc < (vbp + (tile_offset) + (2 * tile_width))))
		begin // Tile 22

			if (o_vec[22])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[22])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00010)
			begin
				if (currTile == 5'b00100)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + (8 * tile_width)) && hc < (hbp + (tile_offset) + (9 * tile_width)))
					&& (vc >= (vbp + (tile_offset) + tile_width) && vc < (vbp + (tile_offset) + (2 * tile_width))))
		begin // Tile 23

			if (o_vec[23])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[23])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00010)
			begin
				if (currTile == 5'b00101)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + (6 * tile_width) ) && hc < (hbp + (tile_offset) + (7 * tile_width)))
					&& (vc >= (vbp + (tile_offset) + (2 * tile_width)) && vc < (vbp + (tile_offset) + (3 * tile_width))))
		begin // Tile 24

			if (o_vec[24])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[24])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00010)
			begin
				if (currTile == 5'b00110)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + (7 * tile_width)) && hc < (hbp + (tile_offset) + (8 * tile_width)))
					&& (vc >= (vbp + (tile_offset) + (2 * tile_width)) && vc < (vbp + (tile_offset) + (3 * tile_width))))
		begin // Tile 25

			if (o_vec[25])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[25])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00010)
			begin
				if (currTile == 5'b00111)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + (8 * tile_width)) && hc < (hbp + (tile_offset) + (9 * tile_width)))
					&& (vc >= (vbp + (tile_offset) + (2 * tile_width)) && vc < (vbp + (tile_offset) + (3 * tile_width))))		
		begin // Tile 26
			if (o_vec[26])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[26])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00010)
			begin
				if (currTile == 5'b01000)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end




		else if (   (hc >= (hbp + (tile_offset)) && hc < (hbp + (tile_offset) + (tile_width)))
					&& (vc >= (vbp + (tile_offset) + (3 * tile_width)) && vc < (vbp + (tile_offset) + (4 * tile_width))))
		begin // Tile 27

			if (o_vec[27])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[27])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00011)
			begin
				if (currTile == 5'b00000)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + (tile_width)) && hc < (hbp + (tile_offset) + (2 * tile_width)))
					&& (vc >= (vbp + (tile_offset) + (3 * tile_width)) && vc < (vbp + (tile_offset) + (4 * tile_width))))
		begin // Tile 28

			if (o_vec[28])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[28])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00011)
			begin
				if (currTile == 5'b00001)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + (2 * tile_width))& hc < (hbp + (tile_offset) + (3 * tile_width)))
					&& (vc >= (vbp + (tile_offset) + (3 * tile_width)) && vc < (vbp + (tile_offset) + (4 * tile_width))))
		begin // Tile 29

			if (o_vec[29])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[29])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00011)
			begin
				if (currTile == 5'b00010)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset)) && hc < (hbp + (tile_offset) + (tile_width)))
					&& (vc >= (vbp + (tile_offset) + (4 *tile_width)) && vc < (vbp + (tile_offset) + (5 * tile_width))))		
		begin // Tile 30
			if (o_vec[30])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[30])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00011)
			begin
				if (currTile == 5'b00011)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + tile_width) && hc < (hbp + (tile_offset) + (2 * tile_width)))
					&& (vc >= (vbp + (tile_offset) + (4 * tile_width)) && vc < (vbp + (tile_offset) + (5 * tile_width))))
		begin // Tile 31

			if (o_vec[31])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[31])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00011)
			begin
				if (currTile == 5'b00100)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + (2 * tile_width)) && hc < (hbp + (tile_offset) + (3 * tile_width)))
					&& (vc >= (vbp + (tile_offset) + (4 * tile_width)) && vc < (vbp + (tile_offset) + (5 * tile_width))))		
		begin // Tile 32

			if (o_vec[32])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[32])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00011)
			begin
				if (currTile == 5'b00101)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) ) && hc < (hbp + (tile_offset) + tile_width))
					&& (vc >= (vbp + (tile_offset) + (5 * tile_width)) && vc < (vbp + (tile_offset) + (6 * tile_width))))
		begin // Tile 33

			if (o_vec[33])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[33])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00011)
			begin
				if (currTile == 5'b00110)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + (tile_width)) && hc < (hbp + (tile_offset) + (2 * tile_width)))
					&& (vc >= (vbp + (tile_offset) + (5 * tile_width)) && vc < (vbp + (tile_offset) + (6 * tile_width))))
		begin // Tile 34

			if (o_vec[34])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[34])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00011)
			begin
				if (currTile == 5'b00111)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + (2 * tile_width)) && hc < (hbp + (tile_offset) + (3 * tile_width)))
					&& (vc >= (vbp + (tile_offset) + (5 * tile_width)) && vc < (vbp + (tile_offset) + (6 * tile_width))))	
		begin // Tile 35
			if (o_vec[35])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[35])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00011)
			begin
				if (currTile == 5'b01000)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset + 3 * tile_width)) && hc < (hbp + (tile_offset) + (4 * tile_width)))
					&& (vc >= (vbp + (tile_offset + (3 * tile_width))) && vc < (vbp + (tile_offset) + (4*tile_width))))
		begin // Tile 36

			if (o_vec[36])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[36])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00100)
			begin
				if (currTile == 5'b00000)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + (4 * tile_width)) && hc < (hbp + (tile_offset) + (5 * tile_width)))
					&& (vc >= (vbp + (tile_offset) + (3 * tile_width)) && vc < (vbp + (tile_offset) + (4 * tile_width))))
		begin // Tile 37

			if (o_vec[37])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[37])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00100)
			begin
				if (currTile == 5'b00001)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + (5 * tile_width))& hc < (hbp + (tile_offset) + (6 * tile_width)))
					&& (vc >= (vbp + (tile_offset) + (3 * tile_width)) && vc < (vbp + (tile_offset) + (4 * tile_width))))

		begin // Tile 38

			if (o_vec[38])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[38])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00100)
			begin
				if (currTile == 5'b00010)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + (3*tile_width)) && hc < (hbp + (tile_offset) + (4*tile_width)))
					&& (vc >= (vbp + (tile_offset) + (4 * tile_width)) && vc < (vbp + (tile_offset) + (5 * tile_width))))		
		begin // Tile 39

			if (o_vec[39])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[39])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00100)
			begin
				if (currTile == 5'b00011)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + (4*tile_width)) && hc < (hbp + (tile_offset) + (5 * tile_width)))
					&& (vc >= (vbp + (tile_offset) + (4 * tile_width)) && vc < (vbp + (tile_offset) + (5 * tile_width))))
		begin // Tile 40

			if (o_vec[40])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[40])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00100)
			begin
				if (currTile == 5'b00100)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + (5 * tile_width)) && hc < (hbp + (tile_offset) + (6 * tile_width)))
					&& (vc >= (vbp + (tile_offset) + (4 * tile_width)) && vc < (vbp + (tile_offset) + (5 * tile_width))))
		begin // Tile 41

			if (o_vec[41])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[41])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00100)
			begin
				if (currTile == 5'b00101)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + (3 * tile_width)) && hc < (hbp + (tile_offset) + (4 * tile_width)))
					&& (vc >= (vbp + (tile_offset) + (5 * tile_width)) && vc < (vbp + (tile_offset) + (6 * tile_width))))
		begin // Tile 42

			if (o_vec[42])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[42])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00100)
			begin
				if (currTile == 5'b00110)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + (4 * tile_width)) && hc < (hbp + (tile_offset) + (5 * tile_width)))
					&& (vc >= (vbp + (tile_offset) + (5 * tile_width)) && vc < (vbp + (tile_offset) + (6 * tile_width))))
		begin // Tile 43

			if (o_vec[43])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[43])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00100)
			begin
				if (currTile == 5'b00111)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + (5 * tile_width)) && hc < (hbp + (tile_offset) + (6 * tile_width)))
					&& (vc >= (vbp + (tile_offset) + (5 * tile_width)) && vc < (vbp + (tile_offset) + (6 * tile_width))))
		begin // Tile 

			if (o_vec[44])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[44])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00100)
			begin
				if (currTile == 5'b01000)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end



		else if (   (hc >= (hbp + (tile_offset) + (6 * tile_width)) && hc < (hbp + (tile_offset) + (7 * tile_width)))
					&& (vc >= (vbp + (tile_offset) + (3 * tile_width)) && vc < (vbp + (tile_offset) + (4 * tile_width))))
		begin // Tile 45

			if (o_vec[45])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[45])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00101)
			begin
				if (currTile == 5'b00000)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + (7 * tile_width)) && hc < (hbp + (tile_offset) + (8 * tile_width)))
					&& (vc >= (vbp + (tile_offset) + (3 * tile_width)) && vc < (vbp + (tile_offset) + (4 * tile_width))))
		begin // Tile 46

			if (o_vec[46])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[46])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00101)
			begin
				if (currTile == 5'b00001)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + (8 * tile_width))& hc < (hbp + (tile_offset) + (9 * tile_width)))
					&& (vc >= (vbp + (tile_offset) + (3 * tile_width)) && vc < (vbp + (tile_offset) + (4 * tile_width))))
		begin // Tile 47

			if (o_vec[47])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[47])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00101)
			begin
				if (currTile == 5'b00010)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + (6 * tile_width)) && hc < (hbp + (tile_offset) + (7 * tile_width)))
					&& (vc >= (vbp + (tile_offset) + (4 * tile_width)) && vc < (vbp + (tile_offset) + (5 * tile_width))))	
		begin // Tile 48

			if (o_vec[48])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[48])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00101)
			begin
				if (currTile == 5'b00011)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + (7 * tile_width)) && hc < (hbp + (tile_offset) + (8 * tile_width)))
					&& (vc >= (vbp + (tile_offset) + (4 * tile_width)) && vc < (vbp + (tile_offset) + (5 * tile_width))))
		begin // Tile 49

			if (o_vec[49])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[49])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00101)
			begin
				if (currTile == 5'b00100)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + (8 * tile_width)) && hc < (hbp + (tile_offset) + (9 * tile_width)))
					&& (vc >= (vbp + (tile_offset) + (4 * tile_width)) && vc < (vbp + (tile_offset) + (5 * tile_width))))
		begin // Tile 50

			if (o_vec[50])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[50])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00101)
			begin
				if (currTile == 5'b00101)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + (6 * tile_width)) && hc < (hbp + (tile_offset) + (7 * tile_width)))
					&& (vc >= (vbp + (tile_offset) + (5 * tile_width)) && vc < (vbp + (tile_offset) + (6 * tile_width))))
		begin // Tile 51

			if (o_vec[51])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[51])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00101)
			begin
				if (currTile == 5'b00110)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + (7 * tile_width)) && hc < (hbp + (tile_offset) + (8 * tile_width)))
					&& (vc >= (vbp + (tile_offset) + (5 * tile_width)) && vc < (vbp + (tile_offset) + (6 * tile_width))))
		begin // Tile 52

			if (o_vec[52])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[52])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00101)
			begin
				if (currTile == 5'b00111)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + (8 * tile_width)) && hc < (hbp + (tile_offset) + (9 * tile_width)))
					&& (vc >= (vbp + (tile_offset) + (5 * tile_width)) && vc < (vbp + (tile_offset) + (6 * tile_width))))
		begin // Tile 

			if (o_vec[53])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[53])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00101)
			begin
				if (currTile == 5'b01000)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end




		else if (   (hc >= (hbp + (tile_offset)) && hc < (hbp + (tile_offset) + (tile_width)))
					&& (vc >= (vbp + (tile_offset) + (6 * tile_width)) && vc < (vbp + (tile_offset) + (7 * tile_width))))
		begin // Tile 54

			if (o_vec[54])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[54])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00110)
			begin
				if (currTile == 5'b00000)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + (tile_width)) && hc < (hbp + (tile_offset) + (2 * tile_width)))
					&& (vc >= (vbp + (tile_offset) + (6 * tile_width)) && vc < (vbp + (tile_offset) + (7 * tile_width))))
		begin // Tile 55

			if (o_vec[55])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[55])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00110)
			begin
				if (currTile == 5'b00001)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + (2 * tile_width))& hc < (hbp + (tile_offset) + (3 * tile_width)))
					&& (vc >= (vbp + (tile_offset) + (6 * tile_width)) && vc < (vbp + (tile_offset) + (7 * tile_width))))

		begin // Tile 56

			if (o_vec[56])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[56])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00110)
			begin
				if (currTile == 5'b00010)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset)) && hc < (hbp + (tile_offset) + (tile_width)))
					&& (vc >= (vbp + (tile_offset) + (7 * tile_width)) && vc < (vbp + (tile_offset) + (8 * tile_width))))		
		begin // Tile 57

			if (o_vec[57])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[57])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00110)
			begin
				if (currTile == 5'b00011)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + tile_width) && hc < (hbp + (tile_offset) + (2 * tile_width)))
					&& (vc >= (vbp + (tile_offset) + (7 * tile_width)) && vc < (vbp + (tile_offset) + (8 * tile_width))))
		begin // Tile 58

			if (o_vec[58])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[58])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00110)
			begin
				if (currTile == 5'b00100)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + (2 * tile_width)) && hc < (hbp + (tile_offset) + (3 * tile_width)))
					&& (vc >= (vbp + (tile_offset) + (7 * tile_width)) && vc < (vbp + (tile_offset) + (8 * tile_width))))
		begin // Tile 59

			if (o_vec[59])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[59])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00110)
			begin
				if (currTile == 5'b00101)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) ) && hc < (hbp + (tile_offset) + tile_width))
					&& (vc >= (vbp + (tile_offset) + (8 * tile_width)) && vc < (vbp + (tile_offset) + (9 * tile_width))))
		begin // Tile 60

			if (o_vec[60])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[60])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00110)
			begin
				if (currTile == 5'b00110)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + (tile_width)) && hc < (hbp + (tile_offset) + (2 * tile_width)))
					&& (vc >= (vbp + (tile_offset) + (8 * tile_width)) && vc < (vbp + (tile_offset) + (9 * tile_width))))		
		begin // Tile 61

			if (o_vec[61])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[61])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00110)
			begin
				if (currTile == 5'b00111)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + (2 * tile_width)) && hc < (hbp + (tile_offset) + (3 * tile_width)))
					&& (vc >= (vbp + (tile_offset) + (8 * tile_width)) && vc < (vbp + (tile_offset) + (9 * tile_width))))
		begin // Tile 62

			if (o_vec[62])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[62])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00110)
			begin
				if (currTile == 5'b01000)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end


		else if (   (hc >= (hbp + (tile_offset + 3 * tile_width)) && hc < (hbp + (tile_offset) + (4 * tile_width)))
					&& (vc >= (vbp + (tile_offset + (6 * tile_width))) && vc < (vbp + (tile_offset) + (7*tile_width))))
		begin // Tile 63

			if (o_vec[63])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[63])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00111)
			begin
				if (currTile == 5'b00000)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + (4 * tile_width)) && hc < (hbp + (tile_offset) + (5 * tile_width)))
					&& (vc >= (vbp + (tile_offset) + (6 * tile_width)) && vc < (vbp + (tile_offset) + (7 * tile_width))))
		begin // Tile 64

			if (o_vec[64])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[64])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00111)
			begin
				if (currTile == 5'b00001)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + (5 * tile_width))& hc < (hbp + (tile_offset) + (6 * tile_width)))
					&& (vc >= (vbp + (tile_offset) + (6 * tile_width)) && vc < (vbp + (tile_offset) + (7 * tile_width))))

		begin // Tile 65

			if (o_vec[65])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[65])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00111)
			begin
				if (currTile == 5'b00010)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + (3*tile_width)) && hc < (hbp + (tile_offset) + (4*tile_width)))
					&& (vc >= (vbp + (tile_offset) + (7 * tile_width)) && vc < (vbp + (tile_offset) + (8 * tile_width))))	
		begin // Tile 66

			if (o_vec[66])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[66])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00111)
			begin
				if (currTile == 5'b00011)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + (4*tile_width)) && hc < (hbp + (tile_offset) + (5 * tile_width)))
					&& (vc >= (vbp + (tile_offset) + (7 * tile_width)) && vc < (vbp + (tile_offset) + (8 * tile_width))))
		begin // Tile 67

			if (o_vec[67])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[67])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00111)
			begin
				if (currTile == 5'b00100)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + (5 * tile_width)) && hc < (hbp + (tile_offset) + (6 * tile_width)))
					&& (vc >= (vbp + (tile_offset) + (7 * tile_width)) && vc < (vbp + (tile_offset) + (8 * tile_width))))
		begin // Tile 68

			if (o_vec[68])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[68])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00111)
			begin
				if (currTile == 5'b00101)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + (3 * tile_width)) && hc < (hbp + (tile_offset) + (4 * tile_width)))
					&& (vc >= (vbp + (tile_offset) + (8 * tile_width)) && vc < (vbp + (tile_offset) + (9 * tile_width))))
		begin // Tile 69

			if (o_vec[69])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[69])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00111)
			begin
				if (currTile == 5'b00110)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + (4 * tile_width)) && hc < (hbp + (tile_offset) + (5 * tile_width)))
					&& (vc >= (vbp + (tile_offset) + (8 * tile_width)) && vc < (vbp + (tile_offset) + (9 * tile_width))))	
		begin // Tile 70

			if (o_vec[70])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[70])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00111)
			begin
				if (currTile == 5'b00111)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + (5 * tile_width)) && hc < (hbp + (tile_offset) + (6 * tile_width)))
					&& (vc >= (vbp + (tile_offset) + (8 * tile_width)) && vc < (vbp + (tile_offset) + (9 * tile_width))))
		begin // Tile 71

			if (o_vec[71])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[71])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b00111)
			begin
				if (currTile == 5'b01000)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end



		else if (   (hc >= (hbp + (tile_offset) + (6 * tile_width)) && hc < (hbp + (tile_offset) + (7 * tile_width)))
					&& (vc >= (vbp + (tile_offset) + (6 * tile_width)) && vc < (vbp + (tile_offset) + (7 * tile_width))))
		begin // Tile 72

			if (o_vec[72])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[72])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b01000)
			begin
				if (currTile == 5'b00000)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + (7 * tile_width)) && hc < (hbp + (tile_offset) + (8 * tile_width)))
					&& (vc >= (vbp + (tile_offset) + (6 * tile_width)) && vc < (vbp + (tile_offset) + (7 * tile_width))))
		begin // Tile 73

			if (o_vec[73])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[73])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b01000)
			begin
				if (currTile == 5'b00001)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + (8 * tile_width))& hc < (hbp + (tile_offset) + (9 * tile_width)))
					&& (vc >= (vbp + (tile_offset) + (6 * tile_width)) && vc < (vbp + (tile_offset) + (7 * tile_width))))

		begin // Tile 74

			if (o_vec[74])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[74])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b01000)
			begin
				if (currTile == 5'b00010)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + (6 * tile_width)) && hc < (hbp + (tile_offset) + (7 * tile_width)))
					&& (vc >= (vbp + (tile_offset) + (7 * tile_width)) && vc < (vbp + (tile_offset) + (8 * tile_width))))
		begin // Tile 75

			if (o_vec[75])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[75])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b01000)
			begin
				if (currTile == 5'b00011)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + (7 * tile_width)) && hc < (hbp + (tile_offset) + (8 * tile_width)))
					&& (vc >= (vbp + (tile_offset) + (7 * tile_width)) && vc < (vbp + (tile_offset) + (8 * tile_width))))
		begin // Tile 76

			if (o_vec[76])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[76])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b01000)
			begin
				if (currTile == 5'b00100)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + (8 * tile_width)) && hc < (hbp + (tile_offset) + (9 * tile_width)))
					&& (vc >= (vbp + (tile_offset) + (7 * tile_width)) && vc < (vbp + (tile_offset) + (8 * tile_width))))
		begin // Tile 77

			if (o_vec[77])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[77])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b01000)
			begin
				if (currTile == 5'b00101)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + (6 * tile_width)) && hc < (hbp + (tile_offset) + (7 * tile_width)))
					&& (vc >= (vbp + (tile_offset) + (8 * tile_width)) && vc < (vbp + (tile_offset) + (9 * tile_width))))
		begin // Tile 78

			if (o_vec[78])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[78])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b01000)
			begin
				if (currTile == 5'b00110)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + (7 * tile_width)) && hc < (hbp + (tile_offset) + (8 * tile_width)))
					&& (vc >= (vbp + (tile_offset) + (8 * tile_width)) && vc < (vbp + (tile_offset) + (9 * tile_width))))
		begin // Tile 79

			if (o_vec[79])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[79])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b01000)
			begin
				if (currTile == 5'b00111)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end

		else if (   (hc >= (hbp + (tile_offset) + (8 * tile_width)) && hc < (hbp + (tile_offset) + (9 * tile_width)))
					&& (vc >= (vbp + (tile_offset) + (8 * tile_width)) && vc < (vbp + (tile_offset) + (9 * tile_width))))
		begin // Tile 80

			if (o_vec[80])
				begin
					red = 3'b000;
					green = 3'b000;
					blue = 2'b11;
				end
			else if (x_vec[80])
				begin
					red = 3'b111;
					green = 3'b000;
					blue = 2'b00;
				end
			if (currBoard == 5'b01000)
			begin
				if (currTile == 5'b01000)
				begin
					red = 3'b000;
					green = 3'b111;
					blue = 2'b00;
				end
			end
		end
		
		else if (hc >= (hbp) && hc < (hfp))
		begin
				red = 3'b111;
				green = 3'b111;
				blue = 2'b11;
		end
		//black
		else
		begin
				red = 3'b000;
				green = 3'b000;
				blue = 2'b00;
		end
		
	end
	/*
	else
	begin
			red = 0;
			green = 0;
			blue = 0;
	end
	*/
end

endmodule
