**analog_hw2_2**
.protect
.lib 'cic018.l' tt
.global vdd gnd
.unprotect
.temp=25
.op
.option post=2

*circuit*
v0 vdd gnd 1.8
m4 node2 vb3 vdd vdd p_18 w=26u l=1u m=2
m3 vout vb2 node2 node2 p_18 w=26u l=1u m=2
m2 vout vb1 node1 gnd n_18 w=10u l=1u m=2
m1 node1 vin node0 gnd n_18 w=10u l=1u m=2
r0 node0 gnd 0
vb3 vb3 gnd 1.19
vb2 vb2 gnd 0.79
vb1 vb1 gnd 0.61
vin vin gnd

*analysis*
.dc vin 0.47 0.48 0.00001
.tf v(vout) vin
*.print dc lx7(m0)
.print dc v(vout)
.print dc i(r0)
.print gain=deriv("v(vout)")
.end