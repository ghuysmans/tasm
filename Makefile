all: sum1.com sum.com sum.exe
.asm.obj:
	tasm $*

sum1.com: sum.obj
	tlink /t sum,sum1
sum.com: sumc.obj display.obj
	tlink /t sumc display,sum
sum.exe: sume.obj display.obj
	tlink sume display,sum
