**analog_hw3_3_a**
.protect
.lib 'cic018.l' tt
.global vdd gnd
.unprotect
.temp=25
.op
.option post dccap=1 acout=0 acct

*circuit*
vdd vdd gnd 1.8
m2 vout vb vdd vdd p_18 w=50u l=20u
m1 vout vin gnd gnd n_18 w=50u l=5u
vb vb gnd 0.8
vin vin gnd 0.42

*analysis*
.dc vin 0 1.8 0.001
.tf v(vout) vin
.print gain=deriv("v(vout)")
.end