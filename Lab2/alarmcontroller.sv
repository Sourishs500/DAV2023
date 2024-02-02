module alarmcontroller(
input clk,
input speed,
input reset,
input ssp,
input [8:0] switches,
output logic [19:0] num,
output logic buzzer
);

	// speed should be 100 Hz or 200 Hz (once a second or twice a second)

	clock_divider myClk(clk, (speed + 100), reset, outClk);
	
	localparam SET = 3'd1;
	localparam RUN = 3'd2;
	localparam PAUSE = 3'd3;
	localparam BEEP = 3'd4;
	
	reg [2:0] currentState = SET;
	//assign num = 19'd0;
	
	reg [2:0] currentState_d;
	reg [19:0] num_d;
	
	always_comb begin
	
		case (currentState)
		
			SET: begin			
				num_d = switches;
				buzzer = 0;
				
				if(ssp == 0) begin
					currentState_d = RUN;
				end
			end
			
			RUN: begin
				// num_d = num;
				buzzer = 0;
				
				if(ssp == 0) begin
					currentState_d = PAUSE;
				end
				
				if(reset == 0) begin
					currentState_d = SET;
				end
				
				if(num == 0) begin
					currentState_d = BEEP;
				end
				
			
			end
			
			PAUSE: begin
				assign buzzer = 0;
				
				if(ssp == 0) begin
					currentState_d = RUN;
				end
				
				if(reset == 0) begin
					currentState_d = SET;
				end
			
			end
			
			BEEP: begin
			
				num = 0;
				assign buzzer = outClk; // not sure about this
				
				if(reset == 0) begin
					currentState_d = SET;
				end
			
			end
		
		endcase
	
	end
	
	always@(posedge outClk) begin
	
		currentState <= currentState_d;
		num <= num_d;
		
		if(currentState == RUN) begin
			num = num - 1;
		end
		
		
	
	end

endmodule