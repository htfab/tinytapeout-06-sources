// `timescale 1ns/1ps
module tdc_pg (
	input
		clk_launch,
		rst, 
        en,
        val_in,
    input
  		pg_in, 
        pg_tog,	
    input
		pg_src,
  		pg_bypass,
  	output logic
  		pg_out,
        val_out
);

localparam
    PG_IN=1'b0,
    PG_TOG=1'b1;
  
localparam
    BYPASS=1'b1,
    REG=1'b0;

logic 
	mux_in_dout,
	pg_r_out,
    val_r_out;

always@(*)
	case(pg_src) 
		 PG_IN: mux_in_dout = pg_in;
		PG_TOG: mux_in_dout = pg_tog;
	endcase

always@(*)
	case(pg_bypass) 
		REG: begin
            pg_out = pg_r_out;
            val_out = val_r_out;
        end
		BYPASS: begin
            pg_out = pg_tog;
            val_out = val_in;
        end
	endcase

always@(posedge clk_launch)
    if(rst) begin
        pg_r_out <= 1'b0;
        val_r_out <= 1'b0;
    end else if(en) begin
        pg_r_out <= mux_in_dout;
        val_r_out <= val_in;
    end
endmodule
