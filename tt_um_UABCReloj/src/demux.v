

module demux(
input P0,
input [1:0]selA,
output  PMx,
output  PM0,
output  PM1,
output  PH
);

//and U0(PMx,~selA[1],~selA[0],P0);
//and U1(PM0,~selA[1], selA[0],P0);
//and U2(PM1, selA[1],~selA[0],P0);
//and U3(PH,  selA[1], selA[0],P0);

assign PMx = (~selA[1]&~selA[0]&P0);
assign PM0 = (~selA[1]& selA[0]&P0);
assign PM1 = ( selA[1]&~selA[0]&P0);
assign PH  = ( selA[1]& selA[0]&P0);

endmodule



