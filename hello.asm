; Hello World for ZX Spectrum

org	32768

line:	defb	'Hello world',13,'$'

start:
	ld	a,2		; load screen channel
	call	$1601		; select screen channel
	ld	hl,line		; load data
	call	println		; print data
	ret

println:
	ld	a,(hl)		; fetch character
	cp	'$'		; check EOL
	jp	z,printend	; if EOL, end
	rst	16		; print current character
	inc	hl		; fetch next character
	jp	println		; loop

printend:
	ret
