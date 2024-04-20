/*
 * Copyright (c) 2024 Your Name
 * SPDX-License-Identifier: Apache-2.0
 */

`define default_netname none

module tt_um_zhwa_rgb_mixer (
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // will go high when the design is enabled
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

    wire rst = ! rst_n;
    assign uio_oe = 8'b0000_0000;
    assign uio_out = 8'b0000_0000;
    assign uo_out[7:3] = 5'b0_0000;

    rgb_mixer rgb_mixer (
        .clk(clk),
        .reset(rst),
        .enc0_a(ui_in[0]),
        .enc0_b(ui_in[1]),
        .enc1_a(ui_in[2]),
        .enc1_b(ui_in[3]),
        .enc2_a(ui_in[4]),
        .enc2_b(ui_in[5]),
        .pwm0_out(uo_out[0]),
        .pwm1_out(uo_out[1]),
        .pwm2_out(uo_out[2])
    );

endmodule