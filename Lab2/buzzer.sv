module buzzer #(FREQ=15'd880) (
input clk, 
input reset, 
output logic pin
);

	// reg [28:0] speed = 15'd880; // frequency of A5 note is 880
	reg outClk = 0;
	
	clock_divider clk2(clk, FREQ, reset, outClk);
	
	
	always@(outClk) begin
		if(outClk) begin
			pin <= 1;
		end else begin
			pin <= 0;
		end
	end
	
	

endmodule