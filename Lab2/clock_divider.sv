
module clock_divider #(BASE_SPEED=50000000) (
input clk, 
input [$clog2(1000000):0] speed, 
input reset,
output outClk
);

	logic increment = (BASE_SPEED / speed) - 1;
	reg [$clog2(50):0] counter = 0;
	
	reg outClk_d;
	reg [$clog2(50):0] counter_d = 0;
	
	always_comb begin
	
		if(reset == 1b'0)
			counter_d = 0;
			outClk_d = 0;
		else 
			if(counter <= (increment / 2))
				outClk_d = 0;
			else 
				outClk_d = 1;
			counter_d = counter_d + 1;
	end
	
	always@(posedge clk) begin
		counter <= counter_d;
		outClk <= outClk_d;
	end
	

endmodule
