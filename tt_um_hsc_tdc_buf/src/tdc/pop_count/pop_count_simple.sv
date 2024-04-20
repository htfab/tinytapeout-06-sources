/*
   Filename: pop_count_simple.sv
    Version: 1.0
   Standard: SystemVerilog 2012
Description: Simple pop count methods
     Author: Tyler Sheaves (@tsheaves)
*/
// `timescale 1ns/1ps
module pop_count_simple 
#(
    parameter N=64,
    parameter POP_METHOD="SV"
)(
	input logic
		clk, 
        rst,
        en,
        val_in,
    input logic [N-1:0]
		x,
	output logic [$clog2(N):0]
		y,
    output logic
        val_out
);

    logic [$clog2(N):0]
		y_c;
 
    generate
        // Easy ways of computing pop count 
        case(POP_METHOD)
            "LOOP": begin : loop_pop_genblk
                always@(*) begin
                    y_c = {$clog2(N)+1{1'b0}};
                    for(int i=0; i < N; i+=1) begin
                        y_c = y_c + {{$clog2(N){1'b0}}, x[i]}; 
                    end
                end
            end 
            "SV": begin : sv_pop_genblk
                always_comb
                    y_c = $countones(x);
            end
        endcase
    endgenerate

    // Ouput registers
    always@(posedge clk) begin
        if(rst) begin
            y <= {$clog2(N)+1{1'b0}};
            val_out <= 1'b0;
        end else if(en) begin
            y <= y_c;
            val_out <= val_in;
        end
    end

`ifdef ASSERT_ON
  	check_popcount:
        assert
            property (                                  
                @(posedge clk) disable iff (rst || $past(x)==={N{1'bx}} || x==={N{1'bx}})
                    y == $countones($past(x))
            )
            else                                    
                $error("Error y (%0d) doesn't equal modeled value (%d) for x (%0b)",
                       y, $countones($past(x)), $past(x));
`endif

endmodule
