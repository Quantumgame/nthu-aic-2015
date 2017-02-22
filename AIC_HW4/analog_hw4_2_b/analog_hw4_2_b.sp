**analog_hw4_2_b**
.protect
.lib 'cic018.l' tt
.global vdd gnd
.unprotect
.temp=25
.op
.option post dccap=1 acout=0 acct

*circuit*
vdd vdd gnd 1.8
m0 m vb1 gnd gnd n_18 w=1.38u l=1u
m1 vdd vin m gnd n_18 w=5u l=1u
m2 vout m gnd gnd n_18 w=0.5u l=15u
m3 vout vb2 vdd vdd p_18 w=1u l=5u
vb1 vb1 gnd 0.51
vb2 vb2 gnd 1.208
vin vin gnd dc=1 ac=1

*analysis*
.dc vin 0.9 1.1 0.001
.print gain=deriv("v(vout)")
.ac dec 10 1 1t
.noise v(vout) vin 10

.end