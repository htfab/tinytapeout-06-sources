/*
 * Copyright (c) 2024 Steffen Reith 
 * SPDX-License-Identifier: Apache-2.0
 */

`define default_netname none

module tt_um_SteffenReith_ASGTop (
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // will go high when the design is enabled
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

   // A reset signal for the ASG
  wire reset = !(rst_n && ena);

  // Don't use the IOs as outputs
  assign uio_out = 8'b0000_0000;

  // Set the directions for the IOs (unused at all) 
  assign uio_oe = 8'bZZZZ_ZZZZ;

  // Set unused outputs to Z
  assign uo_out[7:1] = 7'bZZZZ_ZZZ;

  //Instantiate the ASG and connect the signals
  ASG asg (
    .loadIt(ui_in[1:0]),
    .load(ui_in[2]),
    .enable(ui_in[3]),
    .newBit(uo_out[0]),
    .reset(reset),
    .clk(clk)
  );

endmodule
