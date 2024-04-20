/*
   Filename: dand.v
    Version: 1.0
   Standard: Verilog
Description: Guaranteed to be an and chain independent of inputs
     Author: Phillip Marlowe (@phillipmmarlowe)
*/
//4.14
`define MUX_CELL sky130_fd_sc_hd__mux2_4

/*
module const_ones #(parameter N=64) (
    output [N-1:0] ones
);
    genvar i;
    generate
        for(i=0; i<N; i=i+1) begin : const_ones_genblk
            sky130_fd_sc_hd__conb_1 const_one(
                .HI(ones[i])
                `ifdef USE_POWER_PINS
                    , .VGND(VGND)
                    , .VPWR(VPWR)
                    , .VPB(VPWR)
                    , .VNB(VGND)
                `endif  // USE_POWER_PINS 
            );
        end
    endgenerate
endmodule

module const_zeros #(parameter N=64) (
    output [N-1:0] zeros
);

    genvar i;

    generate
        for(i=0; i<N; i=i+1) begin : const_zeros_genblk
            sky130_fd_sc_hd__conb_1 const_zero(
                .LO(zeros[i])
                `ifdef USE_POWER_PINS
                    , .VGND(VGND)
                    , .VPWR(VPWR)
                    , .VPB(VPWR)
                    , .VNB(VGND)
                `endif  // USE_POWER_PINS 
            );
        end
    endgenerate

endmodule

*/



module dmux #(parameter WIDTH=32) ( 
	input 			    pulse_i,
	output [WIDTH-1:0]	meas_o
);
    
	(* keep *) wire [  WIDTH:0] ffout_w;
	(* keep *) wire [WIDTH-1:0] lo_int;
	(* keep *) wire [WIDTH-1:0] hi_int;
	
	const_zeros #(.N(WIDTH)) u_zeros(
        .zeros(lo_int)
    );
	
	const_ones #(.N(WIDTH)) u_ones(
        .ones(hi_int)
    );
	
    assign meas_o = ffout_w[WIDTH-1:0];
    assign ffout_w[0] = pulse_i;

	generate 
		genvar i;
		for(i=0; i<WIDTH; i=i+1) begin : dmux_genblk
		    `MUX_CELL DM ( 
                .X(ffout_w[i+1]), 
                .A0(lo_int[i]), 
                .A1(hi_int[i]),
				.S(ffout_w[i])
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
