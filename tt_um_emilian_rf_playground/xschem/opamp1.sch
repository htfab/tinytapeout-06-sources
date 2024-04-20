v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1170 -990 1170 -940 {
lab=vcom}
N 1460 -990 1460 -940 {
lab=vcom}
N 1430 -940 1460 -940 {
lab=vcom}
N 1230 -940 1330 -940 {
lab=vcom}
N 1410 -940 1430 -940 {
lab=vcom}
N 1400 -940 1410 -940 {
lab=vcom}
N 1170 -1020 1200 -1020 {
lab=VSS}
N 1430 -1020 1460 -1020 {
lab=VSS}
N 1330 -940 1400 -940 {
lab=vcom}
N 1170 -1100 1170 -1050 {
lab=VOUT_N}
N 1460 -1100 1460 -1050 {
lab=VOUT}
N 1460 -1130 1460 -1100 {
lab=VOUT}
N 1500 -1020 1500 -980 {
lab=VIN_N}
N 1320 -780 1320 -750 {
lab=VSS}
N 1290 -750 1320 -750 {
lab=VSS}
N 1240 -750 1290 -750 {
lab=VSS}
N 1320 -750 1360 -750 {
lab=VSS}
N 1360 -810 1360 -750 {
lab=VSS}
N 1320 -810 1360 -810 {
lab=VSS}
N 1170 -1170 1170 -1100 {
lab=VOUT_N}
N 1320 -940 1320 -920 {
lab=vcom}
N 1320 -860 1320 -840 {
lab=#net1}
N 1260 -810 1280 -810 {
lab=VNBIAS}
N 1170 -1280 1200 -1280 {
lab=VDD}
N 1170 -1260 1170 -1250 {
lab=#net2}
N 1170 -1290 1170 -1280 {
lab=VDD}
N 1170 -1190 1170 -1170 {
lab=VOUT_N}
N 1460 -1270 1490 -1270 {
lab=VDD}
N 1460 -1250 1460 -1240 {
lab=#net3}
N 1460 -1280 1460 -1270 {
lab=VDD}
N 1460 -1180 1460 -1130 {
lab=VOUT}
N 1130 -1290 1130 -1260 {
lab=VPBIAS}
N 1010 -1020 1130 -1020 {
lab=VIN}
N 1010 -980 1500 -980 {
lab=VIN_N}
N 1130 -1260 1130 -1240 {
lab=VPBIAS}
N 1130 -1240 1420 -1240 {
lab=VPBIAS}
N 1420 -1280 1420 -1240 {
lab=VPBIAS}
N 1170 -940 1230 -940 {
lab=vcom}
N 1240 -810 1260 -810 {
lab=VNBIAS}
N 1040 -1240 1130 -1240 {
lab=VPBIAS}
N 1080 -1320 1170 -1320 {
lab=VDD}
N 1170 -1320 1460 -1320 {
lab=VDD}
N 1460 -1260 1460 -1250 {
lab=#net3}
N 1420 -1290 1420 -1280 {
lab=VPBIAS}
N 1460 -1290 1460 -1280 {
lab=VDD}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1150 -1020 0 0 {name=M5
W=32
L=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/ipin.sym} 1010 -1020 0 0 { name=p17 lab=VIN }
C {devices/ipin.sym} 1010 -980 0 0 { name=p16 lab=VIN_N }
C {devices/iopin.sym} 1460 -1120 2 1 { name=p12 lab=VOUT }
C {devices/iopin.sym} 1170 -1120 0 1 { name=p9 lab=VOUT_N }
C {devices/iopin.sym} 1040 -1240 0 1 { name=p7 lab=VPBIAS }
C {devices/iopin.sym} 1240 -810 0 1 { name=p13 lab=VNBIAS }
C {devices/iopin.sym} 1080 -1320 0 1 { name=p18 lab=VDD }
C {devices/iopin.sym} 1240 -750 0 1 { name=p2 lab=VSS }
C {devices/ammeter.sym} 1170 -1220 0 0 {name=vbiasp1 savecurrent=true}
C {sky130_fd_pr/pfet_01v8.sym} 1440 -1290 0 0 {name=M2
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
C {devices/lab_pin.sym} 1490 -1270 0 1 {name=p21 sig_type=std_logic lab=VDD}
C {devices/ammeter.sym} 1460 -1210 0 0 {name=vbiasp2 savecurrent=true}
C {devices/lab_pin.sym} 1200 -1280 0 1 {name=p14 sig_type=std_logic lab=VDD}
C {devices/ammeter.sym} 1320 -890 0 0 {name=vbiasn savecurrent=true}
C {devices/lab_pin.sym} 1200 -1020 0 1 {name=p6 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1300 -810 0 0 {name=M7
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
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_pin.sym} 1170 -940 2 1 {name=p4 sig_type=std_logic lab=vcom}
C {devices/lab_pin.sym} 1430 -1020 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1480 -1020 0 1 {name=M6
W=32
L=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 1150 -1290 0 0 {name=M9
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
