module traffic_light_fsm(input logic clk,
								 input logic reset,
								 input logic TAORB,
								 output logic [1:0] LA,
								 output logic [1:0] LB);
	typedef enum logic [1:0] {S0, S1, S2, S3} statetype;
	statetype state, nextstate;
	
	typedef enum logic [1:0] {Green  = 2'b00,
									  Yellow = 2'b01,
									  Red    = 2'b10} light_type;
	logic [2:0] timer;
   logic reset_timer;	
	
	//state register
	always_ff @(posedge clk, posedge reset)
		if (reset) 
			begin 
				state <= S0;
				timer <= 3'd0;
			end 
		else 
			begin
				state <= nextstate;
				if (reset_timer)
					timer <= 3'd0;
				else 
					timer <= timer + 3'd1;
			end
					
	//next state logic
	always_comb
		begin
			nextstate = state;
			reset_timer = 1'b0;
			case (state)
				S0:	begin
							reset_timer = 1'b1;
							if (~TAORB) nextstate = S1;
						end
				S1:	if (timer == 3'd5) nextstate = S2;
				S2:	begin
							reset_timer = 1'b1;
							if (TAORB) nextstate = S3;
						end
				S3:	if (timer == 3'd5) nextstate = S0;
				default: nextstate = S0;
			endcase
		end
	
	//output logic
	always_comb
			case (state)
				S0:	begin
							LA = Green;
							LB = Red;
						end
				S1:	begin
							LA = Yellow;
							LB = Red;
						end
				S2:	begin
							LA = Red;
							LB = Green;
						end
				S3:	begin
							LA = Red;
							LB = Yellow;
						end
				default:	begin
								LA = Red;
								LB = Red;
							end
			endcase  			
endmodule