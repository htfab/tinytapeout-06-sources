//`include "c_ame09.v"
//`include "c_mel04.v"
//`include "c_div2.v"

module divisorf_b(
input clk, //master
input rst,
output f100
);

wire ck0,ck1,ck2,ck3,ck4;


c_ame09 U0(
.clk(clk),  //entrada cuenta en flanco negativo
.rst(rst),  // entrada (0=rst)
.ya(ck0)   //salida 1 cuando salida es 9
);

c_ame09 U1(
.clk(ck0),  //entrada cuenta en flanco negativo
.rst(rst),  // entrada (0=rst)
.ya(ck1)   //salida 1 cuando salida es 9
);

c_ame09 U2(
.clk(ck1),  //entrada cuenta en flanco negativo
.rst(rst),  // entrada (0=rst)
.ya(ck2)   //salida 1 cuando salida es 9
);


c_mel04 U3(
.clk(ck2),  //entrada cuenta en flanco negativo
.rst(rst),  // entrada (0=rst)
.ya(ck3)   //salida 1 cuando salida es 9
);

c_div2 U4(
.clk(ck3),
.rst(rst),
.Z(ck4)
);




assign f100=ck4;

endmodule



