`timescale 1ns/1ns

module clock_divider_tb(
output outClk
);

	reg clk; 
	reg [$clog2(1000000):0] speed = 19'd500000; 
	reg reset = 0;
	

	clock_divider (clk, speed, reset, outClk);

	initial begin
		clk = 0;
		#10000 $stop;
	end
	
	always begin
		#10 clk = ~clk;
	end

endmodule
