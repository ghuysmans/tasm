	MODEL TPASCAL
	.CODE
	EXTRN puthexb:NEAR
	EXTRN puthexw:NEAR

PUBLIC writeb
PROC writeb NEAR, b:BYTE ;NEAR inside an implementation (unit or program)
	mov bl,b
	call puthexb
	ret ;tail-call opt impossible: implicit ret2 here, ret in puthexb
writeb	ENDP


PUBLIC writew
PROC writew NEAR, w
	mov bx,w
	call puthexw
	ret
writew	ENDP

	END
