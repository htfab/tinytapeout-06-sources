v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 1660 -1400 2460 -1000 {flags=graph
y1=3.3e-05
y2=7.8e-05
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0


color="8 11 7"
node="i(v.x2.vbiasn)
i(v.x2.vbiasp1)
i(v.x2.vbiasp2)"}
B 2 1660 -1000 2460 -600 {flags=graph
y1=-0.0089
y2=0.0089
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0


color=6
node="\\"VRF_N VRF  -\\""}
B 2 2460 -1400 3260 -1000 {flags=graph
y1=1.2
y2=1.6
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0




color="5 4"
node="VOUT
VOUT_N"}
B 2 1660 -600 2460 -200 {flags=graph
y1=-0.32
y2=0.2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0




color="4 18"
node="\\"VOUT VOUT_N -\\"
\\"VRF VRF_N -\\""}
B 2 2460 -1000 3260 -600 {flags=graph
y1=0.29
y2=0.31
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0




color=4
node=x2.vcom}
B 2 2460 -600 3260 -200 {flags=graph
y1=-49.2448
y2=11.6625
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0




color=18
node="\\"VOUT VOUT_N - VRF_N VRF  - 0.001 + /\\""}
N 1130 -1270 1250 -1270 {
lab=VRF}
N 1130 -1250 1250 -1250 {
lab=VRF_N}
N 970 -1480 970 -1470 {
lab=VSS}
N 1080 -1480 1080 -1470 {
lab=VDD}
N 970 -1410 970 -1400 {
lab=GND}
N 1080 -1410 1080 -1400 {
lab=GND}
C {devices/code.sym} 950 -1170 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt_mm

"
spice_ignore=false}
C {devices/launcher.sym} 1370 -1450 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {devices/simulator_commands_shown.sym} 1070 -780 0 0 {name=COMMANDS2
simulator=ngspice
only_toplevel=false 
value="
.options savecurrents
* VRF VRF 0 pulse 1.2 0 5n 1n 1n 30n 60n
* VRF VRF 0 SIN 0.0 0.001 100MEG
* VRF VRF 0 pulse 0.901 0.9 5n 1n 1n 10n 20n
* VRF_N VRF_N 0 pulse 0.90 0.9 5n 1n 1n 30n 60n
VRF VRF 0 sin 0.9 0.001 11MEG
VRF_N VRF_N 0 sin 0.9 0.005 22MEG
.control
  repeat 10
    save all
    tran 10p 200n
    remzerovec
    write tb_opamp1.raw
    set appendwrite
    reset
    end
.endc
"}
C {vbias1.sym} 1270 -1000 0 0 {name=x1}
C {devices/lab_pin.sym} 1120 -990 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1120 -1010 0 0 {name=p22 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1420 -990 0 1 {name=p24 sig_type=std_logic lab=VPBIAS}
C {devices/lab_pin.sym} 1420 -1010 2 0 {name=p27 sig_type=std_logic lab=VNBIAS}
C {opamp1.sym} 1320 -1260 0 0 {name=x2}
C {devices/lab_pin.sym} 1130 -1270 0 0 {name=p2 sig_type=std_logic lab=VRF}
C {devices/lab_pin.sym} 1130 -1250 0 0 {name=p7 sig_type=std_logic lab=VRF_N}
C {devices/lab_pin.sym} 1400 -1250 0 1 {name=p9 sig_type=std_logic lab=VOUT_N}
C {devices/lab_pin.sym} 1400 -1270 0 1 {name=p12 sig_type=std_logic lab=VOUT}
C {devices/lab_pin.sym} 1250 -1170 0 0 {name=p13 sig_type=std_logic lab=VPBIAS}
C {devices/lab_pin.sym} 1250 -1180 2 1 {name=p16 sig_type=std_logic lab=VNBIAS}
C {devices/lab_pin.sym} 1250 -1150 0 0 {name=p17 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1250 -1160 0 0 {name=p18 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 1080 -1440 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/gnd.sym} 1080 -1400 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 1080 -1480 2 1 {name=p19 sig_type=std_logic lab=VDD
}
C {devices/vsource.sym} 970 -1440 0 0 {name=V2 value=0 savecurrent=false}
C {devices/gnd.sym} 970 -1400 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 970 -1480 2 1 {name=p28 sig_type=std_logic lab=VSS
}
