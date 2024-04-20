// Contador Módulo M de 4 bits
// contador hasta 9
//
module c_america09(
input clk,
input rst,
output ya,
output [3:0] salida
);


reg [3:0]Q;
wire [3:0] D;
wire sel;

always @(negedge clk or  posedge rst)
begin
  if (rst) begin
	Q<=4'b0000;
	end
  else begin
	Q<=D;
  end
end

assign sel=(Q==9) ? 1'b1 : 1'b0;
assign D=(sel) ? 4'b0000 : Q+1;

assign salida = Q;
assign ya =sel;

endmodule

