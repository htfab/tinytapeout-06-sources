module adder(A, B, CI, Y, C, V);

  // inputs
  input [3:0] A, B;
  input CI;

  // outputs
  output [3:0] Y;
  output C, V;

  wire [2:0] carryTemp;
  
  /* ADD YOUR CODE BELOW THIS LINE */
  
  fullAdder bit0Adder(
	.A(A[0]),
	.B(B[0]),
	.CI(CI),
	.S(Y[0]),
	.CO(carryTemp[0])
  );
  
  fullAdder bit1Adder(
	.A(A[1]),
	.B(B[1]),
	.CI(carryTemp[0]),
	.S(Y[1]),
	.CO(carryTemp[1])
  );
  
	fullAdder bit2Adder(
	.A(A[2]),
	.B(B[2]),
	.CI(carryTemp[1]),
	.S(Y[2]),
	.CO(carryTemp[2])
  );

  fullAdder bit3Adder(
	.A(A[3]),
	.B(B[3]),
	.CI(carryTemp[2]),
	.S(Y[3]),
	.CO(C)
  );
  
  assign V = (C != carryTemp[2]);
	
  /* ADD YOUR CODE ABOVE THIS LINE */


endmodule
