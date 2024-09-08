	MODEL TPASCAL
	.CODE
	EXTRN disp:NEAR
PUBLIC stub
PROC stub NEAR USES bx dx di ds, n ;NEAR inside a program
	mov di,5
	mov ax,n
	call disp
	ret
stub	ENDP
	END
