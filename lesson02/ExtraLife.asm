; ------------------------------------------------------------------------------
;	Lesson 2 - Game Logic for extra lives
;		-the two memory storage locations are completely arbitrary for this
;		-
; ------------------------------------------------------------------------------
; We initialize two "variables" with zero and three.
; We will use memory locations $00:0000 and $00:0001
; 	to store the number of coins and lives

	lda #$00		; load register A with zero
	sta $0000	; and store it to memory
	lda #$03		; load register A with three
	sta $0001	; and store it to memory
	
; Imaginary game code would go here

; now we check if a theoretical coin we picked up bumps us over 100

	lda $0000	; load the number of coins into the accumulator
	cmp #100		; compare it to see if it is over 100 for a free life
	bcc Done		; if it is less than 100, jump to Done and carry on
	lda #$00		; else, load the accumulator with zero
	sta $0000	; and store it to memory, setting coin count back to zero
	lda $0001	; load the number of lives into accumulator
	clc			; clear the carry flag so we can do addition
	adc #$01		; add one to the accumulator (for the free life)
	sta $0001	; and store it back to memory
Done:			; we done!

; carry on with more imaginary game code
