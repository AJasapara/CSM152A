`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:49:21 05/10/2018 
// Design Name: 
// Module Name:    clock_counter 
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
module clock_counter(input clk, input rst, output wire twoHzClock,
	output wire oneHzClock, output wire fastClock, output wire adjustClock
    );
	 
reg [31:0] clockOne;
reg [31:0] clockTwo;
reg [31:0] clockThree;
reg [31:0] clockFour;
reg oneFreq;
reg adjustFreq;
reg twoFreq;
reg fastFreq;

//oneClock
always@(posedge(clk), posedge(rst))
begin
	if (rst == 1'b1)
		clockOne <= 32'b0;
	else if (clockOne == 100000000 - 1)
	begin
		clockOne <= 32'b0;
		oneFreq <= 1;
	end
	else
	begin
		clockOne <= clockOne+1;
		oneFreq <= 0;
	end
end

//clockTwo
always@(posedge(clk), posedge(rst))
begin
	if (rst == 1'b1)
		clockTwo <= 32'b0;
	else if (clockTwo == 50000000 - 1)
	begin
		clockTwo <= 32'b0;
		twoFreq <= 1;
	end
	else
	begin
		clockTwo <= clockTwo + 1;
		twoFreq <= 0;
	end
end

//clockThree
always @ (posedge(clk), posedge(rst))
begin
	if (rst == 1'b1)
		clockThree <= 32'b0;
	else if (clockThree == 150000 - 1)
	begin
		clockThree <= 32'b0;
		fastFreq <= ~fastFreq;
	end
	else
		clockThree <= clockThree + 1;
end

//clockFour
always @ (posedge(clk), posedge(rst))
begin
	if (rst == 1'b1)
		clockFour <= 32'b0;
	else if (clockFour == 10000000 - 1)
	begin
		clockFour <= 32'b0;
		adjustFreq <= ~adjustFreq;
	end
	else
		clockFour <= clockFour + 1;
end

assign oneHzClock = oneFreq;
assign adjustClock = adjustFreq;
assign twoHzClock = twoFreq;
assign fastClock = fastFreq;
endmodule
