v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -50 10 10 10 {lab=#net1}
N -50 100 50 100 {lab=GND}
N -0 100 -0 130 {lab=GND}
N -50 10 -50 30 {lab=#net1}
N -50 80 -50 100 {lab=GND}
N 50 -60 50 -20 {lab=VD}
N 50 -60 110 -60 {lab=VD}
N 200 -60 230 -60 {lab=#net2}
N 230 -60 230 0 {lab=#net2}
N 110 -60 150 -60 {lab=VD}
N 50 100 110 100 {lab=GND}
N 110 100 230 100 {lab=GND}
N 230 60 230 100 {lab=GND}
N 350 -30 370 -30 {lab=VDD}
N 50 10 70 10 {lab=GND}
N 70 10 70 70 {lab=GND}
N 50 70 70 70 {lab=GND}
N 50 -60 50 -20 {lab=VD}
N 50 40 50 100 {lab=GND}
C {gnd.sym} 0 130 0 0 {name=l1 lab=GND}
C {voltage.sym} -50 20 0 0 {name=V1 value=0.7}
C {voltage.sym} 140 -60 3 0 {name=V2 value=0}
C {/home/raidonn/xschem-src/xschem_library/devices/isource.sym} 230 30 0 0 {name=I0 value=1m}
C {code_shown.sym} -650 -90 0 0 {name=s2 only_toplevel=false value=
"
VVDD VDD 0 dc 3.3

.include /home/raidonn/LRCircuit/spicemodel/ocs65_stl_n3_typ.para
.include /home/raidonn/LRCircuit/spicemodel/ocs65_stl_p3_typ.para

.control
save all
set filetype=ascii
set wr_singlescale
set wr_vecnames
option numdgt=5
*dc V1 0 3.3 0.1
tran 1n 30n
plot V(VD)
print V(VD)
*plot I(V1)
*plot I(V2)

write "ONressim.raw"
wrdata "ONressim.txt" V(VD)

.endc"
}
C {lab_pin.sym} 110 -60 3 0 {name=l2 sig_type=std_logic lab=VD}
C {PMOS_MIN.sym} 310 -30 0 0 {name=M3 model=p3.0 w=3.5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {ipin.sym} 370 -30 2 0 {name=p1 lab=VDD}
C {NMOS_MIN.sym} 10 10 0 0 {name=M2 model=n3.0 w=3.5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
