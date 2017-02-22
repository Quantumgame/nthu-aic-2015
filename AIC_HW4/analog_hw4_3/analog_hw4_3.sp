**analog_hw4_3**
.protect
.lib 'cic018.l' tt
.global vdd gnd
.unprotect
.temp=25
.op
.option post=2 dccap=1 acout=0 acct
.param width=2u length=0.5u
.param vdif=0

*circuit*
vdd vdd gnd 1.8
m1 m vinp p gnd n_18 w=width l=length
m2 vout vinn p gnd n_18 w=width l=length
m3 m m vdd vdd p_18 w=width l=length
m4 vout m vdd vdd p_18 w=width l=length
iss p gnd 5u
vcm cm gnd 0.5
vdm1 vinp cm dc='vdif/2' ac=0.5
vdm2 cm vinn dc='vdif/2' ac=0.5

*analysis*
.dc vdif -0.3 0.3 0.0001
.print gain=deriv("v(vout)")
.ac dec 10 1 1t
.pz v(m) vdm1

.end