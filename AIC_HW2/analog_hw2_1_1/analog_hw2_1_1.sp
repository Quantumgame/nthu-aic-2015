**analog_hw2_1_1**
.protect
.lib 'cic018.l' tt
.global vdd gnd
.unprotect
.temp=25
.op
.option post=2

*circuit*
v0 vdd gnd 1.8
i0 vdd vout 2u
m0 vout vin gnd gnd n_18 w=10u l=2u m=1
vi vin gnd

*analysis*
.dc vi 0.36 0.37 0.00001
.tf v(vout) vi
.print dc lx7(m0)
.print dc v(vout)
.print gain=deriv("v(vout)")
.end