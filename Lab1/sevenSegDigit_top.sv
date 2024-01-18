module sevenSegDigit_top(
	output [7:0] seg
);
	reg sw = 1;
	reg [3:0] num = 4'b0101;

	sevenSegDigit UUT(num, sw, seg);
	

endmodule