// Contador Módulo M de 4 bits
// contador hasta 9
//
module c_uriel023c(
input clk,
input rst,
output reg [3:0] S0,
output reg [1:0] S1
);



wire [3:0] D0;
wire [1:0] D1;
wire sel0;
wire sel24;
wire sel1;
wire aux1;
wire aux2;


//Contador de HR0
always @(negedge clk or  posedge rst) 
begin
  if (rst) begin
	S0<=4'b0000;
	end
  else begin
	S0<=D0;
  end
end


assign sel0=(S0==9) ? 1'b1 : 1'b0;
assign aux1=(sel0|sel24);
assign D0=(aux1) ? 4'b0000 : S0+1;


//Contador de HR1
always @(negedge aux1 or  posedge rst)
begin
  if (rst) begin
	S1<=2'b00;
	end
  else begin
	S1<=D1;
  end
end

assign sel1=(S1==2) ? 1'b1 : 1'b0;
assign aux2=(sel1|sel24);
assign D1=(aux2) ? 2'b00 : S1+1;



assign sel24=((S1==2)&&(S0==3)) ? 1'b1 : 1'b0;

endmodule

