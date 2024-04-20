/*
 * Copyright (c) 2024 Ivan Pancheniak
 * SPDX-License-Identifier: Apache-2.0
 */

module signal (
    input wire [12:0] in,
    output wire signal
);

assign signal = in[12];

endmodule
