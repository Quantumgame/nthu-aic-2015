**analog_hw1_1 Hu Dongyao T16342620**
.protect
.lib 'cic018.l' tt
.unprotect
.temp = 25
.op
.option post=2 DCCAP=1 acout=0 ACCT

*Cirtuit*
v0 vdd gnd 1.8V
v1 in gnd
mm0 vdd in vdd vdd p_18 w=10u l=0.5u m=5
mm1 vdd in vdd vdd p_18 w=50u l=0.5u m=1
mm2 vdd in vdd vdd p_18 w=5u l=5u m=1

*analysis*
.dc v1 0 3.6 0.01
.probe DC ctot0=par("lx18(mm0)")
+         ctot1=par("lx18(mm1)")
+         ctot2=par("lx18(mm2)")
.end
