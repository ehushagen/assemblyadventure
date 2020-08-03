; ------------------------------------------------------------------------------
;	Lesson 2 - Absolute Addressing
;		-examples of absolute addressing
;		-telling opcode where to load from or store to the data in the register
;		-in this case, the register is the Accumulator
; ------------------------------------------------------------------------------

	lda #100		; load the value 100 into A
	sta $0001	; store the value in A (100) to memory location $0001
	lda $000a	; load the value at memory location $000a into A
	