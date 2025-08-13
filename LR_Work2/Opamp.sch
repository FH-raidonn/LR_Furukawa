v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 100 170 120 170 {lab=GND}
N -60 170 -40 170 {lab=GND}
N -100 -240 20 -240 {lab=VDD}
N 20 -240 140 -240 {lab=VDD}
N -150 -240 -110 -240 {lab=VDD}
N -110 -240 -100 -240 {lab=VDD}
N 140 -240 290 -240 {lab=VDD}
N 300 -170 330 -170 {lab=VDD}
N 0 170 20 170 {lab=#net1}
N 40 170 60 170 {lab=#net1}
N -150 230 -150 250 {lab=GND}
N -150 230 300 230 {lab=GND}
N -40 200 -40 230 {lab=GND}
N 100 200 100 230 {lab=GND}
N -70 170 -60 170 {lab=GND}
N -70 170 -70 230 {lab=GND}
N 120 170 130 170 {lab=GND}
N 130 170 130 230 {lab=GND}
N 190 100 190 170 {lab=#net2}
N 190 170 240 170 {lab=#net2}
N 290 100 300 100 {lab=OUT}
N 280 100 290 100 {lab=OUT}
N 240 170 260 170 {lab=#net2}
N 20 170 40 170 {lab=#net1}
N 30 -240 30 -200 {lab=VDD}
N 30 -170 60 -170 {lab=VDD}
N 60 -240 60 -170 {lab=VDD}
N -40 0 -20 0 {lab=VDD}
N 80 0 100 0 {lab=VDD}
N 140 0 160 0 {lab=Vin+}
N -40 90 -40 140 {lab=#net1}
N 100 100 140 100 {lab=#net2}
N 100 100 100 140 {lab=#net2}
N 140 100 240 100 {lab=#net2}
N -60 -170 -10 -170 {lab=GND}
N 300 -240 300 -200 {lab=VDD}
N 330 -240 330 -170 {lab=VDD}
N 300 -240 330 -240 {lab=VDD}
N 30 -140 30 -60 {lab=#net3}
N -40 30 -40 90 {lab=#net1}
N 30 100 30 170 {lab=#net1}
N -40 100 30 100 {lab=#net1}
N 100 30 100 100 {lab=#net2}
N -40 -60 -40 -30 {lab=#net3}
N -40 -60 100 -60 {lab=#net3}
N 100 -60 100 -30 {lab=#net3}
N 300 200 300 230 {lab=GND}
N 300 170 330 170 {lab=GND}
N 330 170 330 230 {lab=GND}
N 300 230 330 230 {lab=GND}
N 300 -140 300 140 {lab=OUT}
N 290 -240 300 -240 {lab=VDD}
N 300 50 390 50 {lab=OUT}
N -170 -90 160 -90 {lab=Vin+}
N 160 -90 160 0 {lab=Vin+}
N -120 -170 -120 230 {lab=GND}
N -120 -170 -60 -170 {lab=GND}
N -60 -170 -60 -110 {lab=GND}
N -60 -110 210 -110 {lab=GND}
N 210 -170 210 -110 {lab=GND}
N 210 -170 260 -170 {lab=GND}
N 390 50 410 50 {lab=OUT}
N -170 -0 -80 0 {lab=Vin+}
C {pmos4.sym} 10 -170 0 0 {name=M4 model=pmos w=5u l=0.18u del=0 m=1}
C {pmos4.sym} 280 -170 0 0 {name=M5 model=pmos w=5u l=0.18u del=0 m=1}
C {nmos4.sym} 80 170 0 0 {name=M6 model=nmos w=5u l=0.18u del=0 m=1}
C {nmos4.sym} -20 170 2 0 {name=M7 model=nmos w=5u l=0.18u del=0 m=1}
C {vdd.sym} -150 -240 0 0 {name=l5 lab=VDD}
C {gnd.sym} -150 250 0 0 {name=l6 lab=GND}
C {nmos4.sym} 280 170 0 0 {name=M8 model=nmos w=5u l=0.18u del=0 m=1}
C {ipin.sym} -170 -90 0 0 {name=p2 lab=Vin+
}
C {iopin.sym} 410 50 0 0 {name=p3 lab=OUT}
C {capa.sym} 250 100 1 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {pmos4.sym} -60 0 0 0 {name=M9 model=pmos w=5u l=0.18u del=0 m=1}
C {pmos4.sym} 120 0 2 0 {name=M1 model=pmos w=5u l=0.18u del=0 m=1}
C {vdd.sym} -20 0 1 0 {name=l1 lab=VDD}
C {vdd.sym} 80 0 3 0 {name=l2 lab=VDD}
C {ipin.sym} -170 0 0 0 {name=p1 lab=Vin-
}
