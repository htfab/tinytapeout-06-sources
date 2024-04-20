module shifter(A, LA, LR, Y, C);

  // inputs
  input [3:0] A;
  input LA, LR;

  // outputs
  output [3:0] Y;
  output C;
  
  //LA, which tells the shifter if the desired instruction is a logical shift (0) or arithmetic shift (1)
  //LR, which indicates the direction of the shift (0 = left)
  //Note that there is no arithmetic left shift instruction, so when LR = 0, LA is ignored

  /* ADD YOUR CODE BELOW THIS LINE */
  
  reg C;
  reg [3:0] Y;

  always @(*) begin
   //shift left
	if (LR == 1'b0) begin
		C = A[3];
		Y = {A[2:0], 1'b0};
	end
	//shift right logical
	else if (LR == 1'b1 & LA == 1'b0) begin
		C = A[0];
		Y = {1'b0, A[3:1]};
	end
	//shift right arithmetic
	else if (LR == 1'b1 & LA == 1'b1) begin
		C = A[0];
		Y = {A[3], A[3:1]};
	end
	//if no either case occurs
	else begin
		Y = A;
		C = 1'b0;
	end
  end
  
  /* ADD YOUR CODE ABOVE THIS LINE */

endmodule
