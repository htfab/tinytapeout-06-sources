`default_nettype none 
`timescale 1ns/1ps
`define TOSTRING(x) `"x`"

module tb ();

  string sdf_path = `TOSTRING(`SDF);

  // Dump the signals to a VCD file. You can view it with gtkwave.
  initial begin
    `ifdef SDF_ANNOTATE
        $sdf_annotate(sdf_path, tdc_inst) ;
    `endif
    `ifdef WAVES
        $dumpfile("tb.vcd");
        $dumpvars(0, tb);
    `endif
    #1;
  end

  reg
    clk_capture,
    clk_launch;

  reg
    pg_in,      // Direct TDC input
    pg_tog,     // Free-running TDC toggle input
    pg_src,     // Input select
    pg_bypass,  // Input sync register bypass
    val_in;
  
  reg
    val_out;
    
  reg [6:0]
    hw;

  // TT I/O to design
  reg 
    clk, // unused
    rst_n,
    ena;

  reg [7:0] 
    ui_in,
    uio_in;
  wire [7:0] 
    uo_out,
    uio_out,
    uio_oe;
    
    // Free-run toggle, will be driven from FPGA/test instrument
    reg [1:0] count;    
    always@(posedge clk_launch)
        if(!rst_n)
            count <= 2'b0;
        else
            count <= count + 2'b1;
    
    assign pg_tog = count[1];

    // Rename TT I/O
    always@(*) begin
        ui_in[0] = clk_launch;
        ui_in[1] = clk_capture;
        ui_in[2] = pg_src;
        ui_in[3] = pg_bypass;
        ui_in[4] = pg_in;
        ui_in[5] = pg_tog;
        ui_in[6] = val_in;
        ui_in[7] = 1'b1;
        hw = uo_out[6:0];
        val_out = uo_out[7];
        // Unused
        uio_in = 8'hFF;
        clk = 1'b0;
    end

    tt_um_hsc_tdc_mux tdc_inst (
        // Include power ports for the Gate Level test:
        `ifdef USE_POWER_PINS
            .VPWR(1'b1),
            .VGND(1'b0),
        `endif
        .ui_in  (ui_in),
        .uo_out (uo_out),
        .uio_in (uio_in),
        .uio_out(uio_out),
        .uio_oe (uio_oe),
        .ena    (ena),
        .clk    (clk),
        .rst_n  (rst_n)
    );

endmodule
