`timescale 1ns / 1ps
 module vertical(
	input slowclk,
	input startVerCount,
	output reg[15:0] pixInCol=0  
    );
 always @(posedge slowclk)
	 begin
		if(startVerCount==1)
		 if(pixInCol<524)
		 pixInCol<=pixInCol+1;
		 else
		 pixInCol<=0;
	 end

endmodule 