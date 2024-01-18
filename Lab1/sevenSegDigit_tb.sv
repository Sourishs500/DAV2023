`timescale 1ns/1ns

module sevenSegDigit_tb(output [7:0] seg);

	reg [3:0] num = 4'b0000;
	reg sw = 1'b1;
	
	sevenSegDigit UUT(num, sw, seg);
	
	initial begin
	
		for(integer i = 0; i < 10; i = i + 1) begin
			#5;
			num = num + 1;
		end
		$stop;
		
	
	end

endmodule