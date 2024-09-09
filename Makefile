all: sum1.com sum.com sum.exe pinterop.exe uinterop.exe hex.com
clean:
	del *.obj
	del *.map

!if !$d(M_186) #ifndef
M_186=0 #assume 8086
!endif
.asm.obj:
	tasm /DM_186=$(M_186) $*
sum1.com: sum.obj
	tlink /t sum,sum1
sum.com: sumc.obj display.obj
	tlink /t sumc display,sum
sum.exe: sume.obj display.obj
	tlink sume display,sum
hex.com: puthex.obj hex.obj
	tlink /t hex puthex

.pas.exe:
	tpc $*
pinterop.exe: pstub.obj display.obj pinterop.pas

.pas.tpu:
	tpc $*
uinterop.exe: ustub.obj display.obj ustub.tpu uinterop.pas