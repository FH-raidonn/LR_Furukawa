v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 30 100 30 140 {lab=GND}
N 60 -90 100 -90 {lab=OUT}
N 100 -90 100 -0 {lab=OUT}
N 100 -0 150 0 {lab=OUT}
N 60 100 100 100 {lab=OUT}
N 100 0 100 100 {lab=OUT}
N 30 -90 30 -50 {lab=VDD}
N -130 -90 -0 -90 {lab=High}
N -130 100 -0 100 {lab=LOW}
N -80 -330 -80 -290 {lab=#net1}
N -80 -230 -80 -180 {lab=GND}
N -80 -430 -80 -390 {lab=VDD}
N -80 -260 -40 -260 {lab=GND}
N -40 -260 -40 -200 {lab=GND}
N -80 -200 -40 -200 {lab=GND}
N -80 -360 -50 -360 {lab=VDD}
N -50 -420 -50 -360 {lab=VDD}
N -80 -420 -50 -420 {lab=VDD}
N -80 -310 30 -310 {lab=#net1}
N 30 -310 30 -130 {lab=#net1}
N -20 -310 -20 40 {lab=#net1}
N -20 40 30 40 {lab=#net1}
N 30 40 30 60 {lab=#net1}
N -160 -360 -120 -360 {lab=IN}
N -160 -360 -160 -260 {lab=IN}
N -160 -260 -120 -260 {lab=IN}
N -210 -310 -160 -310 {lab=IN}
C {nmos4.sym} 30 80 1 0 {name=M1 model=nmos w=5u l=0.18u del=0 m=1}
C {pmos4.sym} 30 -110 1 0 {name=M2 model=pmos w=5u l=0.18u del=0 m=1}
C {gnd.sym} 30 140 0 0 {name=l2 lab=GND}
C {iopin.sym} 150 0 0 0 {name=p1 lab=OUT}
C {vdd.sym} 30 -50 2 0 {name=l1 lab=VDD}
C {ipin.sym} -130 -90 0 0 {name=p3 lab=High}
C {ipin.sym} -130 100 0 0 {name=p2 lab=LOW}
C {nmos4.sym} -100 -260 0 0 {name=M3 model=nmos w=5u l=0.18u del=0 m=1}
C {pmos4.sym} -100 -360 0 0 {name=M4 model=pmos w=5u l=0.18u del=0 m=1}
C {vdd.sym} -80 -430 0 0 {name=l3 lab=VDD}
C {gnd.sym} -80 -180 0 0 {name=l4 lab=GND}
C {ipin.sym} -210 -310 0 0 {name=p4 lab=IN}
