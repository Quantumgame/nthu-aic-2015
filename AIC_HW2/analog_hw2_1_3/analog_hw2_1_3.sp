**analog_hw2_1_3**
.protect
.lib 'cic018.l' tt
.global vdd gnd
.unprotect
.temp=25
.op
.option post=2

*circuit*
v0 vdd gnd 1.8

i0 vdd node1 2u
m0 node1 vin gnd gnd n_18 w=10u l=2u m=1
vin vin gnd

r0 vdd vout 20k
m1 vout vbais node1 gnd n_18 w=25u l=1u m=1
vbais vbais gnd 1.05796
i1 node1 gnd 40u

*analysis*
.dc vin 0 1.8 0.00001
.tf v(vout) vin
.print dc lx7(m1)
.print dc lx9(m1)
.print dc v(node1)
.probe dc v(node1)
.print gain=deriv("v(vout)")
.end