module alarmcontroller(
input clk,
input speed,
input reset,
input ssp,
input [8:0] switches,
output logic [19:0] num
);

	clock_divider myClk(clk, speed, reset, outClk);
	
	localparam SET = 3'd1;
	localparam RUN = 3'd2;
	localparam PAUSE = 3'd3;
	localparam BEEP = 3'd4;
	
	reg [2:0] currentState_d;
	reg [19:0] num_d;
	
	always_comb begin
	
		case (currentState)
		
			SET: begin				
			
			end
			
			RUN: begin
			
			end
			
			PAUSE: begin
			
			end
			
			BEEP: begin
			
			end
		
		endcase
	
	end
	
	always@(posedge outClk) begin
	
		currentState <= currentState_d;
		num <= num_d;
	
	end

endmodule