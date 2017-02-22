**analog_hw3_2_a**
.protect
.lib 'cic018.l' tt
.global vdd gnd
.unprotect
.temp=25
.op
.option post

*circuit*
vdd vdd gnd 1.8
iref vdd x 10u
vb vb gnd 0.6
m1 a x gnd gnd n_18 w=30u l=5u m=1
m2 x vb a gnd n_18 w=30u l=5u m=1
m3 b x gnd gnd n_18 w=30u l=5u m=8
m4 vout vb b gnd n_18 w=30u l=5u m=8
vout vout gnd

*analysis*
.dc vout 0 1.8 0.001
.print dc i(vout)
.tf v(vout) vout
.end
