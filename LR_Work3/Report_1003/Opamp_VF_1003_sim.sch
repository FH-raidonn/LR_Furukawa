v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 270 250 300 250 {lab=VDD}
N -300 70 -120 70 {lab=VDD}
N -120 70 -120 110 {lab=VDD}
N -120 70 50 70 {lab=VDD}
N 50 70 50 110 {lab=VDD}
N 50 70 230 70 {lab=VDD}
N 270 70 270 180 {lab=VDD}
N 300 180 300 250 {lab=VDD}
N 270 180 300 180 {lab=VDD}
N 50 140 90 140 {lab=VDD}
N 90 70 90 140 {lab=VDD}
N -160 140 -120 140 {lab=VDD}
N -160 70 -160 140 {lab=VDD}
N -40 140 -40 190 {lab=#net1}
N -120 210 -40 210 {lab=#net1}
N -300 300 120 300 {lab=Vinp}
N 120 300 120 370 {lab=Vinp}
N 90 370 120 370 {lab=Vinp}
N -120 400 -120 430 {lab=#net2}
N -120 430 50 430 {lab=#net2}
N 50 400 50 430 {lab=#net2}
N -120 370 50 370 {lab=VSS}
N -190 580 80 580 {lab=Iref}
N -80 140 10 140 {lab=#net1}
N 0 740 230 740 {lab=VSS}
N -240 370 -160 370 {lab=OUT}
N -260 370 -240 370 {lab=OUT}
N -50 690 -50 740 {lab=VSS}
N -50 660 -30 660 {lab=VSS}
N -30 660 -30 710 {lab=VSS}
N -50 710 -30 710 {lab=VSS}
N -220 740 0 740 {lab=VSS}
N -120 660 -90 660 {lab=Iref}
N -150 660 -120 660 {lab=Iref}
N -190 690 -190 740 {lab=VSS}
N -210 660 -190 660 {lab=VSS}
N -210 660 -210 710 {lab=VSS}
N -210 710 -190 710 {lab=VSS}
N 50 250 110 250 {lab=#net3}
N -120 610 -120 660 {lab=Iref}
N -190 610 -120 610 {lab=Iref}
N -320 610 -190 610 {lab=Iref}
N -190 610 -190 630 {lab=Iref}
N -190 580 -190 610 {lab=Iref}
N 270 280 270 310 {lab=OUT}
N 230 70 270 70 {lab=VDD}
N 190 250 230 250 {lab=#net3}
N 190 250 190 320 {lab=#net3}
N 140 580 230 580 {lab=#net4}
N 270 490 270 550 {lab=OUT}
N 270 610 270 740 {lab=VSS}
N 230 740 270 740 {lab=VSS}
N 270 580 290 580 {lab=VSS}
N 290 580 290 640 {lab=VSS}
N 270 640 290 640 {lab=VSS}
N -420 800 340 800 {lab=OUT}
N -420 370 -420 800 {lab=OUT}
N -420 370 -260 370 {lab=OUT}
N -50 540 -50 630 {lab=#net5}
N -170 500 -90 500 {lab=PD}
N -50 500 -20 500 {lab=VSS}
N 110 580 110 610 {lab=VSS}
N 110 510 110 540 {lab=PD}
N 360 470 360 800 {lab=OUT}
N 270 470 270 490 {lab=OUT}
N 270 430 270 470 {lab=OUT}
N 250 320 270 320 {lab=OUT}
N 190 320 210 320 {lab=#net3}
N 270 470 330 470 {lab=OUT}
N 330 470 360 470 {lab=OUT}
N 360 470 390 470 {lab=OUT}
N 340 800 360 800 {lab=OUT}
N -50 430 -50 450 {lab=#net2}
N 270 310 270 410 {lab=OUT}
N 110 250 140 250 {lab=#net3}
N 270 410 270 430 {lab=OUT}
N 140 250 190 250 {lab=#net3}
N -120 170 -120 340 {lab=#net1}
N -40 190 -40 210 {lab=#net1}
N 50 170 50 340 {lab=#net3}
N 270 180 270 210 {lab=VDD}
N 270 210 270 220 {lab=VDD}
N -50 450 -50 470 {lab=#net2}
N -50 530 -50 540 {lab=#net5}
N 480 470 480 520 {lab=OUT}
N 480 630 480 660 {lab=VSS}
N 420 660 480 660 {lab=VSS}
N -600 400 -600 430 {lab=GND}
N -500 400 -500 430 {lab=GND}
N -600 300 -600 350 {lab=Vinp}
N -700 400 -700 430 {lab=GND}
N 420 660 420 680 {lab=VSS}
N -600 300 -500 300 {lab=Vinp}
N 530 470 580 470 {lab=OUT}
N 670 850 670 880 {lab=VSS}
N -370 300 -300 300 {lab=Vinp}
N 480 550 480 590 {lab=OUT}
N 390 470 410 470 {lab=OUT}
N 460 470 530 470 {lab=OUT}
N 480 520 480 550 {lab=OUT}
N -500 300 -370 300 {lab=Vinp}
N 480 530 520 530 {lab=OUT}
N 520 530 520 590 {lab=OUT}
N 520 640 520 660 {lab=VSS}
N 480 660 520 660 {lab=VSS}
N 410 470 460 470 {lab=OUT}
C {code_shown.sym} 730 370 0 0 {name=s2 only_toplevel=false value=
"
VVDD VDD 0 dc 3.3
VVSS VSS 0 dc 0
VPD PD 0 dc 3.3
IIref 0 Iref dc 10u

*VVIN+ VIN+ 0 pulse(0 3.3 100n 1n 1n 200n 400n)
*VVIN+ VIN+ 0 dc 0

.probe <alli>
.meas DC IOUT MAX I(V5)

.include /home/raidonn/LRCircuit/spicemodel/ocs65_stl_n3_typ.para
.include /home/raidonn/LRCircuit/spicemodel/ocs65_stl_p3_typ.para

.control
save all
*dc V3 0 3.3 0.01
dc V4 0 3.3 0.01
*ac dec 10 1k 1g
*tran 1n 6u
*plot V(Vinp) V(OUT) V(net2)
plot I(V5)
*plot db(OUT/(OUT-Vinp)) ph(OUT/(OUT-Vinp))*180/3.14

write "Opamp_before_sim.raw"

.endc"
}
C {PMOS_MIN.sym} 10 140 2 1 {name=M3 model=p3.0 w=5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {PMOS_MIN.sym} -80 140 2 0 {name=M4 model=p3.0 w=5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {NMOS_MIN.sym} -160 370 0 0 {name=M5 model=n3.0 w=5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {NMOS_MIN.sym} 90 370 0 1 {name=M6 model=n3.0 w=5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {NMOS_MIN.sym} 230 580 0 0 {name=M13 model=n3.0 w=3.5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {PMOS_MIN.sym} 230 250 0 0 {name=M14 model=p3.0 w=3.5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {ipin.sym} -300 70 0 0 {name=p2 lab=VDD}
C {iopin.sym} 580 470 0 0 {name=p3 lab=OUT}
C {ipin.sym} -310 610 0 0 {name=p4 lab=Iref}
C {NMOS_MIN.sym} -90 660 0 0 {name=M15 model=n3.0 w=3.5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {NMOS_MIN.sym} -150 660 0 1 {name=M16 model=n3.0 w=3.5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {lab_pin.sym} -310 300 1 0 {name=l7 sig_type=std_logic lab=Vinp}
C {res.sym} 510 580 0 0 {name=R2
value=1meg
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} -40 370 1 0 {name=l8 sig_type=std_logic lab=VSS}
C {ipin.sym} -220 740 0 0 {name=p6 lab=VSS}
C {cap.sym} 250 310 1 0 {name=C3
m=1
value=5p
footprint=1206
device=ceramic}
C {lab_pin.sym} -310 370 3 0 {name=l9 sig_type=std_logic lab=Vinm}
C {NMOS_MIN.sym} -90 500 0 0 {name=M17 model=n3.0 w=3.5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {lab_pin.sym} -20 500 2 0 {name=l10 sig_type=std_logic lab=VSS}
C {NMOS_MIN.sym} 110 540 1 0 {name=M18 model=n3.0 w=3.5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {lab_pin.sym} 110 610 3 0 {name=l11 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 110 510 1 0 {name=l12 sig_type=std_logic lab=PD}
C {lab_pin.sym} -170 500 0 0 {name=l13 sig_type=std_logic lab=PD}
C {lab_pin.sym} 420 680 3 0 {name=l14 sig_type=std_logic lab=VSS}
C {cap.sym} 470 590 0 0 {name=C4
m=1
value=1p
footprint=1206
device=ceramic}
C {gnd.sym} -600 430 0 0 {name=l15 lab=GND}
C {vac.sym} -600 340 0 0 {name=V2 value="1.65 ac 1"}
C {vpulse.sym} -500 340 0 0 {name=V1 value="pulse(0 3.3 500n 500n 500n 3u 6u)"}
C {gnd.sym} -500 430 0 0 {name=l1 lab=GND}
C {voltage.sym} -700 340 0 0 {name=V3 value=0}
C {gnd.sym} -700 430 0 0 {name=l2 lab=GND}
C {voltage.sym} 670 790 0 0 {name=V4 value=3.3}
C {lab_pin.sym} 670 880 3 0 {name=l3 sig_type=std_logic lab=VSS}
C {voltage.sym} 410 440 3 0 {name=V5 value=0}
