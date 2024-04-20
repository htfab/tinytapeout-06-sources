v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 730 -870 1530 -470 {flags=graph
y1=-0.31
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.29e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0



color=4
node=A1}
B 2 2330 -1270 3130 -870 {flags=graph
y1=8.5e-07
y2=6.1e-05
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.29e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0




color="4 6 5 15 8"
node="i(v.x1.xcell0.vmeas)
i(v.x1.xcell1.vmeas)
i(v.x1.xcell2.vmeas)
i(v.x1.xcell3.vmeas)
i(v.x1.xcell7.vmeas)"}
B 2 2330 -1670 3130 -1270 {flags=graph
y1=0
y2=8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.29e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0







color="4 6 5 8 5 4 8 5"
rainbow=0
node="\\"VCMD7 1.8 / 7 +\\"
\\"VCMD6 1.8 / 6 +\\"
\\"VCMD5 1.8 / 5 +\\"
\\"VCMD4 1.8 / 4 +\\"
\\"VCMD3 1.8 / 3 +\\"
\\"VCMD2 1.8 / 2 +\\"
\\"VCMD1 1.8 / 1 +\\"
\\"VCMD0 1.8 / 0 +\\""}
B 2 1530 -870 2330 -470 {flags=graph
y1=-0.00051
y2=-0.00026
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.29e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0






color=18
node=i(vdd_totpw)}
B 2 2330 -870 3130 -470 {flags=graph
y1=-1.3018e-05
y2=9.76386e-05
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.29e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0






color="18 5 4"
node="i(vdbg111)
i(vdbg1)
i(vdbg2)"}
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
N 1400 -1290 1400 -1270 {
lab=VDD}
N 1400 -1210 1400 -1190 {
lab=#net2}
N 1400 -1130 1400 -1120 {
lab=VOUT}
N 1540 -1590 1540 -1570 {
lab=VDD}
N 1540 -1510 1540 -1490 {
lab=#net1}
N 1600 -1210 1600 -1180 {
lab=vin0}
N 2140 -1490 2140 -1440 {
lab=VSS}
N 1640 -1240 1680 -1240 {
lab=vin0}
N 1640 -1240 1640 -1200 {
lab=vin0}
N 1600 -1200 1640 -1200 {
lab=vin0}
N 2050 -1330 2050 -1320 {
lab=VDD}
N 2090 -1230 2130 -1230 {
lab=#net3}
N 2090 -1230 2090 -1190 {
lab=#net3}
N 2050 -1200 2050 -1170 {
lab=#net3}
N 1990 -1170 2050 -1170 {
lab=#net3}
N 2050 -1190 2090 -1190 {
lab=#net3}
N 2130 -1230 2180 -1230 {
lab=#net3}
N 2220 -1330 2220 -1320 {
lab=VDD}
N 2220 -1200 2220 -1150 {
lab=VPWR}
C {devices/code.sym} 1950 -1570 0 0 {name=TT_MM_MODELS
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
C {devices/launcher.sym} 2200 -1410 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {devices/simulator_commands_shown.sym} 760 -1540 0 0 {name=COMMANDS2
simulator=ngspice
only_toplevel=false 
value="
.options savecurrents 
VCMD7 VCMD7 0 pulse 1.8 0 0n 1n 1n 6400n 12800n
VCMD6 VCMD6 0 pulse 1.8 0 0n 1n 1n 3200n 6400n
VCMD5 VCMD5 0 pulse 1.8 0 0n 1n 1n 1600n 3200n
VCMD4 VCMD4 0 pulse 1.8 0 0n 1n 1n 800n 1600n
VCMD3 VCMD3 0 pulse 1.8 0 0n 1n 1n 400n 800n
VCMD2 VCMD2 0 pulse 1.8 0 0n 1n 1n 200n 400n
VCMD1 VCMD1 0 pulse 1.8 0 0n 1n 1n 100n 200n
VCMD0 VCMD0 0 pulse 1.8 0 0n 1n 1n 50n 100n
.control
  repeat 1
    save all
    tran 0.1n 12900n
    remzerovec
    write tb_pll1.raw
    set appendwrite
    reset
    end
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
C {devices/lab_pin.sym} 1680 -1240 2 0 {name=p5 sig_type=std_logic lab=vin0
}
C {devices/lab_pin.sym} 1400 -1290 1 0 {name=p1 sig_type=std_logic lab=VDD
}
C {devices/ammeter.sym} 1400 -1240 0 1 {name=vout savecurrent=true}
C {sky130_fd_pr/res_high_po_0p35.sym} 1600 -1150 0 0 {name=R1
L=20
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {devices/ammeter.sym} 1600 -1300 0 0 {name=vdbg111 savecurrent=true}
C {devices/lab_pin.sym} 1580 -1150 2 1 {name=p43 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 1600 -1240 2 1 {name=p44 sig_type=std_logic lab=VDD
}
C {sky130_fd_pr/res_high_po_0p35.sym} 1400 -1160 0 0 {name=R2
L=100
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 1400 -1120 3 0 {name=p11 sig_type=std_logic lab=VOUT
}
C {devices/ammeter.sym} 1540 -1540 0 1 {name=vdd_totpw savecurrent=true}
C {devices/lab_pin.sym} 1600 -1060 2 1 {name=p3 sig_type=std_logic lab=VSS
}
C {idac1.sym} 1900 -1170 0 0 {name=x1}
C {devices/lab_pin.sym} 1800 -1260 0 0 {name=p13 sig_type=std_logic lab=VCMD0
}
C {devices/lab_pin.sym} 1800 -1240 0 0 {name=p15 sig_type=std_logic lab=VCMD1
}
C {devices/lab_pin.sym} 1800 -1220 0 0 {name=p16 sig_type=std_logic lab=VCMD2
}
C {devices/lab_pin.sym} 1800 -1200 0 0 {name=p17 sig_type=std_logic lab=VCMD3
}
C {devices/lab_pin.sym} 1800 -1180 0 0 {name=p18 sig_type=std_logic lab=VCMD4
}
C {devices/lab_pin.sym} 1800 -1160 0 0 {name=p20 sig_type=std_logic lab=VCMD5
}
C {devices/lab_pin.sym} 1800 -1140 0 0 {name=p21 sig_type=std_logic lab=VCMD6
}
C {devices/lab_pin.sym} 1800 -1120 0 0 {name=p22 sig_type=std_logic lab=VCMD7
}
C {devices/lab_pin.sym} 1900 -1290 2 1 {name=p23 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 1900 -1050 2 1 {name=p24 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 1800 -1090 2 1 {name=p4 sig_type=std_logic lab=vin0
}
C {sky130_stdcells/inv_1.sym} 1620 -980 0 0 {name=x1[16..0] VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 1660 -980 0 1 {name=p7 sig_type=std_logic lab=A[16..0]}
C {devices/lab_pin.sym} 1580 -980 0 0 {name=p9 sig_type=std_logic lab=A[15..0],A16}
C {devices/lab_pin.sym} 2000 -1080 0 1 {name=p8 sig_type=std_logic lab=VOUT
}
C {devices/lab_pin.sym} 1400 -1130 2 1 {name=p25 sig_type=std_logic lab=VSS
}
C {devices/ammeter.sym} 2140 -1520 2 1 {name=Vmeasn1 savecurrent=true}
C {devices/lab_pin.sym} 2140 -1550 2 0 {name=p12 sig_type=std_logic lab=VGND
}
C {devices/lab_pin.sym} 2140 -1450 2 0 {name=p26 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 2050 -1330 2 1 {name=p27 sig_type=std_logic lab=VDD
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 2070 -1230 0 1 {name=M2
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
C {devices/ammeter.sym} 2050 -1290 0 0 {name=vdbg1 savecurrent=true}
C {devices/lab_pin.sym} 2050 -1230 2 1 {name=p30 sig_type=std_logic lab=VDD
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 2200 -1230 0 0 {name=M4
W=1
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
C {devices/lab_pin.sym} 2220 -1330 2 1 {name=p29 sig_type=std_logic lab=VDD
}
C {devices/ammeter.sym} 2220 -1290 0 0 {name=vdbg2 savecurrent=true}
C {devices/lab_pin.sym} 2220 -1150 2 1 {name=p10 sig_type=std_logic lab=VPWR
}
