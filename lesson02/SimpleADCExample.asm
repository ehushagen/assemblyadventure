; ------------------------------------------------------------------------------
;	Lesson 2 - Add With Carry (adc) and Clear Carry flag (clc)
;		-adc will execute an addition on the accumulator
;		-takes the value provided to the opcode and adds to value in register A
;		-to get correct results from binary addition, the carry flag must be
;			cleared first
; ------------------------------------------------------------------------------
	lda #$20		; load the value $20 (dec: 32) into A
	clc			; clear the carry flag so we can ADC
	adc #$0a		; add $0a to A: $20 + $0a = $2a (dec: 42)
	clc			; clear the carry flag
	adc			; adding an arbitrary memory location ($0020) to the value in A
	