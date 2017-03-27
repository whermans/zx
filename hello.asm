; Hello World

org 32768

start:
	ld	a,2
	call	$1601

	ld	hl,line
	call	printline
	ret

printline:
	ld	a,(hl)
	cp	'$'
	jp	z,printend
	rst	16
	inc	hl
	jp	printline

printend:
	ret

line:
	defb	'Hello world',13,'$'
