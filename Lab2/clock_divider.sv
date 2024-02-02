
module clock_divider #(BASE_SPEED=50000000) (
input clk, 
input [$clog2(1000000):0] speed, 
input reset,
output logic outClk
);

	logic [$clog2(1000000):0] increment;
	reg [$clog2(25000000):0] counter = 0;
	
	reg outClk_d;
	reg [$clog2(25000000):0] counter_d;
	
	always_comb begin
	
		increment = (BASE_SPEED / speed) - 1;
		
		if(reset == 1'b1) begin
			counter_d = 0;
			outClk_d = 0;
		end else begin
			if(counter <= (increment / 2)) begin
				outClk_d = 0;
			end else begin 
				outClk_d = 1;
			end
			
			if(counter == increment) begin
				counter_d = 0;
			end else begin
				counter_d = counter + 1;
			end
		end
		
	end
	
	always@(posedge clk) begin
		counter <= counter_d;
		outClk <= outClk_d;
	end
	

endmodule
