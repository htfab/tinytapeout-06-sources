

module count2b(
input ck,
input rst,
output [1:0] C0
);

reg [1:0]Q;
wire [1:0]D;

always @(negedge ck or posedge rst)
begin
  if (rst) begin
	Q<=2'b00;
	end
  else begin
	Q<=D;
  end
end

assign D=Q+1;
assign C0 = Q;

endmodule




