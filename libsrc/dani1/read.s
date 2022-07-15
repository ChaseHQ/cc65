;
; int __fastcall__ read (int fd, void* buf, unsigned count);
;

.include        "dani1.inc"

.import         popax, popptr1
.importzp       ptr1, ptr2, ptr3, tmp1

.export         _read

.proc           _read

        sta     ptr3
        stx     ptr3+1           ; Count in ptr3
        inx
        stx     ptr2+1           ; Increment and store in ptr2
        tax
        inx
        stx     ptr2
        jsr     popptr1          ; Buffer address in ptr1
        jsr     popax
        ;lda     #$00
        ;sta     tmp1+1             ; set count to 0

begin:  dec     ptr2
        bne     getch
        dec     ptr2+1
        beq     done             ; If buffer full, return

getch:  jsr     SYS_BLINK_CURSOR ; Run Blink Cursor Routine
        LDA     INPUT_CBUF       ; Get character
        BEQ     getch            ; It's Empty back to getch
        sta     tmp1             ; hold on to it for sec
        lda     #$00             ; load 0
        sta     INPUT_CBUF       ; clear input buffer
        LDA     tmp1             ; load tmp1 back and do work
        cmp     #$0D             ; Check for '\r'
        beq     docr             ; ...if CR character
        ;cmp     #$08             ; check for backspace
        ;beq     dobs             ; ...if backspace
        jsr     DVGA_PUT_CHAR    ; else echo it

putch:  sta     (ptr1)           ; save character
        ;inc     tmp1+1           ; increment counter
        inc     ptr1             ; Increment pointer
        bne     begin
        inc     ptr1+1
        bne     begin

;dobs:   lda     tmp1+1
;        cmp     #$00
;        beq     getch            ; cant back up any further
;        lda     #$00             ; set 0
;        sta     (CURSOR_LOC)     ; blank out cursor
;        jsr     DVGA_DEC_CUR     ; move back one
;        jsr     DVGA_PUT_CHAR    ; place the blank down
;        jsr     DVGA_DEC_CUR     ; move back once more
;        dec     tmp1+1             ; move count down by 1
;        dec     ptr1             ; decrement ptr1
;        lda     #$FF             ; check if it rolled
;        cmp     ptr1      
;        bne     getch
;        dec     ptr1+1           ; it rolled dec the hb
;        jmp     getch

docr:   LDA     #$00             ; Turn off the Blink
	STA     (CURSOR_LOC)     ;
        jsr     DVGA_CUR_CR      ; Carriage Return
        lda     #$0A             ; Replace with \n
        jmp     putch            
        

done:   lda     ptr3
        ldx     ptr3+1
        rts                      ; Return count

.endproc
