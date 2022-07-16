; void __fastcall__ queryclock(void * buffer)
.include        "dani1.inc"

.export         _queryclock

.proc           _queryclock

begin:  sta     V_DRTCVAR1
        stx     V_DRTCVAR1+1        ; V_SYSVAR contains buffer
        jsr     DRTC_GET_CLK        ; Get the clock and store it
        rts                         ; Return buffer

.endproc
