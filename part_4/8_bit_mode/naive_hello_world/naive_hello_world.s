PORTA = $6000
PORTB = $6001
DDRB = $6002
DDRA = $6003

E  = %10000000
PW = %01000000
RS = %00100000


  .org $8000

reset:
  lda #%11111111  ; Set all pins on port B to output
  sta DDRB

  lda #%11100000  ; Set all pins on port A to output
  sta DDRA

  lda #%00111000  ; Set 8-bit mode; 2-line display; 5x8 font
  sta PORTB
  lda #0          ; Clear RS/RW/E bits
  sta PORTA
  lda #E          ; Set E bit to send instruction
  sta PORTA
  lda #0          ; Clear RS/RW/E bits
  sta PORTA

  lda #%00001110  ; Display on; cursor on; blink off
  sta PORTB
  lda #0          ; Clear RS/RW/E bits
  sta PORTA
  lda #E          ; Set E bit to send instruction
  sta PORTA
  lda #0          ; Clear RS/RW/E bits
  sta PORTA

  lda #%00000110  ; Increment and shift cursor; don't shift display
  sta PORTB
  lda #0          ; Clear RS/RW/E bits
  sta PORTA
  lda #E          ; Set E bit to send instruction
  sta PORTA
  lda #0          ; Clear RS/RW/E bits
  sta PORTA

  lda #"H"        ; Send letter H
  sta PORTB
  lda #RS         ; Set RS; Clear RS/E bits
  sta PORTA
  lda #(RS | E)   ; Set RS and E bits to send instruction
  sta PORTA
  lda #0          ; Clear RS/RW/E bits
  sta PORTA

  lda #"e"        ; Send letter e
  sta PORTB
  lda #RS         ; Set RS; Clear RS/E bits
  sta PORTA
  lda #(RS | E)   ; Set E bit to send instruction
  sta PORTA
  lda #RS         ; Clear E bits
  sta PORTA

  lda #"l"        ; Send letter l
  sta PORTB
  lda #RS         ; Set RS; Clear RS/E bits
  sta PORTA
  lda #(RS | E)   ; Set E bit to send instruction
  sta PORTA
  lda #RS         ; Clear E bits
  sta PORTA

  lda #"l"        ; Send letter l
  sta PORTB
  lda #RS         ; Set RS; Clear RS/E bits
  sta PORTA
  lda #(RS | E)   ; Set E bit to send instruction
  sta PORTA
  lda #RS         ; Clear E bits
  sta PORTA

  lda #"o"        ; Send letter o
  sta PORTB
  lda #RS         ; Set RS; Clear RS/E bits
  sta PORTA
  lda #(RS | E)   ; Set E bit to send instruction
  sta PORTA
  lda #RS         ; Clear E bits
  sta PORTA

  lda #","        ; Send letter ,
  sta PORTB
  lda #RS         ; Set RS; Clear RS/E bits
  sta PORTA
  lda #(RS | E)   ; Set E bit to send instruction
  sta PORTA
  lda #RS         ; Clear E bits
  sta PORTA

  lda #" "        ; Send letter _
  sta PORTB
  lda #RS         ; Set RS; Clear RS/E bits
  sta PORTA
  lda #(RS | E)   ; Set E bit to send instruction
  sta PORTA
  lda #RS         ; Clear E bits
  sta PORTA

  lda #"W"        ; Send letter W
  sta PORTB
  lda #RS         ; Set RS; Clear RS/E bits
  sta PORTA
  lda #(RS | E)   ; Set E bit to send instruction
  sta PORTA
  lda #RS         ; Clear E bits
  sta PORTA

  lda #"o"        ; Send letter o
  sta PORTB
  lda #RS         ; Set RS; Clear RS/E bits
  sta PORTA
  lda #(RS | E)   ; Set E bit to send instruction
  sta PORTA
  lda #RS         ; Clear E bits
  sta PORTA

  lda #"r"        ; Send letter r
  sta PORTB
  lda #RS         ; Set RS; Clear RS/E bits
  sta PORTA
  lda #(RS | E)   ; Set E bit to send instruction
  sta PORTA
  lda #RS         ; Clear E bits
  sta PORTA

  lda #"l"        ; Send letter l
  sta PORTB
  lda #RS         ; Set RS; Clear RS/E bits
  sta PORTA
  lda #(RS | E)   ; Set E bit to send instruction
  sta PORTA
  lda #RS         ; Clear E bits
  sta PORTA

  lda #"d"        ; Send letter d
  sta PORTB
  lda #RS         ; Set RS; Clear RS/E bits
  sta PORTA
  lda #(RS | E)   ; Set E bit to send instruction
  sta PORTA
  lda #RS         ; Clear E bits
  sta PORTA

  lda #"!"        ; Send letter !
  sta PORTB
  lda #RS         ; Set RS; Clear RS/E bits
  sta PORTA
  lda #(RS | E)   ; Set E bit to send instruction
  sta PORTA
  lda #RS         ; Clear E bits
  sta PORTA


loop:
  jmp loop

  .org $fffc
  .word reset
  .word $0000
