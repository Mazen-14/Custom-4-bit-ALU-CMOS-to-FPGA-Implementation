module ALU(input clk,in,output reg [7:0]OUT);
wire [3:0] A,B;
reg [3:0]S;
assign A=2;
assign B=6;

initial begin
	S=0;
end



always @(posedge in)begin 
	S=S+1;
end

always @(posedge clk) begin
	
	case(S)
		4'b0000:OUT={{4{A[3]}},A}+4'b0001;
		4'b0001:OUT={{4{B[3]}},B}+4'b0001;
		4'b0010:OUT={{4{A[3]}},A};
		4'b0011:OUT={{4{B[3]}},B};
		4'b0100:OUT={{4{A[3]}},A}+8'b11111111;
		4'b0101:OUT={{4{A[3]}},A}*{{4{B[3]}},B};
		4'b0110:OUT={{4{A[3]}},A}+{{4{B[3]}},B};
		4'b0111:OUT={{4{A[3]}},A}-{{4{B[3]}},B};
		4'b1000:OUT=~A+4'b0001;
		4'b1001:OUT=~B+4'b0001;
		4'b1010:OUT=A&B;
		4'b1011:OUT=A|B;
		4'b1100:OUT=A^B;
		4'b1101:OUT=~(A^B);
		4'b1110:OUT=~(A&B);
		4'b1111:OUT=~(A|B);
		default:OUT=8'b0;
	endcase
end
	
endmodule
