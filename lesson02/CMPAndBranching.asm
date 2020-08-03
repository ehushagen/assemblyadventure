; ------------------------------------------------------------------------------
;	Lesson 2 - CMP and branching
;		-
;		-
;		-
; ------------------------------------------------------------------------------

	lda #$80			; load the hex value $80 (dec: 128) into A
	cmp #$40			; compare A to $40 (dec: 64)
					; this will set the C(arry) flag since $80 is >= $40
	bcs GreaterThan	; if the C(arry) flag is set, jump to the GreaterThan label
	sta $0001		; this code will never be executed because we BCS over it
	
GreaterThan:
	sta $0002		; store A (in this case, $80) into memory loc'n $0002
	