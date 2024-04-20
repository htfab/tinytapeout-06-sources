

// Reloj salida sin demultiplexar
// Salida de 4 bits en BCD
// Los datos están en formato BCD (H1,H0: M1,M0)
//                                /    |:|      \
//                                 Hora :  Minutos

// Reloj de entrada de 1MHz
//`include "c_ame09.v"
/*`include "c_mel05.v"
`include "c_america09.v"
`include "c_melissa05.v"
`include "c_uriel023c.v"
//`include "c_mel04.v"
//`include "c_div2.v"
`include "count2b.v" 
`include "demux.v"
`include "decod.v"
`include "divisorf_b.v"*/

module topReloj23B3(
input rst,
input clk,  //reloj master 1MHz
input P0,
input set,
output [3:0] M0,
output [3:0] M1,
output [3:0] H0,
output [1:0] H1,
output Dots
);


wire [3:0] M0A;
wire [3:0] M1A;
wire [3:0] H0A;
wire [1:0] H1A;

//wire [3:0] sel;
wire f0,f10,f100,f2;
wire ck0,ck1,ck2,ck3;
wire ck1b,ck2b,ck3b;
wire [1:0] selA;
wire PM0,PM1,PH,PX;
wire C0,C1,C2,C3;


//Divisor de frecuencia /10000
// 1MHz a 100Hz
divisorf_b U23(
.clk(clk),  //in reloj maestro 1MHz
.rst(rst),  //in
.f100(f100)  //out  Salida a 100Hz
);

//SEGUNDOS
// Conteo de 0 a 59 segundos
// fo es de 1Hz cuadrada 50%
c_ame09 U0(
.clk(f0),  //entrada cuenta en flanco negativo
.rst(rst),  // entrada (0=rst)
.ya(ck0)   //salida 1 cuando salida es 9
);

c_mel05 U1(
.clk(ck0),  //entrada cuenta en flanco negativo
.rst(rst),  // entrada (0=rst)
.ya(ck1)   //salida 1 cuando salida es 9
);

//conteo de 0 a 59 Minutos 

//MINUTOS
c_america09 U2(
.clk(ck1b),  //entrada cuenta en flanco negativo
.rst(rst),  // entrada (0=rst)
.ya(ck2),   //salida 1 cuando salida es 9
.salida(M0A) //salida[3:0]
);

c_melissa05 U3(
.clk(ck2b),  //entrada cuenta en flanco negativo
.rst(rst),  // entrada (0=rst)
.ya(ck3),   //salida 1 cuando salida es 9
.salida(M1A) //salida[3:0]
);

// HORAS 0-23
c_uriel023c U4(
.clk(ck3b), //entrada
.rst(rst), //entrada
.S0(H0A),  //salida [3:0] H0 hora
.S1(H1A)   //salida [1:0] H1 hora
);

//DIVISORES DE FRECUENCIA
c_ame09 U7(
.clk(f100),  //entrada cuenta en flanco negativo
.rst(rst),  // entrada (0=rst)
.ya(f10)   //salida 1 cuando salida es 9
);

c_mel04 U8(
.clk(f10),  //entrada cuenta en flanco negativo
.rst(rst),  // entrada (0=rst)
.ya(f2)   //salida 1 cuando salida es 9
);


//divisor de de frecuencia por 2
c_div2 U9(
.clk(f2),  //señal clk frecuencia f entrada
.rst(rst),  //reset
.Z(f0)     //salida cuadrada con f/2
);


demux U10(
.P0(P0),   // entrada pulsos (in)
.selA(selA), // selecion 2b [1:0] (in)
.PMx(PX),	 //salida 0
.PM0(PM0),  //salida 1
.PM1(PM1),  //salida 2
.PH(PH)    //salida 3
);

count2b U11(
.ck(set),  // reloj
.rst(rst), // reset
.C0(selA)   // salida
);

decod U12(
.A(selA),  // entrada [1:0]
.C0(C0), // salida 0T
.C1(C1), // salida 1T
.C2(C2), // salida 2T
.C3(C3)  //salida  3T
);


//and U13(sl1,C1,f2);
//and U15(sl2,C2,f2);
//and U17(sl3,C3,f2);

assign sl1=(C1&f2); //U13
assign sl2=(C2&f2); //U15
assign sl3=(C3&f2); //U17
  
//Multiplexores
assign M0=(sl1) ? 4'b1111 : M0A;  //U14
assign M1=(sl2) ? 4'b1111 : M1A;  //U16
assign H0=(sl3) ? 4'b1111 : H0A;  //U18
assign H1=(sl3) ? 2'b11 : H1A;  //U19

assign ck1b=(C1) ? PM0 : ck1;  //U20
assign ck2b=(C2) ? PM1 : ck2;  //U21
assign ck3b=(C3) ? PH  : ck3;  //U22

assign Dots=f0;
endmodule


