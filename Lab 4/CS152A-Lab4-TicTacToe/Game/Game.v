`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:28:25 05/24/2018
// Design Name: 
// Module Name:    NERP_demo_top 
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
module Game(
	input wire clk,
	input wire btnU,
	input wire btnR,
	input wire btnL,
	input wire btnD,
	input wire btnS,
	input wire [1:0] sw,
	output [7:0] Led,
	output wire [2:0] red,
	output wire [2:0] green,
	output wire [1:0] blue,
	output wire hsync,
	output wire vsync,
	output wire [7:0] seg,
	output wire [3:0] an
	);

	wire pix_en;
	wire clk_en;
	wire display_en;

	reg rst_vga;
	reg rst_ff;
	 
	always @(posedge clk or posedge sw[1]) begin
		if (sw[1]) begin
			{rst_vga,rst_ff} <= 2'b11;
		end
		else begin
			{rst_vga,rst_ff} <= {rst_ff,1'b0};
		end
	end

	clockdiv U1(
		.clk(clk),
		.rst(rst_vga),
		.clk_en(clk_en),
		.pix_en(pix_en),
		.display_en(display_en)
		);
	
	wire rst, board_switch;
	wire up, down, right, left, move;
	assign board_switch = sw[0];
	assign rst = sw[1];
		
	Debouncer deb_S(
		.clk(clk),
		.real_btn_input(btnS),
		.debounced_btn_input(move)
	);

	Debouncer deb_U(
		.clk(clk),
		.real_btn_input(btnU),
		.debounced_btn_input(up)
	);

	Debouncer deb_D(
		.clk(clk),
		.real_btn_input(btnD),
		.debounced_btn_input(down)
	);

	Debouncer deb_R(
		.clk(clk),
		.real_btn_input(btnR),
		.debounced_btn_input(right)
	);

	Debouncer deb_L(
		.clk(clk),
		.real_btn_input(btnL),
		.debounced_btn_input(left)
	);
	
	reg [3:0] currBoard = 4'b0000;
	reg [3:0] currTile = 4'b0000;
	wire [7:0] tempLed;
	wire [80:0] X_state;
	wire [80:0] O_state;
	wire [6:0] numWinsX;
	wire [6:0] numWinsO;

	// 11 = up, 01 = right, 10 = left, 00 = down
	always @ (posedge clk)
	begin
		if (rst)
		begin
			currBoard <= 4'b0000;
			currTile <= 4'b0000;
		end
		
		else
		begin
			if (board_switch)
			begin
				if (up)
				begin
					case(currTile)
						4'b0011: currTile <= 4'b0000;
						4'b0100: currTile <= 4'b0001;
						4'b0101: currTile <= 4'b0010;
						4'b0110: currTile <= 4'b0011;
						4'b0111: currTile <= 4'b0100;
						4'b1000: currTile <= 4'b0101;
						default: currTile <= currTile;
					endcase
				end
				else if (down)
				begin
					case(currTile)
						4'b0000: currTile <= 4'b0011;
						4'b0001: currTile <= 4'b0100;
						4'b0010: currTile <= 4'b0101;
						4'b0011: currTile <= 4'b0110;
						4'b0100: currTile <= 4'b0111;
						4'b0101: currTile <= 4'b1000;
						default: currTile <= currTile;
					endcase
				end
				else if (left)
				begin
					case(currTile)
						4'b0001: currTile <= 4'b0000;
						4'b0010: currTile <= 4'b0001;
						4'b0100: currTile <= 4'b0011;
						4'b0101: currTile <= 4'b0100;
						4'b0111: currTile <= 4'b0110;
						4'b1000: currTile <= 4'b0111;
						default: currTile <= currTile;
					endcase
				end
				else if (right)
				begin
					case(currTile)
						4'b0000: currTile <= 4'b0001;
						4'b0001: currTile <= 4'b0010;
						4'b0011: currTile <= 4'b0100;
						4'b0100: currTile <= 4'b0101;
						4'b0110: currTile <= 4'b0111;
						4'b0111: currTile <= 4'b1000;
						default: currTile <= currTile;
					endcase
				end
			end
			else
			begin
				if (up)
				begin
					case(currBoard)
						3: currBoard <= 4'b0000;
						4: currBoard <= 4'b0001;
						5: currBoard <= 4'b0010;
						6: currBoard <= 4'b0011;
						7: currBoard <= 4'b0100;
						8: currBoard <= 4'b0101;
						default: currBoard <= currBoard;
					endcase
				end
				else if (down)
				begin
					case(currBoard)
						0: currBoard <= 4'b0011;
						1: currBoard <= 4'b0100;
						2: currBoard <= 4'b0101;
						3: currBoard <= 4'b0110;
						4: currBoard <= 4'b0111;
						5: currBoard <= 4'b1000;
						default: currBoard <= currBoard;
					endcase
				end
				else if (left)
				begin
					case(currBoard)
						1: currBoard <= 4'b0000;
						2: currBoard <= 4'b0001;
						4: currBoard <= 4'b0011;
						5: currBoard <= 4'b0100;
						7: currBoard <= 4'b0110;
						8: currBoard <= 4'b0111;
						default: currBoard <= currBoard;
					endcase
				end
				else if (right)
				begin
					case(currBoard)
						0: currBoard <= 4'b0001;
						1: currBoard <= 4'b0010;
						3: currBoard <= 4'b0100;
						4: currBoard <= 4'b0101;
						6: currBoard <= 4'b0111;
						7: currBoard <= 4'b1000;
						default: currBoard <= currBoard;
					endcase
				end
			end
		end
	end

	GameState state(
		.rst(rst),
		.move(move),
		.clk(clk_en),	
		.currBoard(currBoard),
		.currTile(currTile),
		.X_state(X_state),
		.O_state(O_state),
		.numWinsX(numWinsX),
		.numWinsO(numWinsO)
		);


	// VGA controller
	vga640x480 U3(
		.pix_en(pix_en),
		.clk(clk),
		.rst(rst_vga),
		.o_vec(O_state),
		.x_vec(X_state),
		.currBoard(currBoard),
		.currTile(currTile),
		.hsync(hsync),
		.vsync(vsync),
		.red(red),
		.green(green),
		.blue(blue)
		);
	
	Display d(
		.numWinsX(numWinsX),
		.numWinsO(numWinsO),
		.clk(display_en),
		.seg(seg),
		.an(an),
		.ledState(tempLed)
	);

	// Display Module
	assign Led[7:0] = tempLed;

endmodule
