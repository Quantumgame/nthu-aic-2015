**analog_hw2_1_2**
.protect
.lib 'cic018.l' tt
.global vdd gnd
.unprotect
.temp=25
.op
.option post=2

*circuit*
v0 vdd gnd 1.8
r0 vdd vout 20k
m1 vout vbais vin gnd n_18 w=25u l=1u m=1
vbais vbais gnd 1.05796
vin vin gnd 0.5

*analysis*
*.dc vbais 0.8 1.2 0.00001
.dc vin 0.45 0.55 0.00001
.tf v(vout) vin
.print dc lx7(m1)
.print dc lx9(m1)
.print dc i(r0)
.print gain=deriv("v(vout)")
.end
