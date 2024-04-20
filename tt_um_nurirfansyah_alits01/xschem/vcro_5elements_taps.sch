v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -1790 70 -1540 70 {
lab=gnd}
N -1790 -150 -1520 -150 {
lab=vdd}
N -1790 -120 -1470 -120 {
lab=vcon_p}
N -1790 -90 -1630 -90 {
lab=vcon_n}
N -1020 -110 -900 -110 {
lab=out1}
N -1020 -150 -1020 -110 {
lab=out1}
N -1040 -150 -1020 -150 {
lab=out1}
N -580 -110 -500 -110 {
lab=out2}
N -580 -150 -580 -110 {
lab=out2}
N -600 -150 -580 -150 {
lab=out2}
N -180 -110 -110 -110 {
lab=out3}
N -180 -150 -180 -110 {
lab=out3}
N -200 -150 -180 -150 {
lab=out3}
N 200 -110 300 -110 {
lab=out4}
N 200 -150 200 -110 {
lab=out4}
N 190 -150 200 -150 {
lab=out4}
N 600 -150 690 -150 {
lab=out5}
N 640 -210 640 -150 {
lab=out5}
N -1410 -210 640 -210 {
lab=out5}
N -1410 -210 -1410 -110 {
lab=out5}
N -1410 -110 -1340 -110 {
lab=out5}
N -1520 -150 -1340 -150 {
lab=vdd}
N -1520 -230 -1520 -150 {
lab=vdd}
N -1520 -230 280 -230 {
lab=vdd}
N 280 -230 280 -150 {
lab=vdd}
N 280 -150 300 -150 {
lab=vdd}
N -120 -150 -110 -150 {
lab=vdd}
N -120 -230 -120 -150 {
lab=vdd}
N -520 -150 -500 -150 {
lab=vdd}
N -520 -230 -520 -150 {
lab=vdd}
N -920 -150 -900 -150 {
lab=vdd}
N -920 -230 -920 -150 {
lab=vdd}
N -1440 -130 -1340 -130 {
lab=vcon_p}
N -1440 -130 -1440 -120 {
lab=vcon_p}
N -1470 -120 -1440 -120 {
lab=vcon_p}
N -1440 -190 -1440 -130 {
lab=vcon_p}
N -1440 -190 250 -190 {
lab=vcon_p}
N 250 -190 250 -130 {
lab=vcon_p}
N 250 -130 300 -130 {
lab=vcon_p}
N -150 -130 -110 -130 {
lab=vcon_p}
N -150 -190 -150 -130 {
lab=vcon_p}
N -550 -130 -500 -130 {
lab=vcon_p}
N -550 -190 -550 -130 {
lab=vcon_p}
N -960 -130 -900 -130 {
lab=vcon_p}
N -960 -190 -960 -130 {
lab=vcon_p}
N -1630 -90 -1340 -90 {
lab=vcon_n}
N -1410 -70 -1340 -70 {
lab=gnd}
N -1410 -70 -1410 70 {
lab=gnd}
N -1540 70 250 70 {
lab=gnd}
N 250 -70 250 70 {
lab=gnd}
N 250 -70 300 -70 {
lab=gnd}
N -170 -70 -110 -70 {
lab=gnd}
N -170 -70 -170 70 {
lab=gnd}
N -560 -70 -500 -70 {
lab=gnd}
N -560 -70 -560 70 {
lab=gnd}
N -980 -70 -900 -70 {
lab=gnd}
N -980 -70 -980 70 {
lab=gnd}
N -1440 -90 -1440 -10 {
lab=vcon_n}
N -1440 -10 220 -10 {
lab=vcon_n}
N 220 -90 220 -10 {
lab=vcon_n}
N 220 -90 300 -90 {
lab=vcon_n}
N -190 -90 -110 -90 {
lab=vcon_n}
N -190 -90 -190 -10 {
lab=vcon_n}
N -590 -90 -500 -90 {
lab=vcon_n}
N -590 -90 -590 -10 {
lab=vcon_n}
N -1010 -90 -900 -90 {
lab=vcon_n}
N -1010 -90 -1010 -10 {
lab=vcon_n}
N -1010 -310 -960 -310 {
lab=out1}
N -1020 -310 -1010 -310 {
lab=out1}
N -1020 -310 -1020 -150 {
lab=out1}
N -580 -300 -580 -150 {
lab=out2}
N -580 -300 -550 -300 {
lab=out2}
N -180 -290 -180 -150 {
lab=out3}
N -180 -290 -160 -290 {
lab=out3}
N 200 -280 200 -150 {
lab=out4}
N 200 -280 230 -280 {
lab=out4}
C {devices/ipin.sym} -1790 -150 0 0 {name=p1 lab=vdd}
C {devices/ipin.sym} -1790 -120 0 0 {name=p2 lab=vcon_p}
C {devices/ipin.sym} -1790 -90 0 0 {name=p3 lab=vcon_n}
C {devices/ipin.sym} -1790 70 0 0 {name=p4 lab=gnd}
C {devices/opin.sym} 690 -150 0 0 {name=p5 lab=out5}
C {delaycell_vcro.sym} -1190 -110 0 0 {name=x1}
C {delaycell_vcro.sym} -750 -110 0 0 {name=x2}
C {delaycell_vcro.sym} -350 -110 0 0 {name=x3}
C {delaycell_vcro.sym} 40 -110 0 0 {name=x4}
C {delaycell_vcro.sym} 450 -110 0 0 {name=x5}
C {devices/opin.sym} 230 -280 0 0 {name=p6 lab=out4}
C {devices/opin.sym} -160 -290 0 0 {name=p7 lab=out3}
C {devices/opin.sym} -550 -300 0 0 {name=p8 lab=out2}
C {devices/opin.sym} -960 -310 0 0 {name=p9 lab=out1}
