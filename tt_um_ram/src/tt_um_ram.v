/*
 * Copyright (c) 2024 Your Name
 * SPDX-License-Identifier: Apache-2.0
 */

`define default_netname none

module tt_um_ram (
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // will go high when the design is enabled
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

    ram #(.addr_width(4), .data_width(4)) r1 (.clk(clk), .we(uio_in[0]), .addr(ui_in[3:0]), .data_in(ui_in[7:4]), .data_out(uo_out[3:0]));

    assign uio_oe[7:0] = 8'b11111110;
    assign uio_out[7:0] = 8'b00000000;
    assign uo_out[7:4] = 4'b0000;
        
endmodule
