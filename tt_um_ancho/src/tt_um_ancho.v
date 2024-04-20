/*
 * Copyright (c) 2024 Your Name
 * SPDX-License-Identifier: Apache-2.0
 */

`define MF_JA_LD none

module tt_um_ancho (
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // will go high when the design is enabled
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);
    ancho c (.clock(ui_in[7]), .enable(ui_in[6]), .speed(ui_in[5:3]), .PWM(uo_out[0]));
    assign uo_out[7:1]=7'b0000000;
    assign uio_out[7:0]=8'b00000000;
    assign uio_oe=8'b00000000;
endmodule
