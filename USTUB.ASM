	MODEL TPASCAL
	.CODE
	EXTRN disp:NEAR
PUBLIC stub
PROC stub USES ds, n ;FAR inside a unit interface
	mov di,5
	mov ax,n
	call disp
	ret
stub	ENDP
	END
