/*
   Filename: dbuf.v
    Version: 1.0
   Standard: Verilog
Description: Guaranteed to be a buffer chain independent of inputs
     Author: Phillip Marlowe (@phillipmmarlowe)
*/
//1.38
`define BUF_CELL sky130_fd_sc_hd__buf_1  
`timescale 1ns/1ps

module dbuf #(parameter WIDTH=32) ( 
	input 			    pulse_i,
	output [WIDTH-1:0]	meas_o
);
    
	(* keep *) wire [WIDTH:0] ffout_w;
	assign ffout_w[0] = pulse_i;
    assign meas_o = ffout_w[WIDTH:1];
	
	generate 
		genvar i;
		for(i=0; i<WIDTH; i=i+1) begin : dbuf_genblk
		    `BUF_CELL DB ( 
                .X(ffout_w[i+1]), 
                .A(ffout_w[i])
                `ifdef USE_POWER_PINS
                    , .VGND(VGND)
                    , .VPWR(VPWR)
                    , .VPB(VPB)
                    , .VNB(VNB)
                `endif  // USE_POWER_PINS
            );
        end
   	endgenerate

endmodule
