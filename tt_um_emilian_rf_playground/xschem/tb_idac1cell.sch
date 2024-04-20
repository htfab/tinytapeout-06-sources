v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 1840 -1680 2640 -1280 {flags=graph
y1=0.00021
y2=1.7
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
node=VOUT
color=5
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 1840 -1280 2640 -880 {flags=graph
y1=-8.3e-08
y2=8.9e-05
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
node=i(vout)
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 2640 -1680 3440 -1280 {flags=graph
y1=-8.5e-05
y2=0.75
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
color="4 5"
node="x1.vdrain2
vref_out"}
B 2 2640 -1280 3440 -880 {flags=graph
y1=-8.3e-08
y2=9e-05
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

color="5 4"
node="i(v.x1.vmeas)
i(v.x1.viout)"}
N 1740 -1480 1740 -1470 {
lab=VPB}
N 1740 -1410 1740 -1400 {
lab=GND}
N 1740 -1500 1740 -1480 {
lab=VPB}
N 1430 -1490 1430 -1480 {
lab=VSS}
N 1540 -1490 1540 -1480 {
lab=#net1}
N 1430 -1420 1430 -1410 {
lab=GND}
N 1540 -1420 1540 -1410 {
lab=GND}
N 1600 -1340 1600 -1330 {
lab=VDD}
N 1600 -1060 1600 -1050 {
lab=VSS}
N 1600 -1120 1600 -1060 {
lab=VSS}
N 1640 -1240 1770 -1240 {
lab=vref_in}
N 1680 -1240 1680 -1180 {
lab=vref_in}
N 1600 -1180 1680 -1180 {
lab=vref_in}
N 1400 -1210 1400 -1190 {
lab=#net2}
N 1400 -1130 1400 -1120 {
lab=VOUT}
N 1540 -1590 1540 -1570 {
lab=VDD}
N 1540 -1510 1540 -1490 {
lab=#net1}
N 1600 -1210 1600 -1180 {
lab=vref_in}
N 1460 -1210 1460 -1200 {
lab=GND}
N 1400 -1270 1460 -1270 {
lab=#net3}
C {devices/code.sym} 1140 -1580 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt_mm
*.lib $::SKYWATER_STDCELLS/sky130_fd_sc_hd_blablabla.spice
                                                                                      
.subckt sky130_fd_sc_hd__inv_1 A VGND VNB VPB VPWR Y                                                                
X0 VGND A Y VNB sky130_fd_pr__nfet_01v8 w=650000u l=150000u                                                         
X1 VPWR A Y VPB sky130_fd_pr__pfet_01v8_hvt w=1e+06u l=150000u                                                      
.ends

"
spice_ignore=false}
C {devices/launcher.sym} 1900 -1720 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw dc

"
}
C {devices/simulator_commands_shown.sym} 1100 -1370 0 0 {name=COMMANDS2
simulator=ngspice
only_toplevel=false 
value="
.options savecurrents 

.control

save all
  dc vout_meas 0 1.8 0.1 
  write tb_idac1cell.raw

 * plot V(VOUT)

  set appendwrite
  * remzerovec

  write tb_idac1cell.raw


.endc
"}
C {devices/vsource.sym} 1630 -1440 0 0 {name=V5 value=0 savecurrent=false}
C {devices/gnd.sym} 1630 -1410 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 1630 -1470 2 1 {name=p6 sig_type=std_logic lab=VNB

}
C {devices/vsource.sym} 1740 -1440 0 0 {name=V6 value=1.8 savecurrent=false}
C {devices/gnd.sym} 1740 -1400 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 1740 -1500 2 1 {name=p14 sig_type=std_logic lab=VPB

}
C {devices/vsource.sym} 1540 -1450 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/gnd.sym} 1540 -1410 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 1540 -1590 2 1 {name=p19 sig_type=std_logic lab=VDD
}
C {devices/vsource.sym} 1430 -1450 0 0 {name=V2 value=0 savecurrent=false}
C {devices/gnd.sym} 1430 -1410 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 1430 -1490 2 1 {name=p28 sig_type=std_logic lab=VSS
}
C {devices/gnd.sym} 1630 -1410 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} 1600 -1340 2 1 {name=p2 sig_type=std_logic lab=VDD
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 1620 -1240 0 1 {name=M3
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
model=pfet_01v8_lvt
spiceprefix=X
}
C {devices/ammeter.sym} 1400 -1240 0 1 {name=vout savecurrent=true}
C {sky130_fd_pr/res_high_po_0p35.sym} 1600 -1150 0 0 {name=R1
L=4
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {devices/ammeter.sym} 1600 -1300 0 0 {name=vdbg111 savecurrent=true}
C {devices/lab_pin.sym} 1580 -1150 2 1 {name=p43 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 1600 -1240 2 1 {name=p44 sig_type=std_logic lab=VDD
}
C {sky130_fd_pr/res_high_po_0p35.sym} 1400 -1160 0 0 {name=R2
L=1
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 1400 -1120 3 0 {name=p11 sig_type=std_logic lab=VOUT
}
C {idac1cell.sym} 1560 -1700 0 0 {name=x1}
C {devices/lab_pin.sym} 1710 -1700 0 1 {name=p8 sig_type=std_logic lab=VOUT
}
C {devices/ammeter.sym} 1540 -1540 0 1 {name=vdd_totpw savecurrent=true}
C {devices/lab_pin.sym} 1410 -1680 2 1 {name=p9 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 1410 -1660 2 1 {name=p10 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 1600 -1060 2 1 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 1410 -1720 0 0 {name=p4 sig_type=std_logic lab=vref_in}
C {devices/lab_pin.sym} 1710 -1720 0 1 {name=p7 sig_type=std_logic lab=vref_out}
C {devices/lab_pin.sym} 1410 -1700 2 1 {name=p12 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 1770 -1240 0 1 {name=p13 sig_type=std_logic lab=vref_in}
C {devices/vsource.sym} 1460 -1240 0 0 {name=vout_meas value=1 savecurrent=false}
C {devices/gnd.sym} 1460 -1200 0 0 {name=l1 lab=GND}
