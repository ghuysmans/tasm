;link with tlink sume+affiche,sum
sum	SEGMENT
	ASSUME CS:sum
	EXTRN disp:PROC
main: ;required for the entrypoint
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

sum	ENDS
	END main
