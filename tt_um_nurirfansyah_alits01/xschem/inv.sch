v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -110 -130 -110 -80 {
lab=out}
N -190 -160 -150 -160 {
lab=in}
N -190 -160 -190 -50 {
lab=in}
N -190 -50 -150 -50 {
lab=in}
N -290 -240 -110 -240 {
lab=vdd}
N -110 -240 -110 -190 {
lab=vdd}
N -290 -110 -190 -110 {
lab=in}
N -110 -100 30 -100 {
lab=out}
N -290 50 -110 50 {
lab=gnd}
N -110 -20 -110 50 {
lab=gnd}
N -110 -50 -40 -50 {
lab=gnd}
N -40 -50 -40 50 {
lab=gnd}
N -110 50 -40 50 {
lab=gnd}
N -110 -160 -60 -160 {
lab=vdd}
N -60 -240 -60 -160 {
lab=vdd}
N -110 -240 -60 -240 {
lab=vdd}
C {sky130_fd_pr/nfet_01v8.sym} -130 -50 0 0 {name=M1
W=2
L=0.5
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
C {devices/ipin.sym} -290 -110 0 0 {name=p1 lab=in}
C {devices/ipin.sym} -290 -240 0 0 {name=p2 lab=vdd}
C {devices/ipin.sym} -290 50 0 0 {name=p3 lab=gnd}
C {devices/opin.sym} 30 -100 0 0 {name=p4 lab=out}
C {sky130_fd_pr/pfet_01v8.sym} -130 -160 0 0 {name=M2
W=4
L=0.5
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
