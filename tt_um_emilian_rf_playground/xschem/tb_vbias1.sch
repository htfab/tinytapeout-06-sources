v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 160 -560 960 -160 {flags=graph
y1=5.1e-05
y2=6.3e-05
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="i(vnbias)
i(vpbias)"
color="4 5"
dataset=1
unitx=1
logx=0
logy=0
}
B 2 160 -160 960 240 {flags=graph
y1=4.9e-08
y2=5e-08
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=1
unitx=1
logx=0
logy=0
color="4 5"
node="VPBIAS
VNBIAS"}
N -240 60 -230 60 {
lab=VSS}
N -210 -150 -180 -150 {
lab=VDD}
N -210 -200 -210 -180 {
lab=VDD}
N -210 -200 -180 -200 {
lab=VDD}
N 10 30 10 60 {
lab=VSS}
N -30 0 -30 60 {
lab=VSS}
N -30 0 10 0 {
lab=VSS}
N 10 -50 10 -30 {
lab=VNBIAS}
N 10 -30 70 -30 {
lab=VNBIAS}
N 50 0 70 0 {
lab=VNBIAS}
N 70 -30 70 0 {
lab=VNBIAS}
N -40 -200 10 -200 {
lab=VDD}
N 10 -200 10 -190 {
lab=VDD}
N -30 60 10 60 {
lab=VSS}
N -430 -380 -430 -370 {
lab=VSS}
N -320 -380 -320 -370 {
lab=VDD}
N -430 -310 -430 -300 {
lab=GND}
N -320 -310 -320 -300 {
lab=GND}
N -230 60 -210 60 {
lab=VSS}
N -210 -40 -210 -20 {
lab=#net1}
N 10 -130 10 -120 {
lab=#net2}
N 10 -60 10 -50 {
lab=VNBIAS}
N -250 -150 -250 -120 {
lab=VPBIAS}
N -250 -120 -210 -120 {
lab=VPBIAS}
N -210 -120 -210 -100 {
lab=VPBIAS}
N -170 10 -150 10 {
lab=VNBIAS}
N -210 40 -210 60 {
lab=VSS}
N -240 10 -240 60 {
lab=VSS}
N -240 10 -210 10 {
lab=VSS}
C {devices/lab_pin.sym} -240 60 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -230 -150 0 0 {name=M8
W=8
L=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} -180 -150 0 1 {name=p13 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -250 -120 0 0 {name=p18 sig_type=std_logic lab=VPBIAS}
C {devices/lab_pin.sym} -180 -200 0 1 {name=p19 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -30 60 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/res_high_po.sym} 10 -160 0 0 {name=R1
W=0.5
L=20
model=res_high_po
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} -40 -200 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -10 -160 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 70 -30 0 1 {name=p3 sig_type=std_logic lab=VNBIAS}
C {devices/iopin.sym} -330 -30 0 1 { name=p4 lab=VSS }
C {devices/iopin.sym} -330 -50 0 1 { name=p5 lab=VPBIAS }
C {devices/iopin.sym} -330 -70 0 1 { name=p6 lab=VNBIAS }
C {devices/iopin.sym} -330 -90 0 1 { name=p8 lab=VDD }
C {devices/vsource.sym} -320 -340 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/gnd.sym} -320 -300 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -320 -380 2 1 {name=p16 sig_type=std_logic lab=VDD
}
C {devices/vsource.sym} -430 -340 0 0 {name=V2 value=0 savecurrent=false}
C {devices/gnd.sym} -430 -300 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -430 -380 2 1 {name=p17 sig_type=std_logic lab=VSS
}
C {devices/code.sym} -210 -390 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt_mm

"
spice_ignore=false}
C {devices/launcher.sym} 40 -380 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {devices/simulator_commands_shown.sym} -710 -370 0 0 {name=COMMANDS2
simulator=ngspice
only_toplevel=false 
value="
.options savecurrents
.control
  repeat 4
    save all
    tran 10p 200n
    remzerovec
    write vbias1.raw
    set appendwrite
    reset
    end
.endc
"}
C {devices/ammeter.sym} 10 -90 0 0 {name=vnbias savecurrent=true}
C {devices/ammeter.sym} -210 -70 0 0 {name=vpbias savecurrent=true}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 30 0 0 1 {name=M1
W=4
L=1
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} -190 10 0 1 {name=M2
W=4
L=1
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
C {devices/lab_pin.sym} -150 10 0 1 {name=p7 sig_type=std_logic lab=VNBIAS}
