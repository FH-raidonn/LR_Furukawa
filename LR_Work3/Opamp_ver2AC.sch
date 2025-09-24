v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 200 570 230 570 {lab=GND}
N 200 410 200 540 {lab=OUT}
N 200 380 230 380 {lab=VDD}
N -330 240 -150 240 {lab=VDD}
N -150 240 -150 280 {lab=VDD}
N -150 240 20 240 {lab=VDD}
N 20 240 20 280 {lab=VDD}
N 20 240 200 240 {lab=VDD}
N 200 240 200 350 {lab=VDD}
N 230 310 230 380 {lab=VDD}
N 200 310 230 310 {lab=VDD}
N 20 310 60 310 {lab=VDD}
N 60 240 60 310 {lab=VDD}
N -190 310 -150 310 {lab=VDD}
N -190 240 -190 310 {lab=VDD}
N -150 340 -150 450 {lab=#net1}
N -70 310 -70 380 {lab=#net1}
N -150 380 -70 380 {lab=#net1}
N 20 340 20 450 {lab=#net2}
N 20 380 160 380 {lab=#net2}
N -330 410 90 410 {lab=#net3}
N 90 410 90 480 {lab=#net3}
N 60 480 90 480 {lab=#net3}
N 200 480 330 480 {lab=OUT}
N -150 510 -150 540 {lab=#net4}
N -150 540 20 540 {lab=#net4}
N 20 510 20 540 {lab=#net4}
N -150 480 20 480 {lab=GND}
N 200 600 200 710 {lab=GND}
N 230 570 230 640 {lab=GND}
N 200 640 230 640 {lab=GND}
N -30 480 -30 710 {lab=GND}
N -220 570 160 570 {lab=Iref}
N -110 310 -20 310 {lab=#net1}
N -30 730 200 730 {lab=GND}
N -80 540 -80 600 {lab=#net4}
N -80 680 -80 730 {lab=GND}
N -80 650 -60 650 {lab=GND}
N -60 650 -60 700 {lab=GND}
N -80 700 -60 700 {lab=GND}
N -220 680 -220 730 {lab=GND}
N -80 600 -80 620 {lab=#net4}
N -30 710 -30 730 {lab=GND}
N 200 710 200 730 {lab=GND}
N -250 730 -30 730 {lab=GND}
N -250 730 -250 740 {lab=GND}
N -180 650 -120 650 {lab=Iref}
N -240 650 -220 650 {lab=GND}
N -240 650 -240 700 {lab=GND}
N -240 700 -220 700 {lab=GND}
N -220 600 -150 600 {lab=Iref}
N -150 600 -150 650 {lab=Iref}
N -220 600 -220 620 {lab=Iref}
N -350 600 -220 600 {lab=Iref}
N 330 480 510 480 {lab=OUT}
N -290 480 -190 480 {lab=#net5}
N -220 570 -220 600 {lab=Iref}
N -500 580 -500 620 {lab=GND}
N -500 470 -500 500 {lab=#net5}
N -500 410 -330 410 {lab=#net3}
N -500 410 -500 420 {lab=#net3}
N -500 500 -500 530 {lab=#net5}
N -340 480 -290 480 {lab=#net5}
N -340 480 -340 500 {lab=#net5}
N -500 500 -340 500 {lab=#net5}
C {code_shown.sym} 280 620 0 0 {name=s2 only_toplevel=false value=
"
VVDD VDD 0 dc 3.3
IIref Iref 0 dc 10u

*VVIN+ VIN+ 0 pulse(0 3.3 100n 1n 1n 200n 400n)
*VVIN+ VIN+ 0 ac 1

.include /home/raidonn/LRCircuit/spicemodel/ocs65_stl_n3_typ.para
.include /home/raidonn/LRCircuit/spicemodel/ocs65_stl_p3_typ.para

.control
save all
dc V2 -1 100m 1m
*ac dec 10 1 10meg
*plot ph(OUT)
plot V(OUT)

write "Opamp_ver2AC.raw"

.endc"
}
C {PMOS_MIN.sym} -20 310 0 0 {name=M7 model=p3.0 w=5u l=0.5u as=0 ps=0 ad=0 pd=0 m=1}
C {PMOS_MIN.sym} -110 310 2 0 {name=M8 model=p3.0 w=5u l=0.5u as=0 ps=0 ad=0 pd=0 m=1}
C {NMOS_MIN.sym} -190 480 0 0 {name=M9 model=n3.0 w=5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {NMOS_MIN.sym} 60 480 2 0 {name=M10 model=n3.0 w=5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {NMOS_MIN.sym} 160 570 0 0 {name=M11 model=n3.0 w=5u l=2.5u as=0 ps=0 ad=0 pd=0 m=1}
C {PMOS_MIN.sym} 160 380 0 0 {name=M12 model=p3.0 w=68u l=0.35u as=0 ps=0 ad=0 pd=0 m=6}
C {ipin.sym} -330 240 0 0 {name=p5 lab=VDD}
C {ipin.sym} -340 600 0 0 {name=p1 lab=Iref}
C {NMOS_MIN.sym} -120 650 0 0 {name=M1 model=n3.0 w=5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {NMOS_MIN.sym} -180 650 2 0 {name=M2 model=n3.0 w=5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {gnd.sym} -250 740 0 0 {name=l1 lab=GND}
C {opin.sym} 510 480 0 0 {name=p2 lab=OUT}
C {voltage.sym} -500 520 0 0 {name=V1 value="dc 1.65"}
C {gnd.sym} -500 620 0 0 {name=l2 lab=GND}
C {voltage.sym} -500 410 0 0 {name="V2" value="dc 0"}
