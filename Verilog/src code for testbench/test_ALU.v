`timescale 1ns/1ps

module ALU_tb;
	reg [3:0] A, B, S;
	reg clk;
	wire [7:0] OUT;
	ALU uut (
		.A(A),
		.B(B),
		.S(S),
		.clk(clk),
		.OUT(OUT)
	);

  	always #5 clk = ~clk;

	always @(posedge clk) begin
		$display("Time=%0t: A=%b | B=%b | S=%b | OUT=%b", $time, A, B, S, OUT);
	end

  	initial begin
		clk = 0;
		A = 4'b0011; // A = 3
		B = 4'b0101; // B = 5

    // Loop through all ALU operations
    for (S = 4'b0000; S <= 4'b1111; S = S + 1) begin
    	#10;
    end

    #20;
    $finish;
  end

endmodule




