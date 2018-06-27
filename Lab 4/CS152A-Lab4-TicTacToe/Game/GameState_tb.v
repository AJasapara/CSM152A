
`timescale 1ns / 1ps

module GameState_TB;
	reg rst;
	reg move;
	reg clk;
	//reg player;
	reg [3:0] nextMove;

	wire [8:0] X_state;
	wire [8:0] O_state;
	wire [8:0] AIMove;
	wire [8:0] AIMove_hard;
	wire [7:0] numWins;
	wire [2:0] status;
	reg AISwitch;
	
	integer i, j;
	
	initial begin
		clk = 0;
		rst = 1;
		AISwitch =0 ;
		move = 0;
		#1 rst = 0;
		i = 0; j = 0;
		while(i < 9 && j < 9)
		begin
			if(X_state[i] == 1)
				$write("X");
			else if(O_state[i] == 1)
				$write("O");
			else
				$write("B");
			if((i +1) %3 == 0 && i != 0) $write("\n");
			i = i+1; j=j+1;
		end
		$write("\n\n\n");
		
		
		move =1;//make move
		//player =0;//O
		nextMove = 1; // top left
		#20
		//$display("Game Status: %b X-state: %b O-state: %b", status, X_state, O_state);
		i = 0; j = 0;		while(i < 9 && j < 9)
		begin
			if(X_state[i] == 1)
				$write("X");
			else if(O_state[i] == 1)
				$write("O");
			else
				$write("B");
			if((i +1) %3 == 0 && i != 0) $write("\n");
			i = i+1; j=j+1;
		end
		$write("\n\n\n");
		
		
		move = 0;
		#20
		move = 1;//make move
		//player =1;//O
		nextMove = 2; // top left
		
		
		#5
		i = 0; j = 0;
				while(i < 9 && j < 9)
		begin
			if(X_state[i] == 1)
				$write("X");
			else if(O_state[i] == 1)
				$write("O");
			else
				$write("B");
			if((i +1) %3 == 0 && i != 0) $write("\n");
			i = i+1; j=j+1;
		end
		$write("\n\n\n");
		
		
		move = 0;
		//$display("Game Status: %b X-state: %b O-state: %b", status, X_state, O_state);
		#20
		move = 1;
		nextMove = 3;
		i = 0; j = 0;
		
				while(i < 9 && j < 9)
		begin
			if(X_state[i] == 1)
				$write("X");
			else if(O_state[i] == 1)
				$write("O");
			else
				$write("B");
			if((i +1) %3 == 0 && i != 0) $write("\n");
			i = i+1; j=j+1;
		end
		$write("\n\n\n");
		
		#5
				i = 0; j = 0;
		
				while(i < 9 && j < 9)
		begin
			if(X_state[i] == 1)
				$write("X");
			else if(O_state[i] == 1)
				$write("O");
			else
				$write("B");
			if((i +1) %3 == 0 && i != 0) $write("\n");
			i = i+1; j=j+1;
		end
		$write("\n\n\n");
		
		move = 0;
		#20
		i = 0; j = 0;
		while(i < 9 && j < 9)
		begin
			if(X_state[i] == 1)
				$write("X");
			else if(O_state[i] == 1)
				$write("O");
			else
				$write("B");
			if((i +1) %3 == 0 && i != 0) $write("\n");
			i = i+1; j=j+1;
		end
		$write("\n");
		$display("X_pos | AIMove %b", AIMove);
		$display("X: %b", X_state);
		$display("O: %b", O_state);
		$display("Game Status: %b", status);
		$display(O_state == 9'b000_000_111 || O_state == 9'b000_111_000 || O_state == 9'b111_000_000 || 
					O_state == 9'b100_100_100 || O_state == 9'b010_010_010 || O_state == 9'b001_001_001 ||
					O_state == 9'b100_010_001 || O_state == 9'b001_010_100);
		$finish;
	end

	always #5 clk = ~clk;

		
SimpleAI sa(
	.X_state(X_state),
	.O_state(O_state),
	.AIMove(AIMove)
	);
	
LookupTableAI hard_ai(
	.X_state(X_state),
	.O_state(O_state),
	.AIMove(AIMove_hard)
	);
GameState state(
	.rst(rst),
	.move(move),
	.clk(clk),
	
	.nextMove(nextMove),
	.AISwitch(AISwitch),
	.AIMove(AIMove),
	.AIMove_Hard(AIMove_hard),
	
	.numWins(numWins),
//	.player(player),
	.X_state(X_state),
	.O_state(O_state),
	.GameStatus(status)
	);


	




endmodule