.segment "STARTUP"
.segment "INIT"
.segment "ONCE"
.segment "CODE"

main:
    lda #$00        ; Black
    sta $d020
    sta $d021

    ldy #0
loop:
    lda helloworld,y
    beq end
    sta $0400,y     ; Screen RAM
    iny
    jmp loop

end:
    rts

.segment "DATA"

helloworld: .byte "hello world", 0
