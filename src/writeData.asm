; write data to led
.equ PIN, 0b11111101

.section .text
.global writeData

writeData:
    add r24, r22
    adc r25, zero
    lds r16, Z
    increment:


    sbrs r16, 0
    rjmp data_0
    data_1:
    in r16, PORTB   ;1
    ori r16, PIN
    out PORTB, r16  ;6 cycles
    nop
    nop
    nop
    nop
    in r16, PORTB   ;0
    andi r16, PIN
    out PORTB, r16  ;13 cycles
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rjmp increment

    data_0:
    in r16, PORTB   ;1
    ori r16, PIN
    out PORTB, r16  ;11 cycles
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    in r16, PORTB   ;0
    andi r16, PIN
    out PORTB, r16  ;10 cycles
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rjmp increment

    end_of_program:
    ret