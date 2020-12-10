`timescale 1ns / 1ps

module VGAtest;

	// Inputs
	reg clk;

	// Outputs
	wire hsync;
	wire vsync;
	wire [3:0] red;
	wire [3:0] green;
	wire [3:0] blue;
	// Instantiate the Unit Under Test (UUT)
	top uut (
		.clk(clk), 
		.hsync(hsync), 
		.vsync(vsync), 
		.red(red), 
		.green(green),
		.blue(blue)
	);
always #5 clk=!clk;
	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

