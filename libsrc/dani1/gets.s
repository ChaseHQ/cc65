;
; char * __fastcall__ gets (char* buf);
;

.include        "dani1.inc"

.importzp       ptr1

.export         _gets

.proc           _gets

        sta     ptr1
        stx     ptr1+1            ; ptr1 contains buffer

begin:  jsr     SYS_GETSTR        ; get the string
        lda     ptr1
        sta     V_SYSVAR2
        lda     ptr1+1
        sta     V_SYSVAR2+1
        lda     #<V_INPUTBUFFER
        sta     V_SYSVAR1
        lda     #>V_INPUTBUFFER
        sta     V_SYSVAR1+1
        jsr     SYS_STR_COPY

done:   lda     ptr1
        ldx     ptr1+1
        rts                      ; Return buffer

.endproc
