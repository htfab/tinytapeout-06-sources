// `timescale 1ns/1ps
module tdc_top #(
    parameter N=64,    
    parameter DL_TYPE="RCA",
    parameter POP_METHOD="SV",
    parameter N_SYNC=1 // Must be gt 0
)(
    input logic
        clk_launch,
        clk_capture,
        rst,
        en,
    input logic
        val_in,    
    input logic 
        pg_src,
        pg_bypass,
    input logic
        pg_in,
        pg_tog,
    output logic [$clog2(N):0]
        hw,
    output logic
        val_out
);

(* keep *) logic
    pg_out;

logic [N-1:0]
    dl_out,
    capt_out,
    sync_out;

logic [N-1:0]
    capt_reg_r [N_SYNC:0];

logic [0:0] 
    val_out_sync_r [N_SYNC:0];

logic
    val_out_pg,
    val_out_capt,
    val_out_sync;

tdc_pg pg(
	.clk_launch(clk_launch),
	.rst(rst), 
    .en(en),
    .val_in(val_in),
    .pg_in(pg_in), 
    .pg_tog(pg_tog),	
    .pg_src(pg_src),
  	.pg_bypass(pg_bypass),
  	.pg_out(pg_out),
    .val_out(val_out_pg)
);

delay_line #(
    .N(N),
    .DL_TYPE(DL_TYPE)
) dl_inst ( 
	.in(pg_out),
	.dl_out(dl_out)
);

////////////////// TODO: Place in separate module 

// Capture register - separated for placement
capture_reg #(
    .WIDTH(N)
) dl_capt (   
    .D(dl_out), 
    .Q(capt_out), 
    .EN(en), 
    .CLK(clk_capture)
);

always_ff@(posedge clk_capture) begin
    if(rst) begin
        val_out_capt <= 1'b0;
    end else if(en) begin
        val_out_capt <= val_out_pg;
    end
end

// Capture sync stages
always_comb capt_reg_r[0] = capt_out;
genvar i;
generate
    for(i=1; i<=N_SYNC; i=i+1) begin : genblk_capt
        always_ff@(posedge clk_capture)
            if(rst)
                capt_reg_r[i] <= {N{1'b0}};
            else if(en)
                capt_reg_r[i] <= capt_reg_r[i-1];
    end
endgenerate
always_comb sync_out = capt_reg_r[N_SYNC];

// Valid sync stages
always_comb val_out_sync_r[0] = val_out_capt;
genvar j;
generate
    for(j=1; j<=N_SYNC; j=j+1) begin : genblk_val_out
        always_ff@(posedge clk_capture)
            if(rst)
                val_out_sync_r[j] <= {N{1'b0}};
            else if(en)
                val_out_sync_r[j] <= val_out_sync_r[j-1];
    end
endgenerate
always_comb val_out_sync = val_out_sync_r[N_SYNC];

////////////////// 

// Can swap out if needed for performance
pop_count_simple #(
    .N(N),
    .POP_METHOD(POP_METHOD)
) pc_inst (
    .clk(clk_capture), 
    .rst(rst),
    .en(en),
    .val_in(val_out_sync),
    .x(sync_out),
    .y(hw),
    .val_out(val_out)
);

endmodule
