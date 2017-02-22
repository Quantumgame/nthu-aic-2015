**analog_hw3_2_b**
.protect
.lib 'cic018.l' ff
.global vdd gnd
.unprotect
.temp=25
.op
.option post
.param width=35u length=10u

*circuit*
vdd 8 0 1.8
m1 2 1 0 0 n_18 w='width' l='length' m=16
m2 4 3 2 0 n_18 w='width' l='length' m=16
m3 5 1 0 0 n_18 w='width' l='length' m=2
m4 1 3 5 0 n_18 w='width' l='length' m=2
m5 7 3 0 0 n_18 w='width' l='length' m=1
m6 3 3 7 0 n_18 w='width' l='length' m=1
iin1 8 3 10u
iin2 8 1 10u
vout 4 0

*analysis*
.dc vout 0 1.8 0.001
.print dc i(vout)
.tf v(4) vout
.end