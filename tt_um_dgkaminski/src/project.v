/*
 * Copyright (c) 2024 Daniel Kaminski
 * Code referenced from course ECE2300 taught at Cornell University by Professor Zhiru Zhang
 * SPDX-License-Identifier: Apache-2.0
 */

`define default_netname none

module tt_um_dgkaminski (
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output) //so for each bit, input if uio_oe[n] is 0, output if 1
    input  wire       ena,      // will go high when the design is enabled
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);


/*assignments by pin:

	A: First 4-bit input to ALU
	B: Second 4-bit input to ALU
	FS: Op-codes for ALU, following table in GitHub page
	Y: 4-bit ALU output
	C: Carry out
	V: Overflow (active high)
	N: Negative check (active high)
	Z: Zero output check (active high)
	
	ui_in[7:4] -> A[3:0]
	ui_in[3:0] -> B[3:0]
	uio_oe[2:0] -> 1'b0, enables uio_in[7:4] to be input, will set all to 1 here for ease
	uio_in[2:0] -> FS[2:0]
	uo_out[7:4] -> Y[3:0]
	uo_out[3] -> C
	uo_out[2] -> V
	uo_out[1] -> N
	uo_out[0] -> Z

*/

  alu alu0(
  .A(ui_in[7:4]), 
  .B(ui_in[3:0]), 
  .FS(uio_in[2:0]),
  .Y(uo_out[7:4]),
  .C(uo_out[3]),
  .V(uo_out[2]),
  .N(uo_out[1]),
  .Z(uo_out[0])
  );
  
  assign uio_oe[7:0] = 8'd0; //sets the IO to inputs
  assign uio_out = 0;
 

endmodule
