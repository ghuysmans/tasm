all: sum1.com sum.com sum.exe pinterop.exe uinterop.exe
clean:
	del *.obj
	del *.map

.asm.obj:
	tasm $*
sum1.com: sum.obj
	tlink /t sum,sum1
sum.com: sumc.obj display.obj
	tlink /t sumc display,sum
sum.exe: sume.obj display.obj
	tlink sume display,sum

.pas.exe:
	tpc $*
pinterop.exe: pstub.obj display.obj pinterop.pas

.pas.tpu:
	tpc $*
uinterop.exe: ustub.obj display.obj ustub.tpu uinterop.pas