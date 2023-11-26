;
; writeData.asm
;
; Created: 26/11/2023 17:41:07
; Author : Antonin
;
	.include "m328pdef.inc"
	.equ	mask	=	0x01
	.equ	pinMask	=	0x01
	.equ	numB	=	8

	.dseg
	.org	SRAM_START
sArr:	.BYTE	numB			; allocate bytes in SRAM for array

	.cseg
	.org	0x00
	ldi	XL,LOW(sArr)		; initialize X pointer
	ldi	XH,HIGH(sArr)		; to SRAM array address

	ldi	ZL,LOW(2*pArr)		; initialize Z pointer
	ldi	ZH,HIGH(2*pArr)		; to pmem array address

	ldi	r17, numB		; initialize loop count to number of bytes

arrLp:	lpm	r16,Z+			; load value from pmem array
	st	X+,r16			; store value to SRAM array
	dec	r17			; decrement loop count
	brne	arrLp			; repeat loop for all bytes in array

	ldi r17, pinMask
	out DDRB, r17
start:
	ldi	XL,LOW(sArr)		; initialize X pointer
	ldi	XH,HIGH(sArr)		; to SRAM array address
	ldi r17, numB
	ldi r18, mask
loop:
	ld r16, X+
	and r16, r18
	out PORTB, r16
	dec r17
	brne	loop			; infinite loop
	rjmp start

pArr:	.db	0,1,1,0,0,0,1,0	; 