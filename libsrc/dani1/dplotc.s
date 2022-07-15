;
; void __fastcall__ dplotc (unsigned char c);
; Plot character at cursor location

.include        "dani1.inc"

.importzp       ptr1

.export         _dplotc

.proc           _dplotc

        sta     (CURSOR_LOC)
        rts                      

.endproc
