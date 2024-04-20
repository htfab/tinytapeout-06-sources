module control(FS, BSEL, CISEL, OSEL, SHIFT_LA, SHIFT_LR, LOGICAL_OA, CSEL); // add other outputs here

  // inputs
  input  [2:0]  FS;

  // constants for the function select
  // good practice that helps readablity
  // and save you from typing lots of numerical constants
  localparam FS_ADD = 3'b000;
  localparam FS_SUB = 3'b001;
  localparam FS_SRA = 3'b010;
  localparam FS_SRL = 3'b011;
  localparam FS_SLL = 3'b100;
  localparam FS_AND = 3'b101;
  localparam FS_OR  = 3'b110;

  /* ADD YOUR CODE BELOW THIS LINE */

  // outputs (add others here)
  output reg BSEL, CISEL, SHIFT_LA, SHIFT_LR, LOGICAL_OA;
  output reg [1:0] OSEL, CSEL;
  

  // constants for outputs (you can add more)
  // good practice that helps readablity
  // and save you from typing lots of numerical constants
  localparam BSEL_B  = 1'b0;
  localparam BSEL_BN = 1'b1;
  localparam CISEL_ADD = 1'b0;
  localparam CISEL_SUB = 1'b1;
  localparam OSEL_ADDER = 2'd0;
  localparam OSEL_SHIFT = 2'd1;
  localparam OSEL_LOGICAL = 2'd2;
  localparam CSEL_ADDER = 2'd0;
  localparam CSEL_ZERO = 2'd1;
  localparam CSEL_SHIFT = 2'd2;
  localparam SHIFT_LA_ARITHMETIC = 1'b1;
  localparam SHIFT_LA_LOGICAL = 1'b0;
  localparam SHIFT_LR_RIGHT = 1'b1;
  localparam SHIFT_LR_LEFT = 1'b0;
  localparam LOGICAL_OA_AND = 1'b1;
  localparam LOGICAL_OA_OR = 1'b0;
  localparam DONT_CARE = 1'b0;

  // internal variables (you can add more)

  // implement the control logic here
  always @(*) begin
    case (FS)
      FS_ADD: begin
        BSEL = BSEL_B;
		  CISEL = CISEL_ADD;
		  OSEL = OSEL_ADDER;
		  SHIFT_LA = DONT_CARE;
		  SHIFT_LR = DONT_CARE;
		  LOGICAL_OA = DONT_CARE; 
		  CSEL = CSEL_ADDER;
      end
		
      FS_SUB: begin
        BSEL = BSEL_BN;
		  CISEL = CISEL_SUB;
		  OSEL = OSEL_ADDER;
		  SHIFT_LA = DONT_CARE;
		  SHIFT_LR = DONT_CARE;
		  LOGICAL_OA = DONT_CARE; 
		  CSEL = CSEL_ADDER;
      end
		
		FS_SRA: begin
        BSEL = DONT_CARE;
		  CISEL = DONT_CARE;
		  OSEL = OSEL_SHIFT;
		  SHIFT_LA = SHIFT_LA_ARITHMETIC;
		  SHIFT_LR = SHIFT_LR_RIGHT;
		  LOGICAL_OA = DONT_CARE; 
		  CSEL = CSEL_SHIFT;
      end
		
		FS_SRL: begin
        BSEL = DONT_CARE;
		  CISEL = DONT_CARE;
		  OSEL = OSEL_SHIFT;
		  SHIFT_LA = SHIFT_LA_LOGICAL;
		  SHIFT_LR = SHIFT_LR_RIGHT;
		  LOGICAL_OA = DONT_CARE; 
		  CSEL = CSEL_SHIFT;
      end
		
		FS_SLL: begin
        BSEL = DONT_CARE;
		  CISEL = DONT_CARE;
		  OSEL = OSEL_SHIFT;
		  SHIFT_LA = SHIFT_LA_LOGICAL;
		  SHIFT_LR = SHIFT_LR_LEFT;
		  LOGICAL_OA = DONT_CARE; 
		  CSEL = CSEL_SHIFT;
      end
		
		FS_AND: begin
        BSEL = DONT_CARE;
		  CISEL = DONT_CARE;
		  OSEL = OSEL_LOGICAL;
		  SHIFT_LA = DONT_CARE;
		  SHIFT_LR = DONT_CARE;
		  LOGICAL_OA = LOGICAL_OA_AND; 
		  CSEL = CSEL_ZERO;
      end
		
		FS_OR: begin
        BSEL = BSEL_B;
		  CISEL = DONT_CARE;
		  OSEL = OSEL_LOGICAL;
		  SHIFT_LA = DONT_CARE;
		  SHIFT_LR = DONT_CARE;
		  LOGICAL_OA = LOGICAL_OA_OR; 
		  CSEL = CSEL_ZERO;
      end
		
      default: begin
        BSEL = BSEL_B;
		  CISEL = DONT_CARE;
		  OSEL = 2'd0;
		  SHIFT_LA = DONT_CARE;
		  SHIFT_LR = DONT_CARE;
		  LOGICAL_OA = DONT_CARE; 
		  CSEL = CSEL_ZERO;
      end
    endcase
  end

  /* ADD YOUR CODE ABOVE THIS LINE */

endmodule
