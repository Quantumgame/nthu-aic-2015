**analog_hw4_1_b**
.protect
.lib 'cic018.l' tt
.global vdd gnd
.unprotect
.temp=25
.op
.option post dccap=1 acout=0 acct

*circuit*
vdd vdd gnd 1.8
m1 vdd vin vout gnd n_18 w=5u l=1u
m0 vout vb gnd gnd n_18 w=1.38u l=1u
vb vb gnd 0.51
vin vin gnd dc=1 ac=1

*analysis*
.dc vin 0 1.8 0.001
.print gain=deriv("v(vout)")
.ac dec 10 1 1t
.noise v(vout) vin 10
.measure ac thermal_noise_0 find onoise at=1x
.measure ac corner_freqency when onoise='thermal_noise_0/0.707'
.measure ac pole_frequency when onoise='thermal_noise_0*0.707'
.pz v(vout) vin
.end