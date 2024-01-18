
module miniALU_top(
	input [3:0] op1,
	input [3:0] op2,
	input optype,
	input sw,
	output [7:0] n1,
	output [7:0] n2,
	output [7:0] n3,
	output [7:0] n4,
	output [7:0] n5,
	output [7:0] n6

);

	sevenSegDisplay UUT(op1, op2, optype, sw, n1, n2, n3, n4, n5, n6);
	
	

endmodule