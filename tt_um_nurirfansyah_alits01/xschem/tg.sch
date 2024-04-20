v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -10 -60 20 -60 {
lab=out}
N 20 -60 20 80 {
lab=out}
N -10 80 20 80 {
lab=out}
N 20 -20 60 -20 {
lab=out}
N -150 -60 -70 -60 {
lab=in}
N -150 -60 -150 70 {
lab=in}
N -150 70 -150 80 {
lab=in}
N -150 80 -70 80 {
lab=in}
N -190 -20 -150 -20 {
lab=in}
N -40 -140 -40 -100 {
lab=vcon_p}
N -190 -140 -40 -140 {
lab=vcon_p}
N -190 -170 -110 -170 {
lab=vdd}
N -110 -170 -110 -30 {
lab=vdd}
N -110 -30 -40 -30 {
lab=vdd}
N -40 -60 -40 -30 {
lab=vdd}
N -40 50 -40 80 {
lab=gnd}
N -110 50 -40 50 {
lab=gnd}
N -190 130 -40 130 {
lab=vcon_n}
N -40 120 -40 130 {
lab=vcon_n}
N -110 50 -110 170 {
lab=gnd}
N -190 170 -110 170 {
lab=gnd}
C {sky130_fd_pr/pfet_01v8.sym} -40 -80 3 1 {name=M1
W=2
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
C {sky130_fd_pr/nfet_01v8.sym} -40 100 3 0 {name=M2
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
model=nfet_01v8
spiceprefix=X
}
C {devices/ipin.sym} -190 -140 0 0 {name=p1 lab=vcon_p}
C {devices/ipin.sym} -190 -170 0 0 {name=p2 lab=vdd}
C {devices/ipin.sym} -190 130 0 0 {name=p3 lab=vcon_n}
C {devices/ipin.sym} -190 170 0 0 {name=p4 lab=gnd}
C {devices/ipin.sym} -190 -20 0 0 {name=p5 lab=in}
C {devices/opin.sym} 60 -20 0 0 {name=p6 lab=out}
