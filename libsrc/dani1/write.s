;
;
; int __fastcall__ write (int fd, const void* buf, int count);
;

.include        "dani1.inc"

.import         popax, popptr1
.importzp       ptr1, ptr2, ptr3

.export         _write

.proc           _write

        sta     ptr3
        stx     ptr3+1          ; Count in ptr3
        inx
        stx     ptr2+1          ; Increment and store in ptr2
        tax
        inx
        stx     ptr2
        jsr     popptr1         ; Buffer address in ptr1
        jsr     popax

begin:  dec     ptr2
        bne     outch
        dec     ptr2+1
        beq     done

outch:  lda     (ptr1)
        cmp     #$0A
        beq     sendcr
        cmp     #$0D            ; Check for 'n'
        beq     sendcr          ; ...if LF character
        jsr     DVGA_PUT_CHAR   ; Send character using Monitor call
        jmp     next

sendcr: jsr     DVGA_CUR_CR

next:   inc     ptr1
        bne     begin
        inc     ptr1+1
        jmp     begin

done:   lda     ptr3
        ldx     ptr3+1
        rts                     ; Return count

.endproc
