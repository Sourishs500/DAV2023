module alarmcontroller_top(
	input clk,
	input speed,
	input reset,
	input ssp,
	input [8:0] switches,
	output [7:0] n1,
	output [7:0] n2,
	output [7:0] n3,
	output [7:0] n4,
	output [7:0] n5,
	output [7:0] n6,
	output buzzer
);

	logic [19:0] num;
	
	alarmcontroller alarm(clk, speed, reset, ssp, switches, num, buzzer);
	sevenSegDisplay_alarm disp(num, n1, n2, n3, n4, n5, n6);
	
	

endmodule