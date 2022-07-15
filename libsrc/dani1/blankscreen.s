;
; Craig Vella
;
; void blankscreen (void);
;

.include        "dani1.inc"

.export         _blankscreen

.segment        "CODE"

.proc _blankscreen:    near

        jmp     DVGA_BLANKSCREEN             ;  Blankscreen

.endproc
