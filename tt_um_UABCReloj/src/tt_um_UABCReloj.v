/*
 * Copyright (c) 2024 Your Name
 * SPDX-License-Identifier: Apache-2.0
 */

`define default_netname none

module tt_um_UABCReloj (
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // will go high when the design is enabled
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

  // All output pins must be assigned. If not used, assign to 0.
  //assign uo_out  = ui_in + uio_in;  // Example: ou_out is the sum of ui_in and uio_in
  //assign uio_out = 0;
  //assign uio_oe  = 0;
 
    topReloj23B3 U0(
        .rst(ui_in[0]),
        .clk(ui_in[1]),
        .P0(ui_in[2]),
        .set(ui_in[3]),
        .M0(uo_out[3:0]),
        .M1(uo_out[7:4]),
        .H0(uio_out[3:0]),
        .H1(uio_out[5:4]),
        .Dots(uio_out[6])
    );

    assign uio_oe[7:0]=8'b11111111;
    assign uio_out[7]=1'b0;
    
    
endmodule


