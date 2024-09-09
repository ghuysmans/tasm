CODE	SEGMENT BYTE PUBLIC ;name compatible with Turbo Pascal, no alignment
	ASSUME CS:CODE

PUBLIC puthexb
PROC puthexb NEAR ;bl=byte, destroys ax/dx
	mov al,bl
	;keep high nibble
IF M_186
	.186
	shr al,4
ELSE
	shr al,1
	shr al,1
	shr al,1
	shr al,1
ENDIF
	;conversion taken from Turbo Assembler 2.0 User's Guide, p. 335
	add al,90h
	daa
	adc al,40h
	daa
	mov dl,al
	mov ah,2 ;output char in DL
	int 21h
	mov al,bl
	and al,0Fh ;keep low nibble
	add al,90h
	daa
	adc al,40h
	daa
	mov dl,al
	mov ah,2
	int 21h
	ret
puthexb	ENDP

PUBLIC puthexw
PROC puthexw NEAR ;bx=word, destroys ax/dx
	xchg bh,bl ;display high nibble first
	call puthexb
	xchg bh,bl
	call puthexb
	ret
puthexw	ENDP

CODE	ENDS
	END
