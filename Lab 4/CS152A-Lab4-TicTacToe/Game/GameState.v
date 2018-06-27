`timescale 1ns / 1ps
module GameState (
	
	input rst, // start over, new game
	input move, // indicate that you want to make a move
	input clk,
	input [3:0] currBoard,
	input [3:0] currTile,
	
	output wire [80:0] X_state,
	output wire [80:0] O_state,
	output wire [6:0] numWinsX,
	output wire [6:0] numWinsO
	);
	
	reg reset = 0;
	reg [8:0] X_overall = 0;
	reg [8:0] O_overall = 0;
	reg [7:0] currPos;
	reg [80:0] X_pos = 0;
	reg [80:0] O_pos = 0;
	reg [6:0] tmp_Score_X = 0;
	reg [6:0] tmp_Score_O = 0;
	reg player = 0;
	reg tmp_player = 0;
		
	// Tile Blocks
	// 0 | 1 | 2
	// 3 | 4 | 5
	// 6 | 7 | 8
	
	reg [80:0] cmp_O_pos;
	reg [80:0] tmp_O_pos = 0;
	reg [80:0] tmp_X_pos = 0;
	reg [80:0] cmp_X_pos;
	reg [80:0] tmp_pos = 81'b000000000000000000000000000000000000000000000000000000000000000000000000000000001;
	always @(*)
	begin
		/*if(rst)
		begin
			tmp_O_pos = 0;
			tmp_X_pos = 0;
			tmp_player = 0;
			
		end*/
		if(move)
		begin
			tmp_pos = 81'b000000000000000000000000000000000000000000000000000000000000000000000000000000001;
			currPos = currBoard*9 + currTile;
			tmp_pos = tmp_pos << currPos;
			cmp_X_pos = X_pos >> currPos;
			cmp_O_pos = O_pos >> currPos;
			if ((cmp_X_pos[0]|cmp_O_pos[0])!=1)
			begin
				cmp_X_pos = tmp_X_pos >> currPos;
				cmp_O_pos = tmp_O_pos >> currPos;
				if ((cmp_X_pos[0]|cmp_O_pos[0])!=1)
				begin
					if(player == 0) // O move
						tmp_O_pos = O_pos | tmp_pos;

					else if(player == 1) // X move
						tmp_X_pos = X_pos | tmp_pos;
					tmp_player = ~player;
				end
			end
		end
	end
	 
	reg [4:0] i = 0;
	reg [8:0] cmp_X = 0;
	reg [8:0] cmp_O = 0;
	reg [80:0] tmp_X_store = 0;
	reg [80:0] tmp_O_store = 0;
	reg [8:0] temp_overall;
	always @ (posedge clk or posedge rst)
	begin
		if (rst) begin
			player = 0; // initial player is 0
			X_pos = 0;
			O_pos = 0;
			X_overall = 0;
			O_overall = 0;
			tmp_Score_O = 0;
			tmp_Score_X = 0;
			tmp_X_store = 0;
			tmp_O_store = 0;
			cmp_X = 0;
			cmp_O = 0;
		end
		else 
		begin
			reset = 0;
			i = 8;
			temp_overall = 9'b000000001;
			player = tmp_player;
			X_pos = tmp_X_pos;
			O_pos = tmp_O_pos;
			repeat (9)
			begin
				tmp_X_store = X_pos >> (i*9);
				tmp_O_store = O_pos >> (i*9);
				cmp_X = tmp_X_store[8:0];
				cmp_O = tmp_O_store[8:0];
				if(cmp_O == 9'b000000111 || cmp_O == 9'b000111000 || cmp_O == 9'b111000000 || // horizontal
					cmp_O == 9'b100100100 || cmp_O == 9'b010010010 || cmp_O == 9'b001001001 || //vertical
					cmp_O == 9'b100010001 || cmp_O == 9'b001010100) //diagonal
				begin
					tmp_O_store[8:0] = 9'b111111111;
					tmp_X_store[8:0] = 9'b000000000;
					cmp_X = 9'b000000000;
					cmp_O = 9'b111111111;
					O_overall = O_overall | (temp_overall << i);
				end
				else if(cmp_X == 9'b000000111 || cmp_X == 9'b000111000 || cmp_X == 9'b111000000 || // horizontal
					cmp_X == 9'b100100100 || cmp_X == 9'b010010010 || cmp_X == 9'b001001001 || //vertical
					cmp_X == 9'b100010001 || cmp_X == 9'b001010100) //diagonal
				begin
					tmp_X_store[8:0] = 9'b111111111;
					tmp_O_store[8:0] = 9'b000000000;
					cmp_X = 9'b111111111;
					cmp_O = 9'b000000000;
					X_overall = X_overall | (temp_overall << i);
				end
				else if((cmp_O | cmp_X) == 9'b111111111 && &cmp_O != 1'b1 && &cmp_X != 1'b1)
				begin
					tmp_O_store[8:0] = 9'b000000000;
					tmp_X_store[8:0] = 9'b000000000;
					reset =1;
				end
				X_pos = ((X_pos << ((9-i)*9)) >> ((9-i)*9)) | tmp_X_store << (i*9);
				O_pos = ((O_pos << ((9-i)*9)) >> ((9-i)*9)) | tmp_O_store << (i*9);
				i = i-1;
			end
			if(O_overall == 9'b000000111 || O_overall == 9'b000111000 || O_overall == 9'b111000000 || // horizontal
					O_overall == 9'b100100100 || O_overall == 9'b010010010 || O_overall == 9'b001001001 || //vertical
					O_overall == 9'b100010001 || O_overall == 9'b001010100)
			begin
				tmp_Score_O = tmp_Score_O + 1;
				player = 0; // initial player is 0
				X_pos = 0;
				O_pos = 0;
				tmp_O_store = 0;
				tmp_X_store = 0;
				X_overall = 0;
				O_overall = 0;
				if (tmp_Score_O > 99)
					tmp_Score_O = 0;
			end
			else if(X_overall == 9'b000000111 || X_overall == 9'b000111000 || X_overall == 9'b111000000 || // horizontal
					X_overall == 9'b100100100 || X_overall == 9'b010010010 || X_overall == 9'b001001001 || //vertical
					X_overall == 9'b100010001 || X_overall == 9'b001010100)
			begin
				tmp_Score_X = tmp_Score_X + 1;
				player = 0; // initial player is 0
				X_pos = 0;
				O_pos = 0;
				tmp_O_store = 0;
				tmp_X_store = 0;
				X_overall = 0;
				O_overall = 0;
				if (tmp_Score_X > 99)
					tmp_Score_X = 0;
			end
			else if((X_overall | O_overall) == 9'b111111111 && &O_overall != 1'b1 && &X_overall != 1'b1)
			begin
				X_overall = 9'b000000000;
				O_overall = 9'b000000000;
				X_pos = 0;
				O_pos = 0;
				player = 0; // initial player is 0
			end
			
		end
	end
	
	assign X_state = X_pos;
	assign O_state = O_pos;
	assign numWinsX = tmp_Score_X;
	assign numWinsO = tmp_Score_O;

endmodule
