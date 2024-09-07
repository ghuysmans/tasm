	MODEL SMALL
	.CODE
disp:
PUBLIC disp
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
	END
