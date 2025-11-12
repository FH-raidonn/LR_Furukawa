v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -150 -50 -120 -50 {lab=VDD}
N -150 -30 -120 -30 {lab=PD}
N -150 -10 -120 -10 {lab=Vinp}
N -150 10 -120 10 {lab=Iref}
N -150 30 -120 30 {lab=VSS}
N 190 -50 220 -50 {lab=OUT}
C {/home/raidonn/LRCircuit/work4/origin/Opamp_sym.sym} 30 -10 0 0 {name=x1}
C {code_shown.sym} -110 110 0 0 {name=s2 only_toplevel=false value=
"
VVDD VDD 0 dc 3.3
VVSS VSS 0 dc 0
IIref 0 Iref dc 10u
VPD PD 0 dc 3.3

*VVIN+ VIN+ 0 pulse(0 3.3 100n 1n 1n 200n 400n)
VVinp Vinp 0 dc 3.3

*.probe <alli>

.include /home/raidonn/LRCircuit/spicemodel/ocs65_stl_n3_typ.para
.include /home/raidonn/LRCircuit/spicemodel/ocs65_stl_p3_typ.para

.control
save all
dc VVinp 0 3.3 0.01
*tran 1n 500n
plot V(OUT)-V(Vinp)
plot V(Vinp) V(OUT)

write "Opamp_sym_sim.raw"

.endc"
}
C {ipin.sym} -150 -50 0 0 {name=p1 lab=VDD}
C {ipin.sym} -150 -30 0 0 {name=p2 lab=PD}
C {ipin.sym} -150 -10 0 0 {name=p3 lab=Vinp}
C {ipin.sym} -150 10 0 0 {name=p4 lab=Iref}
C {ipin.sym} -150 30 0 0 {name=p5 lab=VSS}
C {iopin.sym} 220 -50 0 0 {name=p6 lab=OUT}
