module QIFNeuron (
  input wire clk,          // Clock input
  input  wire rst_n,       // Reset input
  input  wire [7:0] I_syn,     // Input B (8-bit, signed)
  output  wire [7:0] V_mem     // Output voltage V (8-bit, signed) 
);
  
   
  reg [7:0] A;  
  assign V_mem=A;
  always @(posedge clk  or posedge rst_n) begin
          
        if (rst_n) begin
            A <= 0;
       end else begin
            if (A>=8'sd50) begin
                A<=-8'sd20;
            end else begin
               A<=A+I_syn/4+(A/8)*(A/8);
        end
        end
   end
endmodule
