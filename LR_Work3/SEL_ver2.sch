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
N 100 -0 180 -0 {lab=OUT}
N 60 100 100 100 {lab=OUT}
N 100 0 100 100 {lab=OUT}
N 30 -90 30 -50 {lab=VDD}
N -130 -90 -0 -90 {lab=High}
N -130 100 -0 100 {lab=LOW}
N -80 -200 -80 -180 {lab=GND}
N -80 -420 -80 -390 {lab=VDD}
N -80 -260 -40 -260 {lab=GND}
N -40 -260 -40 -200 {lab=GND}
N -80 -200 -40 -200 {lab=GND}
N -80 -360 -50 -360 {lab=VDD}
N -50 -420 -50 -360 {lab=VDD}
N -80 -420 -50 -420 {lab=VDD}
N -160 -360 -120 -360 {lab=IN}
N -160 -310 -160 -260 {lab=IN}
N -160 -260 -120 -260 {lab=IN}
N -210 -310 -160 -310 {lab=IN}
N -80 -310 -80 -290 {lab=#net1}
N -10 -310 30 -310 {lab=#net1}
N 30 -310 30 -130 {lab=#net1}
N -10 -310 -10 20 {lab=#net1}
N -10 20 30 20 {lab=#net1}
N 30 20 30 60 {lab=#net1}
N -80 -230 -80 -200 {lab=GND}
N -80 -430 -80 -420 {lab=VDD}
N -160 -360 -160 -310 {lab=IN}
N -80 -330 -80 -310 {lab=#net1}
N -80 -310 -10 -310 {lab=#net1}
C {gnd.sym} 30 140 0 0 {name=l2 lab=GND}
C {ipin.sym} -130 -90 0 0 {name=p3 lab=High}
C {ipin.sym} -130 100 0 0 {name=p2 lab=LOW}
C {gnd.sym} -80 -180 0 0 {name=l4 lab=GND}
C {ipin.sym} -210 -310 0 0 {name=p4 lab=IN}
C {PMOS_MIN.sym} -120 -360 0 0 {name=M4 model=p3.0 w=5u l=0.18u as=0 ps=0 ad=0 pd=0 m=1}
C {NMOS_MIN.sym} -120 -260 0 0 {name=M1 model=n3.0 w=5u l=0.18u as=0 ps=0 ad=0 pd=0 m=1}
C {NMOS_MIN.sym} 30 60 1 0 {name=M2 model=n3.0 w=5u l=0.18u as=0 ps=0 ad=0 pd=0 m=1}
C {PMOS_MIN.sym} 30 -130 1 0 {name=M3 model=p3.0 w=5u l=0.18u as=0 ps=0 ad=0 pd=0 m=1}
C {ipin.sym} -80 -430 1 0 {name=p5 lab=VDD}
C {code_shown.sym} 140 70 0 0 {name=s2 only_toplevel=false value=
"
VVDD VDD 0 dc 3.3
VHigh High 0 dc 3.3
VLOW LOW 0 dc 0

VIN IN 0 pulse(0 3.3 100n 1n 1n 200n 400n)
*VDIN1 DIN1 0 pulse(0 3.3 100n 1n 1n 100n 400n)
*VDIN2 DIN2 0 pulse(0 3.3 100n 1n 1n 200n 300n)
*VDIN3 DIN3 0 pulse(0 3.3 100n 1n 1n 300n 500n)
*VDIN4 DIN4 0 pulse(0 3.3 100n 1n 1n 300n 500n)
*VDIN5 DIN5 0 pulse(0 3.3 100n 1n 1n 300n 500n)
*VDIN6 DIN6 0 pulse(0 3.3 100n 1n 1n 400n 500n)
*VDIN7 DIN7 0 pulse(0 3.3 100n 1n 1n 300n 500n)
*VDIN8 DIN8 0 pulse(0 3.3 100n 1n 1n 300n 500n)
*VDIN9 DIN9 0 pulse(0 3.3 100n 1n 1n 300n 500n)
*VDIN10 DIN10 0 pulse(0 3.3 100n 1n 1n 400n 500n)
*VDIN11 DIN11 0 pulse(0 3.3 100n 1n 1n 300n 500n)
*VDIN12 DIN12 0 pulse(0 3.3 100n 1n 1n 300n 500n)
*VDIN13 DIN13 0 pulse(0 3.3 100n 1n 1n 300n 500n)
*VDIN14 DIN14 0 pulse(0 3.3 100n 1n 1n 400n 500n)

.include /home/raidonn/LRCircuit/spicemodel/ocs65_stl_n3_typ.para
.include /home/raidonn/LRCircuit/spicemodel/ocs65_stl_p3_typ.para

.control
save all
tran 1n 500n 
plot V(OUT)

write "SEL_ver2.raw"

.endc"
}
C {iopin.sym} 180 0 0 0 {name=p1 lab=OUT}
C {lab_pin.sym} 30 -50 3 0 {name=l1 sig_type=std_logic lab=VDD}
