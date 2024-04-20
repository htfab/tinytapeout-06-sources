v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 450 -330 700 -330 {
lab=#net1}
N 470 -390 470 -330 {
lab=#net1}
N 410 -390 470 -390 {
lab=#net1}
N 410 -300 410 -250 {
lab=VSS}
N 350 -330 410 -330 {
lab=VSS}
N 410 -730 410 -700 {
lab=VDD}
N 410 -750 410 -730 {
lab=VDD}
N 410 -640 410 -360 {
lab=#net1}
C {sky130_fd_pr/nfet_01v8.sym} 430 -330 0 1 {name=M6
L=2
W=4
nf=4 
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
C {devices/lab_pin.sym} 410 -750 1 0 {name=p13 sig_type=std_logic lab=VDD}
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Sai"}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 410 -670 0 0 {name=R1
L=2.8
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {devices/iopin.sym} 90 -610 0 0 {name=p15 lab=VDD}
C {devices/iopin.sym} 90 -480 0 0 {name=p18 lab=VSS}
C {devices/lab_pin.sym} 390 -670 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 410 -250 3 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 350 -330 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} 90 -450 0 0 {name=p25 lab=VBIAS}
C {devices/lab_pin.sym} 700 -330 2 0 {name=p1 sig_type=std_logic lab=VBIAS}
