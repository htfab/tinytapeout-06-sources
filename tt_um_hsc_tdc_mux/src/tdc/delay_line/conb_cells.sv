module const_ones #(parameter N=64) (
    output [N-1:0] ones
);

    genvar i;

    generate
        for(i=0; i<N; i=i+1) begin : const_ones_genblk
            sky130_fd_sc_hd__conb_1 const_one(
                .HI(ones[i])
                `ifdef USE_POWER_PINS
                    , .VGND(VGND)
                    , .VPWR(VPWR)
                    , .VPB(VPWR)
                    , .VNB(VGND)
                `endif  // USE_POWER_PINS 
            );
        end
    endgenerate

endmodule

module const_zeros #(parameter N=64) (
    output [N-1:0] zeros
);

    genvar i;

    generate
        for(i=0; i<N; i=i+1) begin : const_zeros_genblk
            sky130_fd_sc_hd__conb_1 const_zero(
                .LO(zeros[i])
                `ifdef USE_POWER_PINS
                    , .VGND(VGND)
                    , .VPWR(VPWR)
                    , .VPB(VPWR)
                    , .VNB(VGND)
                `endif  // USE_POWER_PINS 
            );
        end
    endgenerate

endmodule
