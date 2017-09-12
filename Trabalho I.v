module PiscaLeds(
    input CLOCK_50,
    input [3:0] KEY,
    input [9:0] SW,
    output [7:0]LEDG,
    output [9:0]LEDR    
	);

	reg [25:0]cont = 0;
	reg [9:0]l = 0;
	reg [3:0]k = 0;
	assign LEDR = l;

	always @(posedge  CLOCK_50) begin
    	cont = cont + k;
    	if(cont == 50000000)begin
    		cont = 0;
        	l = l+1;
    	end
		if(KEY == 14)begin
			k = 1;
		end
		if(KEY == 13)begin
			k = 2;
		end
		if(KEY == 11)begin
			k = 4;
		end
		if(KEY == 7)begin
			k = 8;
		end
	end

endmodule