;
; unsigned char __fastcall__ agetch (void);
;

.include        "dani1.inc"

.export         _agetch

.proc           _agetch

begin:  lda     INPUT_CBUF        ; get the string
        beq     done              ; Nothing here
        ldx     #$00
        stx     INPUT_CBUF        ; Clear the input we took it
        
done:   ldx     #$00
        rts                      ; Return buffer

.endproc
