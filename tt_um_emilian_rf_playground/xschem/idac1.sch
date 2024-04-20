v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -240 -70 -240 -60 {
lab=VDD}
N -200 30 -160 30 {
lab=IOUT}
N -200 30 -200 70 {
lab=IOUT}
N -240 60 -240 90 {
lab=IOUT}
N -240 70 -200 70 {
lab=IOUT}
N -160 30 -110 30 {
lab=IOUT}
N -70 -70 -70 -60 {
lab=VDD}
N -70 60 -70 110 {
lab=IOUT_P}
C {idac1cell.sym} -160 -170 0 0 {name=xcell[7..0]}
C {devices/lab_pin.sym} -310 -190 0 0 {name=p4 sig_type=std_logic lab=vin[6..0],VREF_IN
}
C {devices/lab_pin.sym} -10 -190 2 0 {name=p7 sig_type=std_logic lab=VREF_OUT,vin[6..0]
}
C {devices/lab_pin.sym} -10 -170 0 1 {name=p8 sig_type=std_logic lab=IOUT
}
C {devices/lab_pin.sym} -310 -170 0 0 {name=p12 sig_type=std_logic lab=VCMD[0..7]
}
C {devices/lab_pin.sym} -310 -150 2 1 {name=p9 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} -310 -130 2 1 {name=p10 sig_type=std_logic lab=VSS
}
C {devices/ipin.sym} -540 70 0 0 { name=p3 lab=VSS }
C {devices/iopin.sym} -540 -30 0 1 { name=p5 lab=VREF_IN }
C {devices/iopin.sym} -540 50 0 1 { name=p11 lab=VDD }
C {devices/ipin.sym} -540 -50 0 0 { name=p13 lab=VCMD7 }
C {devices/ipin.sym} -540 -70 0 0 { name=p14 lab=VCMD6 }
C {devices/ipin.sym} -540 -90 0 0 { name=p15 lab=VCMD5 }
C {devices/ipin.sym} -540 -110 0 0 { name=p16 lab=VCMD4 }
C {devices/ipin.sym} -540 -130 0 0 { name=p17 lab=VCMD3 }
C {devices/ipin.sym} -540 -150 0 0 { name=p18 lab=VCMD2 }
C {devices/ipin.sym} -540 -170 0 0 { name=p19 lab=VCMD1 }
C {devices/ipin.sym} -540 -190 0 0 { name=p20 lab=VCMD0 }
C {devices/iopin.sym} -540 -10 0 1 { name=p1 lab=VREF_OUT }
C {devices/iopin.sym} -540 30 0 1 { name=p2 lab=IOUT_P}
C {devices/lab_pin.sym} -240 -70 2 1 {name=p27 sig_type=std_logic lab=VDD
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -220 30 0 1 {name=M2
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
C {devices/ammeter.sym} -240 -30 0 0 {name=vdbg1 savecurrent=true}
C {devices/lab_pin.sym} -240 30 2 1 {name=p30 sig_type=std_logic lab=VDD
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -90 30 0 0 {name=M4
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
C {devices/lab_pin.sym} -70 -70 2 1 {name=p29 sig_type=std_logic lab=VDD
}
C {devices/ammeter.sym} -70 -30 0 0 {name=vdbg2 savecurrent=true}
C {devices/lab_pin.sym} -70 110 2 1 {name=p21 sig_type=std_logic lab=IOUT_P
}
C {devices/lab_pin.sym} -240 90 0 0 {name=p22 sig_type=std_logic lab=IOUT
}
C {devices/lab_pin.sym} -70 30 0 1 {name=p6 sig_type=std_logic lab=VDD
}
