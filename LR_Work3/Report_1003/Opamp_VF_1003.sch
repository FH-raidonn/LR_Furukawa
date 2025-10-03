v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 210 160 240 160 {lab=VDD}
N -360 -20 -180 -20 {lab=VDD}
N -180 -20 -180 20 {lab=VDD}
N -180 -20 -10 -20 {lab=VDD}
N -10 -20 -10 20 {lab=VDD}
N -10 -20 170 -20 {lab=VDD}
N 210 -20 210 90 {lab=VDD}
N 240 90 240 160 {lab=VDD}
N 210 90 240 90 {lab=VDD}
N -10 50 30 50 {lab=VDD}
N 30 -20 30 50 {lab=VDD}
N -220 50 -180 50 {lab=VDD}
N -220 -20 -220 50 {lab=VDD}
N -100 50 -100 100 {lab=#net1}
N -180 120 -100 120 {lab=#net1}
N -360 210 60 210 {lab=Vinp}
N 60 210 60 280 {lab=Vinp}
N 30 280 60 280 {lab=Vinp}
N -180 310 -180 340 {lab=#net2}
N -180 340 -10 340 {lab=#net2}
N -10 310 -10 340 {lab=#net2}
N -180 280 -10 280 {lab=VSS}
N -250 490 20 490 {lab=Iref}
N -140 50 -50 50 {lab=#net1}
N -60 650 170 650 {lab=VSS}
N -300 280 -220 280 {lab=OUT}
N -320 280 -300 280 {lab=OUT}
N -110 600 -110 650 {lab=VSS}
N -110 570 -90 570 {lab=VSS}
N -90 570 -90 620 {lab=VSS}
N -110 620 -90 620 {lab=VSS}
N -280 650 -60 650 {lab=VSS}
N -180 570 -150 570 {lab=Iref}
N -210 570 -180 570 {lab=Iref}
N -250 600 -250 650 {lab=VSS}
N -270 570 -250 570 {lab=VSS}
N -270 570 -270 620 {lab=VSS}
N -270 620 -250 620 {lab=VSS}
N -10 160 50 160 {lab=#net3}
N -180 520 -180 570 {lab=Iref}
N -250 520 -180 520 {lab=Iref}
N -380 520 -250 520 {lab=Iref}
N -250 520 -250 540 {lab=Iref}
N -250 490 -250 520 {lab=Iref}
N -660 310 -660 340 {lab=GND}
N 210 190 210 220 {lab=OUT}
N 170 -20 210 -20 {lab=VDD}
N 130 160 170 160 {lab=#net3}
N 130 160 130 230 {lab=#net3}
N 80 490 170 490 {lab=#net4}
N 210 400 210 460 {lab=OUT}
N 210 520 210 650 {lab=VSS}
N 170 650 210 650 {lab=VSS}
N 210 490 230 490 {lab=VSS}
N 230 490 230 550 {lab=VSS}
N 210 550 230 550 {lab=VSS}
N -480 710 280 710 {lab=OUT}
N -480 280 -480 710 {lab=OUT}
N -480 280 -320 280 {lab=OUT}
N -110 450 -110 540 {lab=#net5}
N -230 410 -150 410 {lab=PD}
N -110 410 -80 410 {lab=VSS}
N 50 490 50 520 {lab=VSS}
N 50 420 50 450 {lab=PD}
N 300 380 300 710 {lab=OUT}
N 210 380 210 400 {lab=OUT}
N 210 340 210 380 {lab=OUT}
N 190 230 210 230 {lab=OUT}
N 130 230 150 230 {lab=#net3}
N 210 380 270 380 {lab=OUT}
N 330 380 370 380 {lab=OUT}
N 270 380 300 380 {lab=OUT}
N 300 380 330 380 {lab=OUT}
N 280 710 300 710 {lab=OUT}
N 370 380 410 380 {lab=OUT}
N -110 340 -110 360 {lab=#net2}
N 210 220 210 320 {lab=OUT}
N 50 160 80 160 {lab=#net3}
N 210 320 210 340 {lab=OUT}
N 80 160 130 160 {lab=#net3}
N -180 80 -180 250 {lab=#net1}
N -100 100 -100 120 {lab=#net1}
N -10 80 -10 250 {lab=#net3}
N 210 90 210 120 {lab=VDD}
N 210 120 210 130 {lab=VDD}
N -110 360 -110 380 {lab=#net2}
N -110 440 -110 450 {lab=#net5}
N -660 210 -660 260 {lab=Vinp}
N -660 210 -360 210 {lab=Vinp}
C {code_shown.sym} -470 800 0 0 {name=s2 only_toplevel=false value=
"
VVDD VDD 0 dc 3.3
VVSS VSS 0 dc 0
IIref 0 Iref dc 10u
VPD PD 0 dc 3.3

*VVIN+ VIN+ 0 pulse(0 3.3 100n 1n 1n 200n 400n)
*VVIN+ VIN+ 0 dc 0

.probe <alli>

.include /home/raidonn/LRCircuit/spicemodel/ocs65_stl_n3_typ.para
.include /home/raidonn/LRCircuit/spicemodel/ocs65_stl_p3_typ.para

.control
save all
dc V1 0 3.3 0.01
*tran 1n 500n
plot V(OUT)-V(Vinp)
plot V(Vinp) V(OUT)
*plot I(V2) I(V3)

write "Opamp_before.raw"

.endc"
}
C {PMOS_MIN.sym} -50 50 2 1 {name=M7 model=p3.0 w=5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {PMOS_MIN.sym} -140 50 2 0 {name=M8 model=p3.0 w=5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {NMOS_MIN.sym} -220 280 0 0 {name=M9 model=n3.0 w=5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {NMOS_MIN.sym} 30 280 0 1 {name=M10 model=n3.0 w=5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {NMOS_MIN.sym} 170 490 0 0 {name=M11 model=n3.0 w=3.5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {PMOS_MIN.sym} 170 160 0 0 {name=M12 model=p3.0 w=3.5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {ipin.sym} -360 -20 0 0 {name=p5 lab=VDD}
C {iopin.sym} 410 380 0 0 {name=p7 lab=OUT}
C {ipin.sym} -370 520 0 0 {name=p1 lab=Iref}
C {NMOS_MIN.sym} -150 570 0 0 {name=M1 model=n3.0 w=3.5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {NMOS_MIN.sym} -210 570 0 1 {name=M2 model=n3.0 w=3.5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {voltage.sym} -660 250 0 0 {name=V1 value=3.3}
C {gnd.sym} -660 340 0 0 {name=l2 lab=GND}
C {lab_pin.sym} -370 210 1 0 {name=l3 sig_type=std_logic lab=Vinp}
C {lab_pin.sym} -100 280 1 0 {name=l5 sig_type=std_logic lab=VSS}
C {ipin.sym} -280 650 0 0 {name=p2 lab=VSS}
C {cap.sym} 190 220 1 0 {name=C1
m=1
value=5p
footprint=1206
device=ceramic}
C {lab_pin.sym} -370 280 3 0 {name=l8 sig_type=std_logic lab=Vinm}
C {NMOS_MIN.sym} -150 410 0 0 {name=M3 model=n3.0 w=3.5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {lab_pin.sym} -80 410 2 0 {name=l1 sig_type=std_logic lab=VSS}
C {NMOS_MIN.sym} 50 450 1 0 {name=M4 model=n3.0 w=3.5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {lab_pin.sym} 50 520 3 0 {name=l6 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 50 420 1 0 {name=l7 sig_type=std_logic lab=PD}
C {lab_pin.sym} -230 410 0 0 {name=l13 sig_type=std_logic lab=PD}
