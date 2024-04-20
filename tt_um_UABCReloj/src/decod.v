

module decod(
input [1:0] A,
output C0,
output C1,
output C2,
output C3
);


//and U0(C0,~A[1],~A[0]);
//and U1(C1,~A[1],A[0]);
//and U2(C2,A[1],~A[0]);
//and U3(C3,A[1],A[0]);

assign C0=(~A[1]&~A[0]);
assign C1=(~A[1]& A[0]);
assign C2=( A[1]&~A[0]);
assign C3=( A[1]& A[0]);
  
endmodule


