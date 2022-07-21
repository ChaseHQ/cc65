.include        "dani1.inc"

; void __fastcall__ dsleep(unsigned time);

.export         _sleep

.importzp       tmp1, ptr1, ptr2

.proc           _sleep

        sta     ptr1        ; save time
        stx     ptr1+1
        lda     ptr1
        bne     begin
        lda     ptr1+1
        beq     end         ; the time to count was 0 just exit
begin:  lda     #$00
        sta     ptr2
        sta     ptr2+1      ; Set ptr2 to 0
timer:  lda     TIMER_COUNT ; get current timer    
        sta     tmp1        ; Set tmp1 to timer 
wait:   lda     TIMER_COUNT ; get timer
        cmp     tmp1        ; compare with last
        beq     wait        ; wait for it to be different
        ; Timer lapsed, increase wait time and see if we're done
        inc     ptr2        ; increase timer
        bne     check       ; check timer
        inc     ptr2+1      ; increase hitimer 
check:  lda     ptr2+1      ; check hi byte
        cmp     ptr1+1
        bne     timer       ; wait
        lda     ptr2        ; check lo byte
        cmp     ptr1        ; check to see if we are good
        bne     timer       ; still wait
end:    rts                 ; Return 

.endproc
