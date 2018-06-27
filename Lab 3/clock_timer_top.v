`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:48:17 05/15/2018 
// Design Name: 
// Module Name:    clock_timer_top 
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
module clock_timer_top(sw, btnS, btnR, clk, 
	seg, an);
	input [7:0] sw;
	input btnS;
	input btnR;
	input clk;
	 
	output [7:0] seg;
	output [3:0] an;
	
	wire [3:0] sec1;
	wire [2:0] sec10;
	wire [3:0] min1;
	wire [2:0] min10;
	wire oneHzClock;
	wire twoHzClock;
	wire fastClock;
	wire adjustClock;
	wire [7:0] seven_segment_cache;
	wire [3:0] an_cache;
	
	wire[1:0] select = sw[1:0];
	wire adj = sw[2];
	wire rst;
	wire async_rst;
	reg [1:0] async_rst_reg;
	reg [16:0] clk_div;
	wire [17:0] clk_div_cnt;

	reg clk_en;
	reg pause;
	reg pause_curr = 0;
	reg [2:0] step_d;
	
	// allows the reset button to work
	assign async_rst = btnR;
	assign rst = async_rst_reg[0];
	always @ (posedge clk or posedge async_rst)
	begin
		if (async_rst) 
			async_rst_reg <= 2'b11;
		else
			async_rst_reg <= {1'b0, async_rst_reg[1]};
	end
	
	// clock divider where reset brings it 0, otherwise puts most significant bit in clk_en
	assign clk_div_cnt = clk_div + 1;
	always @ (posedge clk)
	begin
		if (rst)
			begin
				clk_div <= 0;
				clk_en <= 1'b0;
			end
		else
			begin
				clk_div <= clk_div_cnt[16:0];
				clk_en <= clk_div_cnt[17];
			end
	end
	
	// debouncer code
	always @ (posedge clk) 
	begin
		if (rst)
			begin
				step_d[2:0] <= 0;
			end
		else if (clk_en)
			begin
				step_d[2:0] <= {btnS, step_d[2:1]};
			end
	end
	
	// ensures that button is really pressed and not just metastability issues
	wire is_btnS_posedge;
	assign is_btnS_posedge = ~step_d[0] & step_d[1];
	always @ (posedge clk)
	begin
		if(rst)
			pause <= 1'b0;
		else if (clk_en)
			pause <= is_btnS_posedge;
		else
			pause <= 0;
	end
	
	// checks if pause button was hit
	always @ (posedge clk)
	begin
		if (rst) 
			pause_curr <= 1'b0;
		else if (clk_en && (is_btnS_posedge == 1) && adj == 0)
			if (pause_curr == 1'b1)
				pause_curr <= 1'b0;
			else
				pause_curr <= 1'b1;
	end
	
	counter counter_module (
		.rst(rst), .clk(clk), .btnS(is_btnS_posedge), .oneHzClock(oneHzClock), 
		.twoHzClock(twoHzClock), .select(select), .adj(adj), .pause(pause_curr),
		.secondsUnitFinal(sec1), .secondsTensFinal(sec10), 
		.minutesUnitFinal(min1), .minutesTensFinal(min10)
	);

	clock_counter clock_counter_module (
		.clk(clk), .rst(rst),
		.oneHzClock(oneHzClock), .twoHzClock(twoHzClock),
		.fastClock(fastClock), .adjustClock(adjustClock)
	);
	
	clock clock_module (
		.sec1(sec1), .sec10(sec10), .min1(min1), .min10(min10),
		.select(select), .pause(pause_curr), .adj(adj),
		.blink(adjustClock), .faster(fastClock),
		.seven_segment(seven_segment_cache), .an(an_cache)
	);
	
	assign seg[7:0] = seven_segment_cache;
	assign an[3:0] = an_cache;	
endmodule
