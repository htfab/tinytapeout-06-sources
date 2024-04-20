v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 300 -820 1100 -420 {flags=graph
y1=1.2e-19
y2=0.00017
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.8
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color=4
node=i(vdrainmeas)}
T {2) DC Sweep to determine the minimum voltage VDS required to keep M2 in saturation.} 300 -850 0 0 0.3 0.3 {}
T {1) Tweak W1 and W2 to set current gain.} 300 -870 0 0 0.3 0.3 {}
N 610 -310 610 -260 {
lab=GATE}
N 610 -260 650 -260 {
lab=GATE}
N 650 -260 650 -230 {
lab=GATE}
N 610 -200 610 -170 {
lab=0}
N 610 -230 610 -200 {
lab=0}
N 860 -200 860 -170 {
lab=0}
N 860 -230 860 -200 {
lab=0}
N 980 -210 980 -170 {
lab=0}
N 980 -320 980 -270 {
lab=#net1}
N 650 -230 820 -230 {
lab=GATE}
N 860 -370 860 -350 {
lab=#net1}
N 860 -370 980 -370 {
lab=#net1}
N 980 -370 980 -320 {
lab=#net1}
N 860 -290 860 -260 {
lab=DRAIN}
N 1150 -210 1150 -170 {
lab=0}
N 1150 -370 1150 -270 {
lab=VDD}
C {sky130_fd_pr/corner.sym} 40 -210 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/title.sym} 160 -30 0 0 {name=l2 author="Sai"}
C {devices/lab_pin.sym} 610 -170 0 0 {name=p3 lab=0  net_name=true}
C {devices/lab_pin.sym} 610 -370 0 0 {name=p4 lab=VDD  net_name=true}
C {devices/lab_pin.sym} 740 -230 1 0 {name=p13 lab=GATE  net_name=true}
C {sky130_fd_pr/nfet_01v8.sym} 630 -230 0 1 {name=M1
L=0.15
W=W1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/code_shown.sym} 0 -710 0 0 {name=DC_COMMANDS
simulator=ngspice
only_toplevel=false
value="* ngspice commands
.param W1=1
.param W2=4

.options savecurrents
.control
   save all
* start op analysis here
   op
   remzerovec
   write p2_cur_mir.raw
   set appendwrite
* start dc sweep for M2 here
   dc vd 0 1.8 0.01   
   remzerovec
   write p2_cur_mir.raw
.endc
"}
C {devices/launcher.sym} 100 -330 0 0 {name=h26
descr="Netlist & sim" 
tclcommand="xschem netlist; xschem simulate"}
C {devices/lab_pin.sym} 860 -170 0 1 {name=p1 lab=0  net_name=true}
C {devices/vsource.sym} 980 -240 0 0 {name=VD value=0.5 savecurrent=false}
C {devices/lab_pin.sym} 980 -170 0 1 {name=p2 lab=0  net_name=true}
C {devices/lab_pin.sym} 860 -280 0 0 {name=p5 lab=DRAIN  net_name=true}
C {devices/launcher.sym} 100 -270 0 0 {name=h5
descr="Load DC Sweep Wave, ID2 vs VDS2" 
tclcommand="xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw dc"}
C {devices/ammeter.sym} 860 -320 0 0 {name=vdrainmeas savecurrent=true}
C {devices/launcher.sym} 100 -300 0 0 {name=h1
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/lab_pin.sym} 590 -340 0 0 {name=p6 lab=0  net_name=true}
C {devices/vsource.sym} 1150 -240 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/lab_pin.sym} 1150 -170 0 1 {name=p7 lab=0  net_name=true}
C {devices/lab_pin.sym} 1150 -370 0 0 {name=p8 lab=VDD  net_name=true}
C {sky130_fd_pr/res_xhigh_po_5p73.sym} 610 -340 0 0 {name=R2
L=150
model=res_xhigh_po_5p73
spiceprefix=X
mult=1}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 840 -230 0 0 {name=M2
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
