;DANI-I VGA
;void __fastcall__ dstorechar(dvga_character * character, unsigned char location);
;Store a character in DVGA

.include        "dani1.inc"

.export         _dstorechar

.import         incsp2
.importzp       sp

.proc           _dstorechar

        sta     V_SYSVAR1   ; save location
        ldy     #1
        lda     (sp),y          ; get hi byte
        sta     V_SYSVAR2+1     ; into ptr hi
        lda     (sp)            ; get lo byte
        sta     V_SYSVAR2       ; to ptr lo
        jsr     incsp2
        jmp     DVGA_STORECHAR

.endproc