/*
 * Copyright (c) 2023 Your Name
 * SPDX-License-Identifier: Apache-2.0
 */

localparam SPI_TX_BUFFER_SIZE = 64;
localparam SPI_RX_BUFFER_SIZE = 32;

localparam SPI_CMD_BITS = 8'd32; //1 byte for code, 3 for address bytes

module spi_controller # (
    parameter address_size = 16+2
    ) (
    input  wire miso,  // Main spi signals
    output wire sclk,
    output wire mosi,

    output wire in_transaction,

    input wire [2:0] num_bytes,

    input wire is_peripheral,
    input wire [7:0] peripheral_tx_bytes,

    // Limit to 3 address bytes, and 1 extra byte for whether it is
    // flash or RAM access.
    input  wire [address_size-3:0] target_address,
    output wire [31:0] fetched_value,

    input wire is_write,
    input wire [31:0] write_value,

    input  wire start_request,    // Toggle from 0 to 1 to start fetch
    output wire request_done,

    input wire clk                // system clock
);

    localparam STATE_IDLE =                     3'b001;
    localparam STATE_RUN_TRANSACTION =          3'b010;
    localparam STATE_TRANSACTION_DONE =         3'b100;

    reg [2:0] state;      // module state

    // Max tx size is 8 bytes (4 for command, with 3 byte address
    // and 4 for word)
    reg [SPI_TX_BUFFER_SIZE - 1:0] spi_tx_buffer;

    // Only fetch up to 4 bytes for now
    reg [SPI_RX_BUFFER_SIZE - 1:0] spi_rx_buffer;

    // Maximum 4 bytes to write, 4 bytes to read
    reg [7:0] spi_clk_counter;

    reg [7:0] counter_end;
    reg [31:0] write_value_swapped;

    always_comb begin
        if (is_peripheral) begin
            counter_end = 16; // 8 for tx byte and 8 for rx byte
        end else begin
            case (num_bytes)
                1:       counter_end = SPI_CMD_BITS + 8;
                2:       counter_end = SPI_CMD_BITS + 16;
                default: counter_end = SPI_CMD_BITS + 32;  // 4 bytes
            endcase
        end

        // num_bytes does not matter here, since the spi clk counter will stop
        // further bytes from being sent.
        write_value_swapped = {
            write_value[7:0], write_value[15:8], write_value[23:16], write_value[31:24]
        };
    end

    always @(posedge clk) begin
        if (state == STATE_RUN_TRANSACTION) begin
            // Sample MISO on the very first clock edge too
            spi_rx_buffer <= (spi_rx_buffer << 1) | {31'b0, miso};
        end
    end

    always @(negedge clk) begin
        if (start_request == 0) begin
            state <= STATE_IDLE;

        end else begin
            case (state)
                STATE_IDLE: begin
                    // Use 3 byte address mode for now
                    state <= STATE_RUN_TRANSACTION;

                    if (is_peripheral) begin
                        spi_tx_buffer <= {
                            peripheral_tx_bytes, 56'd0
                        };
                    end else begin
                        // Prepare the tx buffer, the MSB is transmitted first
                        // If write_value is specified, then it needs to be transformed
                        // for little-endian
                        spi_tx_buffer <= {
                            7'b0000001, ~is_write,
                            8'd0, target_address[address_size-3:0],
                            write_value_swapped
                        };
                    end

                    spi_clk_counter <= 1; // Increase by 1, so that comparison for
                                          // limit later does not need +1
                end
                STATE_RUN_TRANSACTION: begin
                    // Shift out the bits on the falling edge of the clock.
                    spi_tx_buffer   <= (spi_tx_buffer << 1);
                    spi_clk_counter <= spi_clk_counter + 1;

                    if (spi_clk_counter == counter_end) begin
                        state <= STATE_TRANSACTION_DONE;
                    end
                end
                default: ;
            endcase
        end
    end

    assign in_transaction = (state == STATE_RUN_TRANSACTION);

    // MSB is transmitted first, need to check if high impedance state is needed
    assign mosi = in_transaction & spi_tx_buffer[SPI_TX_BUFFER_SIZE-1];
    assign sclk = in_transaction & clk;

    assign request_done = (start_request == 1 & state == STATE_TRANSACTION_DONE);
    assign fetched_value = spi_rx_buffer;

endmodule
