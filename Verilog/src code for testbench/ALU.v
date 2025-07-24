module ALU(input [3:0]A,B,S,input clk,output reg [7:0]OUT);

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
