v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -390 50 -390 60 {
lab=GND}
N -520 50 -390 50 {
lab=GND}
N -520 30 -520 50 {
lab=GND}
N -420 30 -420 50 {
lab=GND}
N -250 20 -210 20 {
lab=GND}
N -250 20 -250 50 {
lab=GND}
N -390 50 -250 50 {
lab=GND}
N -420 -40 -420 -30 {
lab=vc}
N -520 -100 -520 -30 {
lab=vdd}
N -520 -100 -260 -100 {
lab=vdd}
N -260 -100 -260 -40 {
lab=vdd}
N -260 -40 -210 -40 {
lab=vdd}
N -340 0 -210 0 {
lab=vc}
N -340 -40 -340 0 {
lab=vc}
N -420 -40 -340 -40 {
lab=vc}
N -260 -20 -210 -20 {
lab=vcp}
N -310 -30 -310 -20 {
lab=vcp}
N -310 -20 -260 -20 {
lab=vcp}
N -310 -100 -310 -90 {
lab=vdd}
N 180 -40 230 -40 {
lab=out}
N 90 -40 120 -40 {
lab=#net1}
N 210 40 210 50 {
lab=GND}
N -250 50 210 50 {
lab=GND}
N 210 -40 210 -20 {
lab=out}
N -250 -180 -250 20 {
lab=GND}
N -250 -180 -200 -180 {
lab=GND}
N -260 -240 -260 -100 {
lab=vdd}
N -260 -240 -200 -240 {
lab=vdd}
N -220 -220 -220 -20 {
lab=vcp}
N -220 -220 -200 -220 {
lab=vcp}
N -230 -200 -200 -200 {
lab=vc}
N -230 -200 -230 0 {
lab=vc}
N 100 -240 130 -240 {
lab=#net2}
N 100 -220 220 -220 {
lab=#net3}
N 100 -200 310 -200 {
lab=#net4}
N 100 -180 130 -180 {
lab=#net5}
N 100 -160 220 -160 {
lab=#net6}
N 210 -240 410 -240 {
lab=out1}
N 300 -220 410 -220 {
lab=out2}
N 390 -200 410 -200 {
lab=out3}
N 210 -180 410 -180 {
lab=out4}
N 300 -160 410 -160 {
lab=out5}
C {devices/vsource.sym} -520 0 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/vsource.sym} -420 0 0 0 {name=V2 value="pwl(0s 0.4V 1ms 0.3V 2ms 1.4V)" savecurrent=false}
C {devices/gnd.sym} -390 60 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 230 -40 0 1 {name=p1 sig_type=std_logic lab=out}
C {devices/lab_wire.sym} -420 -40 0 0 {name=p2 sig_type=std_logic lab=vc}
C {devices/code.sym} -540 -270 0 0 {name=TT_MODELS1
only_toplevel=true
format="tcleval( @value )"
value=".lib \\\\$::SKYWATER_MODELS\\\\/sky130.lib.spice tt
.include \\\\$::SKYWATER_STDCELLS/../../sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice

.param mc_mm_switch=0
.param mc_pr_switch=1
"
}
C {devices/code.sym} -410 -270 0 0 {name=spice1 only_toplevel=false value="
.option wnflag=0
.option savecurrents
.control
save all
tran 10n 2m 1m
plot vc vcp out
plot i(V1)
plot out1 out2 out3 out4 out5
write vcro5.raw
op
.endc
"}
C {devices/res.sym} 150 -40 1 0 {name=R1
value=500
footprint=1206
device=resistor
m=1}
C {devices/bsource.sym} -310 -60 0 0 {name=B1 VAR=V FUNC=V(vc)}
C {devices/lab_wire.sym} -310 -20 0 0 {name=p3 sig_type=std_logic lab=vcp}
C {vcro_5elements.sym} -60 -10 0 0 {name=x1}
C {devices/capa.sym} 210 10 0 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {vcro_5elements_taps.sym} -50 -200 0 0 {name=x2}
C {sky130_stdcells/buf_1.sym} 170 -240 0 0 {name=x3 VGND=GND VNB=GND VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {devices/lab_wire.sym} -520 -100 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {sky130_stdcells/buf_1.sym} 260 -220 0 0 {name=x4 VGND=GND VNB=GND VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_1.sym} 350 -200 0 0 {name=x5 VGND=GND VNB=GND VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_1.sym} 170 -180 0 0 {name=x6 VGND=GND VNB=GND VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_1.sym} 260 -160 0 0 {name=x7 VGND=GND VNB=GND VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 410 -240 0 1 {name=p5 sig_type=std_logic lab=out1}
C {devices/lab_pin.sym} 410 -220 0 1 {name=p6 sig_type=std_logic lab=out2}
C {devices/lab_pin.sym} 410 -200 0 1 {name=p7 sig_type=std_logic lab=out3}
C {devices/lab_pin.sym} 410 -180 0 1 {name=p8 sig_type=std_logic lab=out4}
C {devices/lab_pin.sym} 410 -160 0 1 {name=p9 sig_type=std_logic lab=out5}
