; ---------------------------------------------------------------------------
;
; DANI-I definitions 
;
; ---------------------------------------------------------------------------

RAMSTART := $0500     ; Entry point

; ---------------------------------------------------------------------------
; Monitor Variables
; ---------------------------------------------------------------------------

CURSOR_LOC   := $0018        ; Cursor Location
CURSOR_LOCL  := $0018        ; cursor location lobyte
CURSOR_LOCH  := $0019        ; cursor location hibyte
INPUT_CBUF   := $001C        ; input buffer
CURSOR_BLI   := $001A        ; Cursor blink on/off
V_INPUTBUFFER:= $0200        ; 255 Byte Input Buffer
V_SYSVAR1    := $0010        ; ZP Sysvar 1
V_SYSVAR2    := $0012        ; ZP Sysvar 2
V_DRTCVAR1   := $0028        ; DRTC-Var-1

; ---------------------------------------------------------------------------
; Monitor Functions
; ---------------------------------------------------------------------------

DVGA_BLANKSCREEN := $C36E  ; Blank Screen
SYS_BLINK_CURSOR := $C2B4  ; Has to be ran during inputs
DVGA_INC_CUR     := $C3E2  ; Increase Cursor
DVGA_DEC_CUR     := $C408  ; Decrease Cursor
DVGA_CUR_CR      := $C3A8  ; Carriage Return
DVGA_PUT_CHAR    := $C3A2  ; Put a char out to screen
SYS_GETSTR       := $C247  ; Get String, stores it int V_INPUTBUFFER
SYS_STR_COPY     := $C0E5  ; Copy String @ V_SYSVAR1 to V_SYSVAR2
DRTC_GET_CLK     := $CA3E  ; Get Clock and store @ V_DRTCVAR1 PTR