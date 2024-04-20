v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
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
C {devices/iopin.sym} -330 -120 0 1 { name=p8 lab=VDD sim_pinnumber=0}
C {devices/iopin.sym} -330 -100 0 1 { name=p4 lab=VSS sim_pinnumber=1}
C {devices/iopin.sym} -330 -50 0 1 { name=p5 lab=VPBIAS sim_pinnumber=2}
C {devices/iopin.sym} -330 -70 0 1 { name=p6 lab=VNBIAS sim_pinnumber=3}
C {devices/lab_pin.sym} -30 60 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/res_high_po.sym} 10 -160 0 0 {name=R1
W=0.35
L=3
model=res_high_po
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} -40 -200 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -10 -160 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 70 -30 0 1 {name=p3 sig_type=std_logic lab=VNBIAS}
C {devices/lab_pin.sym} -180 -200 0 1 {name=p19 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -250 -120 0 0 {name=p18 sig_type=std_logic lab=VPBIAS}
C {devices/lab_pin.sym} -180 -150 0 1 {name=p13 sig_type=std_logic lab=VDD}
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
