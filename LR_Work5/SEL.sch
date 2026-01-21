v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 30 160 30 200 {lab=GND}
N 60 -90 100 -90 {lab=OUT}
N 100 -90 100 -0 {lab=OUT}
N 100 30 180 30 {lab=OUT}
N 60 160 100 160 {lab=OUT}
N 100 60 100 160 {lab=OUT}
N 30 -90 30 -50 {lab=VDD}
N -130 -90 -0 -90 {lab=High}
N -130 160 0 160 {lab=LOW}
N -260 -250 -260 -230 {lab=GND}
N -260 -470 -260 -440 {lab=VDD}
N -260 -310 -220 -310 {lab=GND}
N -220 -310 -220 -250 {lab=GND}
N -260 -250 -220 -250 {lab=GND}
N -260 -410 -230 -410 {lab=VDD}
N -230 -470 -230 -410 {lab=VDD}
N -260 -470 -230 -470 {lab=VDD}
N -340 -410 -300 -410 {lab=IN}
N -340 -360 -340 -310 {lab=IN}
N -340 -310 -300 -310 {lab=IN}
N -390 -360 -340 -360 {lab=IN}
N -260 -360 -260 -340 {lab=#net1}
N -260 -280 -260 -250 {lab=GND}
N -260 -480 -260 -470 {lab=VDD}
N -340 -410 -340 -360 {lab=IN}
N -260 -380 -260 -360 {lab=#net1}
N 100 0 100 60 {lab=OUT}
N 30 90 30 120 {lab=#net1}
N 30 -220 90 -220 {lab=#net1}
N 150 -220 190 -220 {lab=VDD}
N 120 -290 120 -260 {lab=PD}
N 30 -220 30 -130 {lab=#net1}
N 30 -270 30 -220 {lab=#net1}
N 120 -220 120 -190 {lab=VDD}
N 120 -190 170 -190 {lab=VDD}
N 170 -220 170 -190 {lab=VDD}
N 30 -360 30 -330 {lab=#net1}
N 30 -330 30 -270 {lab=#net1}
N 30 70 30 90 {lab=#net1}
N -30 70 30 70 {lab=#net1}
N -170 -180 -140 -180 {lab=GND}
N -190 -180 -190 -150 {lab=GND}
N -110 -180 -110 -160 {lab=GND}
N -40 70 -30 70 {lab=#net1}
N -50 70 -40 70 {lab=#net1}
N -50 -360 -50 70 {lab=#net1}
N -260 -360 30 -360 {lab=#net1}
N -80 -180 -50 -180 {lab=#net1}
N -110 -250 -110 -220 {lab=PDB}
N -190 -180 -170 -180 {lab=GND}
N -190 -150 -190 -140 {lab=GND}
N -190 -160 -110 -160 {lab=GND}
N -440 -360 -390 -360 {lab=IN}
C {gnd.sym} 30 200 0 0 {name=l2 lab=GND}
C {ipin.sym} -130 -90 0 0 {name=p3 lab=High}
C {ipin.sym} -130 160 0 0 {name=p2 lab=LOW}
C {gnd.sym} -260 -230 0 0 {name=l4 lab=GND}
C {ipin.sym} -430 -360 0 0 {name=p4 lab=IN}
C {PMOS_MIN.sym} -300 -410 0 0 {name=M4 model=p3.0 w=3.5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {NMOS_MIN.sym} -300 -310 0 0 {name=M1 model=n3.0 w=3.5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {NMOS_MIN.sym} 30 120 1 0 {name=M2 model=n3.0 w=70u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {PMOS_MIN.sym} 30 -130 1 0 {name=M3 model=p3.0 w=42u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {ipin.sym} -260 -480 1 0 {name=p5 lab=VDD}
C {lab_pin.sym} 30 -50 3 0 {name=l1 sig_type=std_logic lab=VDD}
C {iopin.sym} 180 30 0 0 {name=p1 lab=OUT}
C {PMOS_MIN.sym} 120 -260 1 0 {name=M5 model=p3.0 w=3.5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {lab_pin.sym} 190 -220 2 0 {name=l5 sig_type=std_logic lab=VDD}
C {ipin.sym} 120 -290 1 0 {name=p6 lab=PD}
C {NMOS_MIN.sym} -110 -220 1 0 {name=M7 model=n3.0 w=3.5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {gnd.sym} -190 -140 0 0 {name=l6 lab=GND}
C {ipin.sym} -110 -250 1 0 {name=p7 lab=PDB}
