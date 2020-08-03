; ------------------------------------------------------------------------------
;	Lesson 2 - Immediate Addressing
;		-examples of immediate addressing
;		-the value loaded into a register is not from memory, but from constant
;		-prefix the loaded value with a hash symbol (#)
; ------------------------------------------------------------------------------
	lda #100		; load the value 100 into A
	lda #$ff		; load the hex value $ff into A, which is equal to 255 decimal
	