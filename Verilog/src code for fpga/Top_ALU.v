module Top_ALU(input clk,in,output [0:6]seg,output [3:0] an);

	wire [7:0] alu_out;
	ALU a1(clk,in,alu_out);
	digital_tube_decoder m1(clk,alu_out,1'b0,seg,an);
	
	
endmodule