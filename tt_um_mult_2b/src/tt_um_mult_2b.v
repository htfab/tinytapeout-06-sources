/*
 * Copyright (c) 2024 Your Name
 * SPDX-License-Identifier: Apache-2.0
 */

`define default_netname none

module tt_um_mult_2b (
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
    mult_2b c1 (.a(ui_in[1:0]),.b(ui_in[3:2]),.out(uo_out[3:0]));
    assign uio_oe = 8'b00000000;
    assign uio_out [7:0] = 8'b00000000;
    assign uo_out [7:4] = 4'b0000;
    
endmodule
