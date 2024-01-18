module clock_divider_tb(
output outClk
);

	UUT clock_divider #(50000000) clock_div(clk, speed, reset, outputClk);

	initial begin
		clock = 0;
		#10000 $stop;
		
		
	
	end
	always begin
		#10 clock = ~clock;
		
		
	
	end

endmodule
