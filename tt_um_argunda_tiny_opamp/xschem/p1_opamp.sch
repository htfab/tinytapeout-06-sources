v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 620 -430 860 -430 {
lab=#net1}
N 740 -430 740 -400 {
lab=#net1}
N 620 -600 620 -520 {
lab=#net2}
N 620 -690 620 -670 {
lab=VDD}
N 660 -630 820 -630 {
lab=#net2}
N 620 -580 690 -580 {
lab=#net2}
N 690 -580 740 -580 {
lab=#net2}
N 740 -630 740 -580 {
lab=#net2}
N 740 -400 740 -360 {
lab=#net1}
N 740 -300 740 -270 {
lab=VSS}
N 740 -270 740 -250 {
lab=VSS}
N 450 -330 700 -330 {
lab=#net3}
N 470 -390 470 -330 {
lab=#net3}
N 410 -390 470 -390 {
lab=#net3}
N 410 -640 410 -360 {
lab=#net3}
N 620 -730 620 -690 {
lab=VDD}
N 410 -300 410 -250 {
lab=VSS}
N 350 -330 410 -330 {
lab=VSS}
N 740 -330 800 -330 {
lab=VSS}
N 620 -480 680 -480 {
lab=VSS}
N 800 -480 860 -480 {
lab=VSS}
N 620 -520 620 -510 {
lab=#net2}
N 620 -450 620 -430 {
lab=#net1}
N 860 -450 860 -430 {
lab=#net1}
N 860 -600 860 -510 {
lab=#net4}
N 620 -670 620 -660 {
lab=VDD}
N 860 -730 860 -660 {
lab=VDD}
N 560 -630 620 -630 {
lab=VDD}
N 860 -630 920 -630 {
lab=VDD}
N 620 -730 860 -730 {
lab=VDD}
N 740 -750 740 -730 {
lab=VDD}
N 410 -730 410 -700 {
lab=VDD}
N 410 -750 410 -730 {
lab=VDD}
N 1220 -300 1220 -270 {
lab=VSS}
N 1220 -270 1220 -250 {
lab=VSS}
N 1220 -330 1280 -330 {
lab=VSS}
N 580 -330 580 -190 {
lab=#net3}
N 580 -190 950 -190 {
lab=#net3}
N 950 -330 950 -190 {
lab=#net3}
N 950 -330 1060 -330 {
lab=#net3}
N 1220 -730 1220 -660 {
lab=VDD}
N 1220 -630 1280 -630 {
lab=VDD}
N 1220 -600 1220 -360 {
lab=#net5}
N 860 -560 990 -560 {
lab=#net4}
N 990 -590 990 -560 {
lab=#net4}
N 990 -630 990 -590 {
lab=#net4}
N 990 -630 1060 -630 {
lab=#net4}
N 990 -560 990 -510 {
lab=#net4}
N 990 -510 1030 -510 {
lab=#net4}
N 1090 -510 1120 -510 {
lab=#net6}
N 1180 -510 1220 -510 {
lab=#net5}
N 1060 -630 1180 -630 {
lab=#net4}
N 1220 -750 1220 -730 {
lab=VDD}
N 1060 -330 1180 -330 {
lab=#net3}
C {devices/iopin.sym} 70 -490 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 70 -360 0 0 {name=p2 lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} 600 -480 0 0 {name=M2
L=0.15
W=1
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
C {sky130_fd_pr/nfet_01v8.sym} 880 -480 0 1 {name=M1
L=0.15
W=1
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
C {sky130_fd_pr/nfet_01v8.sym} 720 -330 0 0 {name=M3
L=0.15
W=1
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
C {sky130_fd_pr/pfet_01v8.sym} 640 -630 0 1 {name=M4
L=0.15
W=1
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
C {sky130_fd_pr/pfet_01v8.sym} 840 -630 0 0 {name=M5
L=0.15
W=1
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
C {sky130_fd_pr/nfet_01v8.sym} 430 -330 0 1 {name=M6
L=0.15
W=1
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
C {sky130_fd_pr/res_high_po.sym} 410 -670 0 0 {name=R1
W=1
L=1
model=res_high_po
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 390 -670 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 350 -330 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 800 -330 2 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 680 -480 2 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 800 -480 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 410 -250 3 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 740 -250 3 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 560 -630 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 920 -630 2 0 {name=p11 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 740 -750 1 0 {name=p12 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 410 -750 1 0 {name=p13 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} 70 -430 0 0 {name=p14 lab=PLUS}
C {devices/iopin.sym} 70 -460 0 0 {name=p15 lab=MINUS}
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Sai"}
C {devices/lab_pin.sym} 900 -480 2 0 {name=p16 sig_type=std_logic lab=PLUS}
C {devices/lab_pin.sym} 580 -480 0 0 {name=p17 sig_type=std_logic lab=MINUS}
C {sky130_fd_pr/nfet_01v8.sym} 1200 -330 0 0 {name=M7
L=0.15
W=1
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
C {devices/lab_pin.sym} 1280 -330 2 0 {name=p18 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1220 -250 3 0 {name=p19 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet_01v8.sym} 1200 -630 0 0 {name=M8
L=0.15
W=1
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
C {devices/lab_pin.sym} 1280 -630 2 0 {name=p20 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/res_high_po.sym} 1060 -510 1 0 {name=R2
W=1
L=1
model=res_high_po
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 1060 -530 1 0 {name=p21 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/cap_mim_m3_2.sym} 1150 -510 1 0 {name=C1 model=cap_mim_m3_2 W=1 L=1 MF=1 spiceprefix=X}
C {devices/lab_pin.sym} 1220 -750 1 0 {name=p22 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} 70 -390 0 0 {name=p23 lab=VOUT}
C {devices/lab_pin.sym} 1220 -510 2 0 {name=p24 sig_type=std_logic lab=VOUT}
