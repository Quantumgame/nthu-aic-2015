**analog_hw4_2_a**
.protect
.lib 'cic018.l' tt
.global vdd gnd
.unprotect
.temp=25
.op
.option post dccap=1 acout=0 acct

*circuit*
vdd vdd gnd 1.8
m0 m vin gnd gnd n_18 w=0.5u l=15u
m1 m vb1 vdd vdd p_18 w=1u l=5u
m2 vout vb2 gnd gnd n_18 w=1.38u l=1u
m3 vdd m vout gnd n_18 w=5u l=1u
vb1 vb1 gnd 1.208
vb2 vb2 gnd 0.51
vin vin gnd dc=0.5 ac=1

*analysis*
.dc vin 0.4 0.6 0.001
.print gain=deriv("v(vout)")
.ac dec 10 1 1g
.noise v(vout) vin 10

.end