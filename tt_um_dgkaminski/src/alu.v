module alu(A, B, FS, Y, C, V, N, Z);
  input  [3:0]  A;
  input  [3:0]  B;
  input  [2:0]  FS;

  output [3:0]  Y;
  output        C;
  output        V;
  output        N;
  output        Z;


  /* ADD YOUR CODE BELOW THIS LINE */
  wire BSEL, CISEL, SHIFT_LA, SHIFT_LR, LOGICAL_OA;
  wire [1:0] OSEL, CSEL;
  
  wire [3:0] Y_ADD,Y_SHIFT, Y_LOGIC;
  wire C_ADD, C_SHIFT;
  wire V_ADD;

  control controller0(
	 .FS(FS),
	 .BSEL(BSEL), 
	 .CISEL(CISEL), 
	 .OSEL(OSEL), 
	 .SHIFT_LA(SHIFT_LA), 
	 .SHIFT_LR(SHIFT_LR), 
	 .LOGICAL_OA(LOGICAL_OA), 
	 .CSEL(CSEL) 
  );
  
  adder add0(
	 .A(A),
	 .B(BSEL ? ~B : B),
	 .CI(CISEL ? 1'b1 : 1'b0),
	 .Y(Y_ADD),
	 .C(C_ADD),
	 .V(V_ADD)
  );
  
  shifter shift0(
	 .A(A),
	 .LA(SHIFT_LA),
	 .LR(SHIFT_LR),
	 .Y(Y_SHIFT), 
	 .C(C_SHIFT)
  );
  
  logical logic0(
	 .A(A),
	 .B(BSEL ? ~B : B),
	 .OA(LOGICAL_OA),
	 .Y(Y_LOGIC)
  );
  
    assign V = (((FS == 3'b000) | (FS == 3'b001)) ? V_ADD : 1'b0); //check for an overflow if using the adder, otherwise set to zero
	assign Z = (Y == 4'd0); //always check for a zero output
	assign N = Y[3]; //always check for a negative output
	assign C = (CSEL == 2'd0 ? C_ADD : (CSEL == 2'd2 ? C_SHIFT : 1'b0)); //select the desired carry out
	assign Y = (OSEL == 2'd0 ? Y_ADD : (OSEL == 2'd1 ? Y_SHIFT : (OSEL == 2'd2 ? Y_LOGIC : 4'b0000))); //select your desired Y

  /* ADD YOUR CODE ABOVE THIS LINE */


endmodule
