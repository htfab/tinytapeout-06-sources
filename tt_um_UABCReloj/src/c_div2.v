// Contador Módulo M de 4 bits
// contador hasta 4
//
module c_div2(
input clk,
input rst,
output Z
);


reg Q;
wire D;

always @(negedge clk or posedge rst)
begin
  if (rst) begin
	Q<=1'b0;
	end
  else begin
	Q<=D;
  end
end

assign D=~Q;

assign Z = Q;

endmodule

