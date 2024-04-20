`default_nettype none
`timescale 1ns/1ps
module adder(
    input[7:0]  a,
    input[7:0]  b,
    input       sub,
    output[7:0] out
    );

    assign out = (sub) ? a-b : a+b;

endmodule
