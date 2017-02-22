**analog_hw1_2 Hu Dongyao T16342620**
.protect
.lib 'cic018.l' tt
.unprotect
.temp = 25
.op
.option post=2 DCCAP=1

*circuit*
v0 vdd gnd 1.8V
v1 vin gnd dc=0 ac=1
mm0 vout vin gnd gnd n_18 w=5u l=0.5u m=1
rd vdd vout 10k

*analysis*
.dc v1 0 1.8 0.01
.tf v(vout) v1
.print ac v(vout)
.print gain=deriv("v(vout)")
.end