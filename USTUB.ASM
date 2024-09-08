	MODEL TPASCAL
	.CODE
	EXTRN disp:NEAR
PUBLIC stub
PROC stub USES bx dx di ds, n ;FAR inside a unit
	mov di,5
	mov ax,n
	call disp
	ret
stub	ENDP
	END
