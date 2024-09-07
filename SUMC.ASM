;link with tlink /t sumc+affiche,sum
sum	SEGMENT
	ASSUME CS:sum
	EXTRN disp:PROC
	ORG 100h ;COM file
main: ;required for the entrypoint
	xor ax,ax
	mov dx,200
lp:
	add ax, dx
	dec dx
	jnz lp

	mov di,5
	call disp

	ret
sum	ENDS
	END main
