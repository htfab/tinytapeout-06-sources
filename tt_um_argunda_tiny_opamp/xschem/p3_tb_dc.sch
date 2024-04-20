v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 410 -860 1210 -460 {flags=graph
y1=0.4375
y2=2.2375
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.6646116
x2=0.1353884
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vout
vin
vout_parax"
color="7 4 6"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0
rawfile=$netlist_dir/p3_tb_dc.raw}
N 330 -190 380 -190 {
lab=VOUT}
N 330 -190 330 -70 {
lab=VOUT}
N 330 -70 750 -70 {
lab=VOUT}
N 750 -250 750 -70 {
lab=VOUT}
N 680 -250 750 -250 {
lab=VOUT}
N 750 -250 790 -250 {
lab=VOUT}
N 810 -250 810 -230 {
lab=VOUT}
N 790 -250 810 -250 {
lab=VOUT}
N 1090 -190 1140 -190 {
lab=VOUT_PARAX}
N 1090 -190 1090 -70 {
lab=VOUT_PARAX}
N 1090 -70 1510 -70 {
lab=VOUT_PARAX}
N 1510 -250 1510 -70 {
lab=VOUT_PARAX}
N 1440 -250 1510 -250 {
lab=VOUT_PARAX}
N 1510 -250 1550 -250 {
lab=VOUT_PARAX}
N 1570 -250 1570 -230 {
lab=VOUT_PARAX}
N 1550 -250 1570 -250 {
lab=VOUT_PARAX}
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Sai"}
C {devices/vsource.sym} 70 -290 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/lab_pin.sym} 70 -320 0 0 {name=p8 lab=VDD  net_name=true}
C {devices/lab_pin.sym} 530 -320 1 0 {name=p1 lab=VDD  net_name=true}
C {devices/gnd.sym} 70 -260 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 530 -180 0 0 {name=l3 lab=GND}
C {devices/res.sym} 810 -200 0 0 {name=R1
value=20k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 810 -170 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 380 -310 0 0 {name=p2 lab=VIN  net_name=true}
C {devices/vsource.sym} 160 -290 0 0 {name=VI value=0 savecurrent=false}
C {devices/gnd.sym} 160 -260 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 160 -320 0 0 {name=p3 lab=VIN  net_name=true}
C {devices/launcher.sym} 1040 -440 0 0 {name=h5
descr="load DC waves" 
tclcommand="xschem raw_read $netlist_dir/p3_tb_dc.raw dc"
}
C {sky130_fd_pr/corner.sym} 70 -180 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code_shown.sym} 40 -590 0 0 {name=DC_COMMANDS only_toplevel=false value="
.options savecurrents
.control
  save all
  dc vi 0 1.8 0.01
  remzerovec
  write p3_tb_dc.raw
.endc
"}
C {devices/lab_pin.sym} 810 -250 2 0 {name=p4 lab=VOUT  net_name=true}
C {p3_opamp.sym} 500 -260 0 0 {name=x1}
C {devices/lab_pin.sym} 1290 -320 1 0 {name=p5 lab=VDD  net_name=true}
C {devices/gnd.sym} 1290 -180 0 0 {name=l6 lab=GND}
C {devices/res.sym} 1570 -200 0 0 {name=R2
value=20k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 1570 -170 0 0 {name=l7 lab=GND}
C {devices/lab_pin.sym} 1140 -310 0 0 {name=p6 lab=VIN  net_name=true}
C {devices/lab_pin.sym} 1570 -250 2 0 {name=p7 lab=VOUT_PARAX  net_name=true}
C {p3_opamp.sym} 1260 -260 0 0 {name=x2
schematic=p3_opamp_parax.sim
spice_sym_def="tcleval(.include [file normalize ../mag/p3_opamp.sim.spice])"
tclcommand="textwindow [file normalize ../mag/p3_opamp.sim.spice])"}
