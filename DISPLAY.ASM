CODE	SEGMENT BYTE PUBLIC ;name compatible with Turbo Pascal, no alignment
	ASSUME CS:CODE
PUBLIC disp
PROC disp NEAR
	mov dx,0b800h
	mov ds,dx
	shl di,1 ;ds:di -> screen memory
	mov bx,10
lp:
	xor dx,dx ;avoid #DE (overflow)
	idiv bx ;ax=quotient, dx=remainder
	add dl,48 ;zero digit
	mov byte ptr [di],dl
	dec di
	dec di
	test ax,ax
	jnz lp
	ret
disp	ENDP
CODE	ENDS
	END
