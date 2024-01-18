`timescale 1ns/1ns

module miniALU_tb(
	output [19:0] n
	);
	
	reg [3:0] i1 = 4'b0000;
	reg [3:0] i2 = 4'b0001;
	reg sl = 1'b1;	
		
	miniALU UUT(i1, i2, sl, n);
		
	initial begin
			
		for(integer i = 0; i < 16; i = i + 1) begin
			#5;
			i1 = i1 + 1;
		
		end
		
		sl = 1'b0;
		
		i2 = 4'b0000;
		i1 = 4'b1111;
		
		for(integer i = 0; i < 4; i = i + 1) begin
			#5;
			i2 = i2 + 1;
		end
		
		$stop;
		
	end
	

endmodule