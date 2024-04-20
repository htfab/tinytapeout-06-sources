module fullAdder(A, B, CI, S, CO);

  // inputs
  input A;
  input B;
  input CI;
  
  // outputs
  output S;
  output CO;

  assign S = (A ^ B ^ CI);
  assign CO = (A & B) | (A & CI) | (B & CI);


endmodule
