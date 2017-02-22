**analog_hw2_3_1**
.protect
.lib 'cic018.l' tt
.global vdd gnd
.unprotect
.temp=25
.op
.option post=2

*circuit*
v0 vdd gnd 1.8
m1 vdd vin vout gnd n_18 w=10u l=0.97u m=1
m2 vout vb gnd gnd n_18 w=10u l=1u m=1
vin vin gnd
vb vb gnd 0.38

*analysis*
.dc vin 0 1.8 0.0001
.tf v(vout) vin
.print gain=deriv("v(vout)")
.end