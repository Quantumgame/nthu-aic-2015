**analog_hw1_3 Hu Dongyao T16342620**
.protect
.lib 'cic018.l' tt
.unprotect
.temp = 25
.op
.option post=2 DCCAP=1 acout=0 ACCT

*circuit*
v0 vdd gnd
v1 vg gnd
mm0 vdd vg gnd gnd n_18 w=3u l=0.3u
mm1 vdd vg gnd gnd n_18 w=3u l=3u

*analysis*
.dc v0 0 1.8 0.01 sweep v1 0 1.8 0.3
.probe i(mm0)
.probe i(mm1)
.end