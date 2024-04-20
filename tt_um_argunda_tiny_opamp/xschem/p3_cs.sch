v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 560 -540 560 -490 {
lab=VOUT}
N 560 -430 560 -380 {
lab=0}
N 560 -460 660 -460 {
lab=VSS}
N 560 -580 560 -540 {
lab=VOUT}
N 560 -530 610 -530 {
lab=VOUT}
N 560 -660 560 -640 {
lab=VDD}
N 560 -610 660 -610 {
lab=VDD}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 540 -610 0 0 {name=M2
L=0.5
W=200
nf=200
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 540 -460 0 0 {name=M1
L=0.5
W=120
nf=120
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/iopin.sym} 140 -600 2 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 140 -580 2 0 {name=p2 lab=VSS}
C {devices/iopin.sym} 140 -560 2 0 {name=p3 lab=BIAS}
C {devices/iopin.sym} 140 -540 2 0 {name=p4 lab=VIN}
C {devices/iopin.sym} 140 -520 2 0 {name=p5 lab=VOUT}
C {devices/lab_pin.sym} 560 -660 1 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 520 -610 0 0 {name=p7 sig_type=std_logic lab=BIAS}
C {devices/lab_pin.sym} 520 -460 0 0 {name=p8 sig_type=std_logic lab=VIN}
C {devices/lab_pin.sym} 660 -460 2 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 660 -610 2 0 {name=p11 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 610 -530 2 0 {name=p12 sig_type=std_logic lab=VOUT}
C {devices/code_shown.sym} 770 -630 0 0 {name=DC_COMMANDS
simulator=ngspice
only_toplevel=false
value="* ngspice commands
.options savecurrents
.control
   save all
   save @m.xm1.msky130_fd_pr__nfet_g5v0d10v5[gm]
   save @m.xm2.msky130_fd_pr__pfet_g5v0d10v5[gm]
* start op analysis here
   op
   remzerovec
   write p3_cs.raw
*   set appendwrite
* start dc sweep for M2 here
*   dc vd 0 1.8 0.01   
*   remzerovec
*   write p3_cs.raw
.endc
"}
C {devices/launcher.sym} 870 -250 0 0 {name=h26
descr="Netlist & sim" 
tclcommand="xschem netlist; xschem simulate"}
C {devices/launcher.sym} 870 -220 0 0 {name=h1
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {sky130_fd_pr/corner.sym} 40 -210 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/title.sym} 160 -30 0 0 {name=l2 author="Sai"}
C {devices/vsource.sym} 270 -200 0 0 {name=VD value=1.5 savecurrent=false}
C {devices/vsource.sym} 440 -200 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/lab_pin.sym} 440 -230 1 0 {name=p16 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 270 -230 1 0 {name=p17 sig_type=std_logic lab=BIAS}
C {devices/vsource.sym} 360 -200 0 0 {name=VD1 value=0 savecurrent=false}
C {devices/lab_pin.sym} 360 -230 1 0 {name=p18 sig_type=std_logic lab=VIN}
C {devices/lab_pin.sym} 560 -380 3 0 {name=p9 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} 440 -170 3 0 {name=p13 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} 360 -170 3 0 {name=p14 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} 270 -170 3 0 {name=p15 sig_type=std_logic lab=0}
