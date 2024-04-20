module tt_um_lucaz97_rng_tests (
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // will go high when the design is enabled
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

    serial serial_inst (
      .clk(clk),
      .rst_n(rst_n),
      .is_random_rsc_dat(uo_out[0]),
      .is_random_triosy_lz(),
      .valid_rsc_dat(uo_out[1]),
      .valid_triosy_lz(),
      .epsilon_rsc_dat(ui_in[0]),
      .epsilon_triosy_lz()
    );


     longest_run_of_ones longest_run_of_ones_inst (
      .clk(clk),
      .rst_n(rst_n),
      .is_random_rsc_dat(uo_out[2]),
      .is_random_triosy_lz(),
      .valid_rsc_dat(uo_out[3]),
      .valid_triosy_lz(),
      .epsilon_rsc_dat(ui_in[0]),
      .epsilon_triosy_lz()
    );

    overlapping overlapping_inst (
      .clk(clk),
      .rst_n(rst_n),
      .is_random_rsc_dat(uo_out[4]),
      .is_random_triosy_lz(),
      .valid_rsc_dat(uo_out[5]),
      .valid_triosy_lz(),
      .epsilon_rsc_dat(ui_in[0]),
      .epsilon_triosy_lz()
    );

    non_overlapping non_overlapping_inst(
      .clk(clk),
      .rst_n(rst_n),
      .is_random_rsc_dat(uo_out[6]),
      .is_random_triosy_lz(),
      .valid_rsc_dat(uo_out[7]),
      .valid_triosy_lz(),
      .epsilon_rsc_dat(ui_in[0]),
      .epsilon_triosy_lz()
    );
   
  // All output pins must be assigned. If not used, assign to 0.
  assign uio_out = 0;
  assign uio_oe  = 0;

endmodule