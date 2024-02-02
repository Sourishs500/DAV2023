`timescale 1ns/1ns

module buzzer_tb(output b);
	
	reg clk;
	buzzer #(28'd500000) UUT(clk, 0, b);
	
	initial begin
		clk = 0;
		#10000 $stop;
	end
	
	always begin
		#10 clk = ~clk;
	end

endmodule