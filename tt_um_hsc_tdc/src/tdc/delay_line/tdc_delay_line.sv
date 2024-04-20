/*
   Filename: tdc_delay_line.sv
    Version: 1.0
   Standard: SystemVerilog 2012
Description: Create a delay line using vmacros
     Author: Tyler Sheaves (@tsheaves)
*/
// `timescale 1ns/1ps
module delay_line #(
    parameter N=64,
    parameter DL_TYPE="RCA"
) ( 
	input 
        in,
	output [N-1:0]
        dl_out
);
	
    generate
	    case(DL_TYPE)
		    "RCA": begin : dl_genblk
			    rca_dl #(.WIDTH(N)) dl (
				    .pulse(in),
                    .meas(dl_out)
			    );
            end
	    endcase
    endgenerate

endmodule
