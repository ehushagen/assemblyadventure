; ------------------------------------------------------------------------------
;	Lesson 2 - Opcodes
;		example showing CMP opcode with different addressing modes
; ------------------------------------------------------------------------------

	lda #$80		; load the value $80 into A
	cmp #$a0		; compare A to $a0
	lda #$44		; load the value $44 into A
	cmp $affe	; compare A to the value stored in memory location $affe
	