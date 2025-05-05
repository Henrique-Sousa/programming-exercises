        .org $c000

start:
        LDA #0
        LDY #0 

array_sum:
        CPY n
        BEQ print_number 
        CLC
        ADC arr,Y
        INY 
        JMP array_sum 


print_number:
        LDY #0            ; Y = hundreds counter

div100:
        CMP #100           ; have we reached <100?
        BCC print_100s     ; if A<100, branch out
        SEC
        SBC #100           ; A = A – 100
        INY                ; Y = Y + 1 (count another hundreds)
        JMP div100         ; repeat until A<100

print_100s:
        TAX               ; X = remainder (tens and ones digits)
        ; If hundreds > 0, print it
        CPY #0
        BEQ div10         ; skip if zero

        TYA               ; A = Y (hundreds digit)
        CLC
        ADC #$30          ; convert 0–9 → ASCII '0'–'9'
        JSR $FFD2         ; CHROUT: print A

        TXA
        LDY #0            ; Y = tens counter
div10:
        CMP #10           ; have we reached <10?
        BCC print_10s     ; if A<10, branch out
        SEC
        SBC #10           ; A = A – 10
        INY               ; Y = Y + 1 (count another ten)
        JMP div10         ; repeat until A<10

print_10s:
        TAX               ; X = remainder (ones digit)
        ; If tens > 0, print it
        CPY #0
        BEQ print_1s      ; skip if zero

        TYA               ; A = Y (tens digit)
        CLC
        ADC #$30          ; convert 0–9 → ASCII '0'–'9'
        JSR $FFD2         ; CHROUT: print A
       
print_1s:
        ; X still holds the remainder (ones digit)
        TXA
        CLC
        ADC #$30          ; convert to ASCII
        JSR $FFD2         ; CHROUT: print A

        RTS               ; Done

arr:    .byte 1,2,3,4,10,11
n:      .byte 6
;arr:    .byte 1,2,3
;n:      .byte 3
;arr:    .byte 200, 50, 5 
;n:      .byte 3
