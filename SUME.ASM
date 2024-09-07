	MODEL SMALL
	.CODE
	EXTRN disp:PROC
main:
	xor ax,ax
	mov dx,200
lp:
	add ax, dx
	dec dx
	jnz lp

	mov di,5
	call disp

	xor al,al
	mov ah,4Ch ;exit
	int 21h
	END main ;entrypoint
