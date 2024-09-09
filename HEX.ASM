	MODEL SMALL
	.CODE
	ORG 100h
	EXTRN puthexw:NEAR
main:
	mov bx,0DEADh
	call puthexw
	ret
	END main ;entrypoint
