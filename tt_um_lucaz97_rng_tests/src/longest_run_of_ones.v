module longest_run_of_ones (
  clk, rst_n, valid_rsc_dat, valid_triosy_lz, is_random_rsc_dat, is_random_triosy_lz,
      epsilon_rsc_dat, epsilon_triosy_lz
);
  input clk;
  input rst_n;
  output valid_rsc_dat;
  output valid_triosy_lz;
  output is_random_rsc_dat;
  output is_random_triosy_lz;
  input epsilon_rsc_dat;
  output epsilon_triosy_lz;



  // Interconnect Declarations for Component Instantiations 
  longest_run_of_ones_core longest_run_of_ones_core_inst (
      .clk(clk),
      .rst_n(rst_n),
      .valid_rsc_dat(valid_rsc_dat),
      .valid_triosy_lz(valid_triosy_lz),
      .is_random_rsc_dat(is_random_rsc_dat),
      .is_random_triosy_lz(is_random_triosy_lz),
      .epsilon_rsc_dat(epsilon_rsc_dat),
      .epsilon_triosy_lz(epsilon_triosy_lz)
    );
endmodule