;single-segment version
	MODEL SMALL
	.CODE
	ORG 100h
main:
	xor ax,ax
	mov dx,200
sump:
	add ax, dx
	dec dx
	jnz sump

	mov dx,0b800h
	mov ds,dx
	mov di,10 ;ds:di -> screen memory
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
	END main ;entrypoint
