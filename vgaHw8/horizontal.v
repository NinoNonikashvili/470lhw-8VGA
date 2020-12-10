`timescale 1ns / 1ps

module horizontal(
	input slowclk,
	output reg startVerCount=0,
	output reg[15:0] pixInRow=0  
    );
 always @(posedge slowclk)
	 begin
		 if(pixInRow<799)
		 begin
		 pixInRow<=pixInRow+1;
				if(pixInRow == 798)
				startVerCount <= 1;
				else
				startVerCount <= 0;
		 end
		 else begin
		 startVerCount<=0;
		 pixInRow<=0;
		 end
	 end

endmodule
