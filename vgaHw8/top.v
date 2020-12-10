`timescale 1ns / 1ps

module top( 
	input clk,
	output hsync, vsync,
	output [3:0] red, green,
	output [3:0] blue  
    );
wire slowclock, enableVerCount; 
wire [15:0] pixInRow;
wire[15:0] pixInCol;

clkDiv slowclk(clk, slowclock);
horizontal vgaHorizontal(slowclock, enableVerCount, pixInRow);
vertical vgaVertical(slowclock, enableVerCount, pixInCol);

assign hsync = (pixInRow<96)? 0:1;
assign vsync = (pixInCol<2)? 0:1;

 assign red = (pixInRow > 143 && pixInRow < 784 && pixInCol < 515 && pixInCol > 34) ? 15 : 0;
 assign green = (pixInRow > 143 && pixInRow < 784 && pixInCol < 515 && pixInCol > 34) ? 15 : 0;
 assign blue = (pixInRow > 143 && pixInRow < 784 && pixInCol < 515 && pixInCol > 34) ? 15 : 0;

endmodule
