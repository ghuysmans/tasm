	MODEL TPASCAL
	.CODE
	EXTRN disp:NEAR
PUBLIC stub
PROC stub NEAR USES ds, n ;NEAR inside an implementation (unit or program)
	mov di,5
	mov ax,n
	call disp
	ret
stub	ENDP
	END
