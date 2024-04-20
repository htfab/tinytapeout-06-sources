v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 140 -40 210 -40 {
lab=#net1}
N 170 -20 210 -20 {
lab=gnd}
N 170 -20 170 120 {
lab=gnd}
N -190 40 -160 40 {
lab=gnd}
N -190 40 -190 120 {
lab=gnd}
N 180 -60 210 -60 {
lab=vdd}
N 180 -130 180 -60 {
lab=vdd}
N -170 -40 -160 -40 {
lab=vdd}
N -170 -130 -170 -40 {
lab=vdd}
N -190 -20 -160 -20 {
lab=vcp}
N -190 -90 -190 -20 {
lab=vcp}
N -170 -130 180 -130 {
lab=vdd}
N -240 -130 -170 -130 {
lab=vdd}
N -240 -90 -190 -90 {
lab=vcp}
N -240 0 -160 0 {
lab=in}
N -240 20 -160 20 {
lab=vcn}
N -190 120 170 120 {
lab=gnd}
N -240 120 -190 120 {
lab=gnd}
N 510 -60 560 -60 {
lab=xxx}
C {inv.sym} 360 -40 0 0 {name=x9}
C {tg.sym} -10 0 0 0 {name=x10}
C {devices/ipin.sym} -240 -130 0 0 {name=p1 lab=vdd}
C {devices/ipin.sym} -240 -90 0 0 {name=p2 lab=vcp}
C {devices/ipin.sym} -240 0 0 0 {name=p3 lab=in}
C {devices/ipin.sym} -240 20 0 0 {name=p4 lab=vcn}
C {devices/ipin.sym} -240 120 0 0 {name=p5 lab=gnd}
C {devices/opin.sym} 560 -60 0 0 {name=p6 lab=out}
