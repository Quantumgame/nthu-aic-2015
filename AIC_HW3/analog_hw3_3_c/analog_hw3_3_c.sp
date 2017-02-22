**analog_hw3_3_c**
.protect
.lib 'cic018.l' fs
.global vdd gnd
.unprotect
.temp=25
.op
.option post dccap=1 acout=0 acct

*circuit*
vdd vdd gnd 1.8
m2 vout vb vdd vdd p_18 w=20u l=4u
m1 vout vinp gnd gnd n_18 w=20u l=4u
m4 vb vb vdd vdd p_18 w=20u l=4u
m3 vb vinn gnd gnd n_18 w=20u l=4u
m5 vinn vinn gnd gnd n_18 w=20u l=4u
iref vdd vinn 10u
vin vinp vinn 0

*analysis*
.dc vin -0.5 0.5 0.001
.tf v(vout) vin
.print gain=deriv("v(vout)")
.end