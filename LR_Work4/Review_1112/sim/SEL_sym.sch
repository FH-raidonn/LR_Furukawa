v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
C {/home/raidonn/LRCircuit/work4/origin/SEL.sym} -10 -100 0 0 {name=x1}
C {code_shown.sym} -50 10 0 0 {name=s2 only_toplevel=false value=
"
VVDD VDD 0 dc 3.3
VHigh High 0 dc 3.3
VLOW LOW 0 dc 0

VIN IN 0 pulse(0 3.3 100n 1n 1n 200n 400n)

.include /home/raidonn/LRCircuit/spicemodel/ocs65_stl_n3_typ.para
.include /home/raidonn/LRCircuit/spicemodel/ocs65_stl_p3_typ.para

.control
save all
tran 1n 500n 
plot V(OUT)

write "SEL.raw"

.endc"
}
