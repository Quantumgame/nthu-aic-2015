**analog_hw4_1_a**
.protect
.lib 'cic018.l' tt
.global vdd gnd
.unprotect
.temp=25
.op
.option post dccap=1 acout=0 acct

*circuit*
vdd vdd gnd 1.8
m1 vout vb vdd vdd p_18 w=1u l=5u
m0 vout vin gnd gnd n_18 w=0.5u l=15u
vb vb gnd 1.208
vin vin gnd dc=0.5 ac=1

*analysis*
.dc vin 0.4 0.6 0.001
.print gain=deriv("v(vout)")
.ac dec 10 1 10g
.noise v(vout) vin 10
.measure ac thermal_noise_0 find onoise at=10k
.measure ac corner_freqency when onoise='thermal_noise_0/0.707'
.measure ac pole_frequency when onoise='thermal_noise_0*0.707'
.pz v(vout) vin

.end