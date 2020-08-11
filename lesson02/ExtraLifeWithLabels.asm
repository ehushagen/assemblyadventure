; ------------------------------------------------------------------------------
;	Lesson 2 - Game Logic for extra lives
;		-the two memory storage locations are completely arbitrary for this
;		-this example uses labels to improve readability of memory locations
; ------------------------------------------------------------------------------
; tell the assembler we want to use two labels
	coins = $0000
	lives = $0001

; as before, we will use memory locations $00:0000 and $00:0001 to store
;	the number of coins and lives

	lda #$00			; load the A register with zero...
	sta coins		; ...and store in memory
	lda #$03			; load the A register with three...
	sta lives		; and store in memory

;////////////////////////////////
; imaginary game code goes here
;////////////////////////////////

; check the number of coins, presumably after picking one up in-game
	lda coins
	cmp #100
	bcc Done			; if less than 100, jump to Done
	lda #$00
	sta coins
	lda lives
	clc
	adc #$01
	sta lives
Done:

;//////////////////////////////////////
; more imaginary game code continues
;//////////////////////////////////////