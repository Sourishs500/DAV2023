module sevenSegDisplay_alarm(
   input [19:0] num,
	output [7:0] n1,
	output [7:0] n2,
	output [7:0] n3,
	output [7:0] n4,
	output [7:0] n5,
	output [7:0] n6
);
		
	reg [3:0] first;
	reg [3:0] second;
	reg [3:0] third;
	reg [3:0] fourth;
	reg [3:0] fifth;
	reg [3:0] sixth;
			
	sevenSegDigit one(first, 1'd1, n6);
	sevenSegDigit two(second, 1'd1, n5);
	sevenSegDigit three(third, 1'd1, n4);
	sevenSegDigit four(fourth, 1'd1, n3);
	sevenSegDigit five(fifth, 1'd1, n2);
	sevenSegDigit six(sixth, 1'd1, n1);

	always_comb begin

		sixth = num % 'd10;
		
		fifth = (num / 'd10) % 'd10;		 
		
		fourth = (num / 'd100) % 'd10;
		
		third = (num / 'd1000) % 'd6;
		
		second = (num / 'd6000) % 'd10;
		
		first = (num / 'd60000) % 'd10;
		
	end

endmodule