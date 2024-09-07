;link with tlink /t sumc+affiche,sum
	MODEL SMALL
	.CODE
	EXTRN disp:PROC
	ORG 100h ;COM file
main:
	xor ax,ax
	mov dx,200
lp:
	add ax, dx
	dec dx
	jnz lp

	mov di,5
	call disp

	ret
	END main ;entrypoint
