module ram #(parameter addr_width = 4, parameter data_width = 4)
 (
 	input clk, we,
  	input [addr_width - 1:0] addr,
  	input [data_width - 1:0] data_in,
  	output[data_width - 1:0] data_out
 );

  reg [addr_width - 1:0] addri;
  reg [data_width - 1:0] mem [(32'b1<<addr_width):0];

  always @(posedge clk) begin
    if (we) mem[addr] = data_in;
    addri = addr;
  end			  
  
  assign data_out = mem[addri];

endmodule //sram1p
