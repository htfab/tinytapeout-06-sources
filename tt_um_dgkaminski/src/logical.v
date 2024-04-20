module logical(A, B, OA, Y);

  // inputs
  input [3:0] A, B;
  input OA;

  // outputs
  output [3:0] Y;
  
  //OA = 0 is OR
  //OA = 1 is AND

  /* ADD YOUR CODE BELOW THIS LINE */

  assign Y = OA ? (A & B) : (A | B);
  
  /* ADD YOUR CODE ABOVE THIS LINE */

endmodule
