v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {Testbench for current mirrors. Nominal 1 uA current} -580 -510 0 0 0.4 0.4 {}
N -120 -30 -90 -30 {
lab=VSS}
N -120 -30 -120 0 {
lab=VSS}
N -120 0 -90 -0 {
lab=VSS}
N -90 -0 50 0 {
lab=VSS}
N 50 0 240 0 {
lab=VSS}
N 200 -30 240 -30 {
lab=VSS}
N 200 -30 200 -0 {
lab=VSS}
N 50 -30 80 -30 {
lab=VSS}
N 80 -30 80 -0 {
lab=VSS}
N 240 0 400 0 {
lab=VSS}
N 400 0 560 0 {
lab=VSS}
N 560 0 690 0 {
lab=VSS}
N 520 -30 560 -30 {
lab=VSS}
N 520 -30 520 -0 {
lab=VSS}
N 400 -30 430 -30 {
lab=VSS}
N 430 -30 430 -0 {
lab=VSS}
N 280 -30 360 -30 {
lab=#net1}
N 280 -60 280 -30 {
lab=#net1}
N 240 -60 280 -60 {
lab=#net1}
N 600 -30 650 -30 {
lab=#net2}
N 600 -60 600 -30 {
lab=#net2}
N 560 -60 600 -60 {
lab=#net2}
N -50 -30 10 -30 {
lab=#net3}
N -50 -60 -50 -30 {
lab=#net3}
N -90 -60 -50 -60 {
lab=#net3}
N -220 0 -120 0 {
lab=VSS}
N -90 -110 -90 -60 {
lab=#net3}
N -90 -200 -90 -170 {
lab=VSS}
N 240 -110 240 -60 {
lab=#net1}
N 240 -200 240 -170 {
lab=VSS}
N 560 -110 560 -60 {
lab=#net2}
N 560 -200 560 -170 {
lab=VSS}
N 50 -110 50 -60 {
lab=IBO_DLCM_1}
N 400 -110 400 -60 {
lab=IBO_DLCM2_1}
N 690 -110 690 -60 {
lab=IBO_LCM_1}
N 690 -30 730 -30 {
lab=VSS}
N 730 -30 730 -0 {
lab=VSS}
N 690 0 730 -0 {
lab=VSS}
N -120 250 -90 250 {
lab=VSS}
N -120 250 -120 280 {
lab=VSS}
N -120 280 -90 280 {
lab=VSS}
N -90 280 50 280 {
lab=VSS}
N 50 280 240 280 {
lab=VSS}
N 200 250 240 250 {
lab=VSS}
N 200 250 200 280 {
lab=VSS}
N 50 250 80 250 {
lab=VSS}
N 80 250 80 280 {
lab=VSS}
N 240 280 400 280 {
lab=VSS}
N 400 280 560 280 {
lab=VSS}
N 560 280 690 280 {
lab=VSS}
N 520 250 560 250 {
lab=VSS}
N 520 250 520 280 {
lab=VSS}
N 400 250 430 250 {
lab=VSS}
N 430 250 430 280 {
lab=VSS}
N 280 250 360 250 {
lab=#net4}
N 280 220 280 250 {
lab=#net4}
N 240 220 280 220 {
lab=#net4}
N 600 250 650 250 {
lab=#net5}
N 600 220 600 250 {
lab=#net5}
N 560 220 600 220 {
lab=#net5}
N -50 250 10 250 {
lab=#net6}
N -50 220 -50 250 {
lab=#net6}
N -90 220 -50 220 {
lab=#net6}
N -220 280 -120 280 {
lab=VSS}
N -90 170 -90 220 {
lab=#net6}
N -90 80 -90 110 {
lab=VSS}
N 240 170 240 220 {
lab=#net4}
N 240 80 240 110 {
lab=VSS}
N 560 170 560 220 {
lab=#net5}
N 560 80 560 110 {
lab=VSS}
N 50 170 50 220 {
lab=IBO_DLCM_4}
N 400 170 400 220 {
lab=IBO_DLCM2_4}
N 690 170 690 220 {
lab=IBO_LCM_4}
N 690 250 730 250 {
lab=VSS}
N 730 250 730 280 {
lab=VSS}
N 690 280 730 280 {
lab=VSS}
N -190 170 -190 220 {
lab=IBP}
N -220 170 -190 170 {
lab=IBP}
N -150 0 -150 280 {
lab=VSS}
C {SUN_TR_SKY130NM/SUNTR_NCHDLCM.sym} 10 -30 0 0 {name=x1 }
C {SUN_TR_SKY130NM/SUNTR_NCHDLCM.sym} -50 -30 0 1 {name=x2 }
C {SUN_TR_SKY130NM/SUNTR_NCHDLCM2.sym} 280 -30 0 1 {name=x3 }
C {SUN_TR_SKY130NM/SUNTR_NCHDLCM2.sym} 360 -30 0 0 {name=x4 }
C {SUN_TR_SKY130NM/SUNTR_NCHLCM.sym} 650 -30 0 0 {name=x5 }
C {SUN_TR_SKY130NM/SUNTR_NCHLCM.sym} 600 -30 0 1 {name=x6 }
C {devices/ipin.sym} -220 0 0 0 {name=p1 lab=VSS}
C {devices/lab_wire.sym} -90 -190 0 0 {name=l1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 240 -190 0 0 {name=l2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 560 -190 0 0 {name=l3 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 50 -100 1 0 {name=p2 lab=IBO_DLCM_1}
C {devices/ipin.sym} 400 -100 1 0 {name=p3 lab=IBO_DLCM2_1}
C {devices/ipin.sym} 690 -100 1 0 {name=p4 lab=IBO_LCM_1}
C {SUN_TR_SKY130NM/SUNTR_NCHDLCM.sym} 10 250 0 0 {name=x7[3:0]}
C {SUN_TR_SKY130NM/SUNTR_NCHDLCM.sym} -50 250 0 1 {name=x8[3:0]}
C {SUN_TR_SKY130NM/SUNTR_NCHDLCM2.sym} 280 250 0 1 {name=x9[3:0]}
C {SUN_TR_SKY130NM/SUNTR_NCHDLCM2.sym} 360 250 0 0 {name=x10[3:0]}
C {SUN_TR_SKY130NM/SUNTR_NCHLCM.sym} 650 250 0 0 {name=x11[3:0]}
C {SUN_TR_SKY130NM/SUNTR_NCHLCM.sym} 600 250 0 1 {name=x12[3:0]}
C {devices/lab_wire.sym} -90 90 0 0 {name=l4 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 240 90 0 0 {name=l5 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 560 90 0 0 {name=l6 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 50 180 1 0 {name=p6 lab=IBO_DLCM_4}
C {devices/ipin.sym} 400 180 1 0 {name=p7 lab=IBO_DLCM2_4}
C {devices/ipin.sym} 690 180 1 0 {name=p8 lab=IBO_LCM_4}
C {devices/cccs.sym} -90 -140 0 0 {name=F1 vnam=VBIAS value=1}
C {devices/vsource.sym} -190 250 0 0 {name=VBIAS value=1}
C {devices/cccs.sym} 240 -140 0 0 {name=F2 vnam=VBIAS value=1}
C {devices/cccs.sym} 560 -140 0 0 {name=F3 vnam=VBIAS value=1}
C {devices/cccs.sym} 560 140 0 0 {name=F5 vnam=VBIAS value=1}
C {devices/cccs.sym} 240 140 0 0 {name=F6 vnam=VBIAS value=1}
C {devices/cccs.sym} -90 140 0 0 {name=F7 vnam=VBIAS value=1}
C {devices/ipin.sym} -220 170 0 0 {name=p9 lab=IBP}
C {cborder/border_s.sym} 580 360 0 0 {}
