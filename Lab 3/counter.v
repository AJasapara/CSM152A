`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:19:36 05/10/2018 
// Design Name: 
// Module Name:    counter 
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
module counter(input rst, input clk, input btnS, input oneHzClock, 
	input twoHzClock, input [1:0] select, input adj, input pause,
	output wire [3:0] secondsUnitFinal, output wire [2:0] secondsTensFinal, 
	output wire [3:0] minutesUnitFinal, output wire [2:0] minutesTensFinal
    );

reg [3:0] secondsUnitCounter = 0;
reg [2:0] secondsTensCounter = 0;
reg [3:0] minutesUnitCounter = 0;
reg [2:0] minutesTensCounter = 0;

always @(posedge clk)
begin
	if (rst)
	begin
		//initialize counters for seconds and minutes
		secondsUnitCounter <= 0;
		secondsTensCounter <= 0;
		minutesUnitCounter <= 0;
		minutesTensCounter <= 0;
	end
	
	if (twoHzClock)
	begin
		if (adj == 1'b1)
		case(select)
			0: secondsUnitCounter <= (secondsUnitCounter == 4'b1001) ? 4'b0000:secondsUnitCounter+1'b1;
			1: secondsTensCounter <= (secondsTensCounter == 3'b101) ? 3'b000:secondsTensCounter+1'b1;
			2: minutesUnitCounter <= (minutesUnitCounter == 4'b1001) ? 4'b0000:minutesUnitCounter+1'b1;
			3: minutesTensCounter <= (minutesTensCounter == 3'b101) ? 3'b000:minutesTensCounter+1'b1;
		endcase
	end

	if(oneHzClock)
	begin
		if (adj == 1'b0 && pause == 1'b0)
		begin
			if (secondsUnitCounter == 4'b1001)
			begin
			//set it to 0 and increment the tens counter for seconds
				secondsUnitCounter <= 4'b0000;
				secondsTensCounter <= secondsTensCounter + 1'b1;
				//the seconds tens counter is 5 and the units is 9
				if (secondsTensCounter == 3'b101)
				begin
					//so set it to 0 and increment the unit counter for minutes
					secondsTensCounter <= 3'b000;
					minutesUnitCounter <= minutesUnitCounter + 1'b1;
					//the minute unit counter is 9
					if (minutesUnitCounter == 4'b1001)
					begin
						//so set it to 0 and increment the tens counter for minutes
						minutesUnitCounter <= 4'b0000;
						minutesTensCounter <= minutesTensCounter + 1'b1;
						//the tens counter is 5, so just set it to zero, an hour has passed
						if(minutesTensCounter == 3'b101)
							minutesTensCounter <= 3'b000;
					end
				end
			end
			else if (secondsUnitCounter < 4'b1001)
				secondsUnitCounter <= secondsUnitCounter + 1'b1;
		end
	end
end
//just keep incrementing otherwise

//assign the outputs to the counters
assign secondsUnitFinal = secondsUnitCounter;
assign secondsTensFinal = secondsTensCounter;
assign minutesUnitFinal = minutesUnitCounter;
assign minutesTensFinal = minutesTensCounter;
endmodule
