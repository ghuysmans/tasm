all: sum1.com sum.com sum.exe pinterop.exe uinterop.exe hex.com hex.exe
clean:
	del *.obj
	del *.map

!if !$d(M_186) #ifndef
M_186=0 #assume 8086
!endif
!if $d(DEBUG) #ifdef
DA=/zi #TASM flag
DL=/v #TLINK flag
DT=/$T+ #TPC flag
!endif
.asm.obj:
	tasm $(DA) /DM_186=$(M_186) $*
sum1.com: sum.obj
	tlink $(DL) /t sum,sum1
sum.com: sumc.obj display.obj
	tlink $(DL) /t sumc display,sum
sum.exe: sume.obj display.obj
	tlink $(DL) sume display,sum
hex.com: puthex.obj hex.obj
	tlink $(DL) /t hex puthex

.pas.exe:
	tpc $(DT) $*
pinterop.exe: pstub.obj display.obj pinterop.pas
hex.exe: puthex.obj puthexs.obj hex.pas

.pas.tpu:
	tpc $(DT) $*
uinterop.exe: ustub.obj display.obj ustub.tpu uinterop.pas