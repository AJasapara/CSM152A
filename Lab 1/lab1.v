`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:16:50 04/12/2018 
// Design Name: 
// Module Name:    lab1 
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
module lab1(D, S, E, F
    );
	input wire [11:0]D;
	reg [11:0]raw;
	output wire S;
	output wire [2:0]E;
	output wire [3:0]F;
	convertRaw cr(.D(D), .S(S), .raw(raw));
	rounding r(.raw(raw), .E(E), .F(F));
endmodule

module convertRaw(D, S, raw);
	input wire [11:0]D;
	output wire S;
	output reg [11:0]raw;
	always @* begin
		raw = 12'b0000000000000;
		if (D[11] == 1) begin
			S=1;
			if (D == 12'b100000000000) begin
				raw = 12'b011111111111;
			end
			else begin
				raw = ~D + 1'b1;
			end
		end
		else begin
			S = 0;
			raw = D;
		end
	end
endmodule

module rounding(raw, E, F);
	input reg [11:0]raw;
	wire [3:0]index;
	output wire [2:0]E;
	output wire [3:0]F;
	
	always @* begin
		E[2] = raw[10]|raw[9]|raw[8]|raw[7];
		E[1] = (~raw[8]&~raw[7]&(raw[5]|raw[6]))|raw[9]|raw[10];
		E[0] = (~raw[9]&((~raw[7]&~raw[5]&raw[4])|(~raw[7]&raw[6])|raw[8]))|raw[10];
		for (index = 4'b0000; index < 4'b1000-E; index = index + 1) begin
			raw = raw << 1;
		end
		F[3] = raw[11];
		F[2] = raw[10];
		F[1] = raw[9];
		F[0] = raw[8];
		if (raw[7] == 1) begin
			F = F + 1'b1;
			if (F == 4'b0000) begin
				F = 4'b1000;
				E = E + 1'b1;
				if (E == 3'b000) begin
					E = 3'b111;
				end
			end
		end
	end
endmodule


