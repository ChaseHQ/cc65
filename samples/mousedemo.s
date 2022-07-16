;
; File generated by cc65 v 2.19 - Git e95db437a
;
	.fopt		compiler,"cc65 v 2.19 - Git e95db437a"
	.setcpu		"6502"
	.smart		on
	.autoimport	on
	.case		on
	.debuginfo	on
	.importzp	sp, sreg, regsave, regbank
	.importzp	tmp1, tmp2, tmp3, tmp4, ptr1, ptr2, ptr3, ptr4
	.macpack	longbranch
	.dbg		file, "mousedemo.c", 7690, 1657744212
	.dbg		file, "/cygdrive/c/Users/Craig Vella/Documents/GitHub/cc65/include/stdbool.h", 2559, 1657744211
	.dbg		file, "/cygdrive/c/Users/Craig Vella/Documents/GitHub/cc65/include/stdlib.h", 6145, 1657744211
	.dbg		file, "/cygdrive/c/Users/Craig Vella/Documents/GitHub/cc65/include/string.h", 5442, 1657744211
	.dbg		file, "/cygdrive/c/Users/Craig Vella/Documents/GitHub/cc65/include/mouse.h", 9026, 1657744211
	.dbg		file, "/cygdrive/c/Users/Craig Vella/Documents/GitHub/cc65/include/pen.h", 3778, 1657744211
	.dbg		file, "/cygdrive/c/Users/Craig Vella/Documents/GitHub/cc65/include/conio.h", 9248, 1657744211
	.dbg		file, "/cygdrive/c/Users/Craig Vella/Documents/GitHub/cc65/include/stdarg.h", 2970, 1657744211
	.dbg		file, "/cygdrive/c/Users/Craig Vella/Documents/GitHub/cc65/include/target.h", 3121, 1657744211
	.dbg		file, "/cygdrive/c/Users/Craig Vella/Documents/GitHub/cc65/include/cbm.h", 12209, 1657744211
	.dbg		file, "/cygdrive/c/Users/Craig Vella/Documents/GitHub/cc65/include/stddef.h", 3127, 1657744211
	.dbg		file, "/cygdrive/c/Users/Craig Vella/Documents/GitHub/cc65/include/c64.h", 7085, 1657744211
	.dbg		file, "/cygdrive/c/Users/Craig Vella/Documents/GitHub/cc65/include/_vic2.h", 11027, 1657744211
	.dbg		file, "/cygdrive/c/Users/Craig Vella/Documents/GitHub/cc65/include/_sid.h", 3694, 1657744211
	.dbg		file, "/cygdrive/c/Users/Craig Vella/Documents/GitHub/cc65/include/_6526.h", 4033, 1657744211
	.dbg		file, "/cygdrive/c/Users/Craig Vella/Documents/GitHub/cc65/include/cbm_filetype.h", 5057, 1657744211
	.dbg		file, "/cygdrive/c/Users/Craig Vella/Documents/GitHub/cc65/include/ctype.h", 4573, 1657744211
	.dbg		file, "/cygdrive/c/Users/Craig Vella/Documents/GitHub/cc65/include/dbg.h", 5864, 1657744211
	.dbg		file, "/cygdrive/c/Users/Craig Vella/Documents/GitHub/cc65/include/cc65.h", 5230, 1657744211
	.forceimport	__STARTUP__
	.forceimport	initmainargs
	.dbg		sym, "exit", "00", extern, "_exit"
	.dbg		sym, "mouse_def_callbacks", "00", extern, "_mouse_def_callbacks"
	.dbg		sym, "mouse_stddrv", "00", extern, "_mouse_stddrv"
	.dbg		sym, "mouse_load_driver", "00", extern, "_mouse_load_driver"
	.dbg		sym, "mouse_unload", "00", extern, "_mouse_unload"
	.dbg		sym, "mouse_geterrormsg", "00", extern, "_mouse_geterrormsg"
	.dbg		sym, "mouse_hide", "00", extern, "_mouse_hide"
	.dbg		sym, "mouse_show", "00", extern, "_mouse_show"
	.dbg		sym, "mouse_setbox", "00", extern, "_mouse_setbox"
	.dbg		sym, "mouse_getbox", "00", extern, "_mouse_getbox"
	.dbg		sym, "mouse_info", "00", extern, "_mouse_info"
	.dbg		sym, "pen_adjust", "00", extern, "_pen_adjust"
	.dbg		sym, "clrscr", "00", extern, "_clrscr"
	.dbg		sym, "kbhit", "00", extern, "_kbhit"
	.dbg		sym, "gotoxy", "00", extern, "_gotoxy"
	.dbg		sym, "cputs", "00", extern, "_cputs"
	.dbg		sym, "cputsxy", "00", extern, "_cputsxy"
	.dbg		sym, "cprintf", "00", extern, "_cprintf"
	.dbg		sym, "cgetc", "00", extern, "_cgetc"
	.dbg		sym, "cursor", "00", extern, "_cursor"
	.dbg		sym, "textcolor", "00", extern, "_textcolor"
	.dbg		sym, "bgcolor", "00", extern, "_bgcolor"
	.dbg		sym, "bordercolor", "00", extern, "_bordercolor"
	.dbg		sym, "cclearxy", "00", extern, "_cclearxy"
	.dbg		sym, "screensize", "00", extern, "_screensize"
	.dbg		sym, "tolower", "00", extern, "_tolower"
	.dbg		sym, "DbgInit", "00", extern, "_DbgInit"
	.dbg		sym, "doesclrscrafterexit", "00", extern, "_doesclrscrafterexit"
	.import		_exit
	.import		_mouse_def_callbacks
	.export		_mouse_def_pointercolor
	.import		_mouse_stddrv
	.import		_mouse_load_driver
	.import		_mouse_unload
	.import		_mouse_geterrormsg
	.import		_mouse_hide
	.import		_mouse_show
	.import		_mouse_setbox
	.import		_mouse_getbox
	.import		_mouse_info
	.import		_pen_adjust
	.import		_clrscr
	.import		_kbhit
	.import		_gotoxy
	.import		_cputs
	.import		_cputsxy
	.import		_cprintf
	.import		_cgetc
	.import		_cursor
	.import		_textcolor
	.import		_bgcolor
	.import		_bordercolor
	.import		_cclearxy
	.import		_screensize
	.import		_tolower
	.import		_DbgInit
	.import		_doesclrscrafterexit
	.export		_main

.segment	"RODATA"

_mouse_def_pointercolor:
	.byte	$00
S0002:
	.byte	$D7,$41,$52,$4E,$49,$4E,$47,$3A,$20,$D4,$48,$49,$53,$20,$50,$52
	.byte	$4F,$47,$52,$41,$4D,$20,$4E,$45,$45,$44,$53,$0A,$0D,$54,$48,$45
	.byte	$20,$44,$52,$49,$56,$45,$52,$20,$57,$49,$54,$48,$20,$54,$48,$45
	.byte	$20,$4E,$41,$4D,$45,$0A,$0D,$20,$20,$20,$20,$25,$53,$0A,$0D,$4F
	.byte	$4E,$20,$41,$20,$44,$49,$53,$4B,$21,$20,$D0,$52,$45,$53,$53,$20
	.byte	$27,$59,$27,$20,$49,$46,$20,$59,$4F,$55,$20,$48,$41,$56,$45,$20
	.byte	$49,$54,$3B,$0A,$0D,$4F,$52,$2C,$20,$41,$4E,$59,$20,$4F,$54,$48
	.byte	$45,$52,$20,$4B,$45,$59,$20,$54,$4F,$20,$45,$58,$49,$54,$2E,$0A
	.byte	$0D,$00
S000B:
	.byte	$20,$44,$29,$45,$42,$55,$47,$20,$20,$48,$29,$49,$44,$45,$20,$20
	.byte	$20,$51,$29,$55,$49,$54,$20,$20,$20,$53,$29,$48,$4F,$57,$20,$20
	.byte	$20,$4A,$29,$41,$49,$4C,$00
S0003:
	.byte	$CF,$CB,$2E,$20,$D0,$4C,$45,$41,$53,$45,$20,$57,$41,$49,$54,$20
	.byte	$50,$41,$54,$49,$45,$4E,$54,$4C,$59,$2E,$2E,$2E,$0A,$0D,$00
S0013:
	.byte	$D3,$50,$55,$52,$49,$4F,$55,$53,$20,$43,$48,$41,$52,$41,$43,$54
	.byte	$45,$52,$3A,$20,$24,$25,$30,$32,$D8,$00
S0004:
	.byte	$D0,$4F,$49,$4E,$54,$45,$52,$20,$49,$53,$20,$25,$53,$56,$49,$53
	.byte	$49,$42,$4C,$45,$25,$53,$2E,$00
S000A:
	.byte	$4D,$4F,$55,$53,$45,$A4,$4C,$4F,$41,$44,$A4,$44,$52,$49,$56,$45
	.byte	$52,$00
S000C:
	.byte	$25,$33,$55,$2C,$25,$33,$55,$0A,$0D,$25,$2A,$53,$7B,$00
S0001:
	.byte	$0D,$25,$53,$3A,$20,$25,$53,$28,$25,$55,$29,$0A,$0D,$00
S0014:
	.byte	$4D,$4F,$55,$53,$45,$A4,$55,$4E,$4C,$4F,$41,$44,$00
S0007:
	.byte	$20,$41,$4E,$44,$20,$4A,$41,$49,$4C,$45,$44,$00
S000F:
	.byte	$20,$D9,$20,$20,$3D,$20,$25,$33,$44,$0A,$0D,$00
S000E:
	.byte	$20,$D8,$20,$20,$3D,$20,$25,$33,$44,$0A,$0D,$00
S0010:
	.byte	$20,$C2,$31,$20,$3D,$20,$25,$43,$0A,$0D,$00
S0015:
	.byte	$C7,$4F,$4F,$44,$42,$59,$45,$21,$00
S0011:
	.byte	$20,$C2,$32,$20,$3D,$20,$25,$43,$00
S0009:
	.byte	$50,$45,$4E,$2E,$44,$41,$54,$00
S0005:
	.byte	$49,$4E,$00
S0006	:=	S0002+129
S0008	:=	S0002+129
S000D	:=	S0002+129

.segment	"BSS"

_mouse_name:
	.res	2,$00

; ---------------------------------------------------------------
; void __near__ __fastcall__ CheckError (const char *S, unsigned char Error)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_CheckError: near

	.dbg	func, "CheckError", "00", static, "_CheckError"
	.dbg	sym, "S", "00", auto, 1
	.dbg	sym, "Error", "00", auto, 0

.segment	"CODE"

;
; {
;
	.dbg	line, "mousedemo.c", 54
	jsr     pusha
;
; if (Error != MOUSE_ERR_OK) {
;
	.dbg	line, "mousedemo.c", 55
	ldy     #$00
	lda     (sp),y
	beq     L0002
;
; cprintf ("\n%s: %s(%u)\r\n", S, mouse_geterrormsg (Error), Error);
;
	.dbg	line, "mousedemo.c", 56
	lda     #<(S0001)
	ldx     #>(S0001)
	jsr     pushax
	ldy     #$06
	jsr     pushwysp
	ldy     #$04
	lda     (sp),y
	jsr     _mouse_geterrormsg
	jsr     pushax
	ldy     #$06
	lda     (sp),y
	jsr     pusha0
	ldy     #$08
	jsr     _cprintf
;
; if (doesclrscrafterexit ()) {
;
	.dbg	line, "mousedemo.c", 61
	jsr     _doesclrscrafterexit
	tax
	beq     L0004
;
; cgetc ();
;
	.dbg	line, "mousedemo.c", 62
	jsr     _cgetc
;
; exit (EXIT_FAILURE);
;
	.dbg	line, "mousedemo.c", 64
	ldx     #$00
L0004:	lda     #$01
	jsr     _exit
;
; }
;
	.dbg	line, "mousedemo.c", 66
L0002:	jmp     incsp3

	.dbg	line
.endproc

; ---------------------------------------------------------------
; void __near__ DoWarning (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_DoWarning: near

	.dbg	func, "DoWarning", "00", static, "_DoWarning"

.segment	"CODE"

;
; "or, any other key to exit.\r\n", mouse_stddrv);
;
	.dbg	line, "mousedemo.c", 84
	lda     #<(S0002)
	ldx     #>(S0002)
	jsr     pushax
	lda     #<(_mouse_stddrv)
	ldx     #>(_mouse_stddrv)
	jsr     pushax
	ldy     #$04
	jsr     _cprintf
;
; if (tolower (cgetc ()) != 'y') {
;
	.dbg	line, "mousedemo.c", 85
	jsr     _cgetc
	jsr     _tolower
	cpx     #$00
	bne     L0004
	cmp     #$59
	beq     L0002
;
; exit (EXIT_SUCCESS);
;
	.dbg	line, "mousedemo.c", 86
L0004:	ldx     #$00
	txa
	jsr     _exit
;
; cprintf ("OK. Please wait patiently...\r\n");
;
	.dbg	line, "mousedemo.c", 88
L0002:	lda     #<(S0003)
	ldx     #>(S0003)
	jsr     pushax
	ldy     #$02
	jmp     _cprintf

	.dbg	line
.endproc

; ---------------------------------------------------------------
; void __near__ __fastcall__ ShowState (unsigned char Jailed, unsigned char Invisible)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_ShowState: near

	.dbg	func, "ShowState", "00", static, "_ShowState"
	.dbg	sym, "Jailed", "00", auto, 1
	.dbg	sym, "Invisible", "00", auto, 0

.segment	"CODE"

;
; {
;
	.dbg	line, "mousedemo.c", 96
	jsr     pusha
;
; cclearxy (0, 7, 32);
;
	.dbg	line, "mousedemo.c", 97
	jsr     decsp2
	lda     #$00
	ldy     #$01
	sta     (sp),y
	lda     #$07
	dey
	sta     (sp),y
	lda     #$20
	jsr     _cclearxy
;
; gotoxy (0, 7);
;
	.dbg	line, "mousedemo.c", 98
	lda     #$00
	jsr     pusha
	lda     #$07
	jsr     _gotoxy
;
; cprintf ("Pointer is %svisible%s.", Invisible? "in" : "", Jailed? " and jailed" : "");
;
	.dbg	line, "mousedemo.c", 99
	lda     #<(S0004)
	ldx     #>(S0004)
	jsr     pushax
	ldy     #$02
	lda     (sp),y
	beq     L0002
	lda     #<(S0005)
	ldx     #>(S0005)
	jmp     L0003
L0002:	lda     #<(S0006)
	ldx     #>(S0006)
L0003:	jsr     pushax
	ldy     #$05
	lda     (sp),y
	beq     L0004
	lda     #<(S0007)
	ldx     #>(S0007)
	jmp     L0005
L0004:	lda     #<(S0008)
	ldx     #>(S0008)
L0005:	jsr     pushax
	ldy     #$06
	jsr     _cprintf
;
; }
;
	.dbg	line, "mousedemo.c", 100
	jmp     incsp2

	.dbg	line
.endproc

; ---------------------------------------------------------------
; int __near__ __cdecl__ main (int argc, char **argv)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_main: near

	.dbg	func, "main", "00", extern, "_main"
	.dbg	sym, "argc", "00", auto, 2
	.dbg	sym, "argv", "00", auto, 0
	.dbg	sym, "info", "00", auto, -5
	.dbg	sym, "full_box", "00", auto, -13
	.dbg	sym, "small_box", "00", auto, -21
	.dbg	sym, "width", "00", auto, -22
	.dbg	sym, "height", "00", auto, -23
	.dbg	sym, "C", "00", auto, -24
	.dbg	sym, "Invisible", "00", auto, -25
	.dbg	sym, "Done", "00", auto, -26
	.dbg	sym, "Jailed", "00", auto, -27

.segment	"CODE"

;
; bool Invisible = true, Done = false, Jailed = false;
;
	.dbg	line, "mousedemo.c", 114
	ldy     #$18
	jsr     subysp
	lda     #$01
	jsr     pusha
	lda     #$00
	jsr     pusha
	jsr     pusha
;
; DbgInit (0);
;
	.dbg	line, "mousedemo.c", 117
	tax
	jsr     _DbgInit
;
; (void) bordercolor (COLOR_GRAY2);
;
	.dbg	line, "mousedemo.c", 121
	lda     #$0C
	jsr     _bordercolor
;
; (void) bgcolor (COLOR_WHITE);
;
	.dbg	line, "mousedemo.c", 122
	lda     #$01
	jsr     _bgcolor
;
; (void) textcolor (COLOR_GRAY1);
;
	.dbg	line, "mousedemo.c", 123
	lda     #$0B
	jsr     _textcolor
;
; cursor (0);
;
	.dbg	line, "mousedemo.c", 129
	lda     #$00
	jsr     _cursor
;
; clrscr ();
;
	.dbg	line, "mousedemo.c", 130
	jsr     _clrscr
;
; pen_adjust ("pen.dat");
;
	.dbg	line, "mousedemo.c", 138
	lda     #<(S0009)
	ldx     #>(S0009)
	jsr     _pen_adjust
;
; if (argc > 1) {
;
	.dbg	line, "mousedemo.c", 145
	ldy     #$1E
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	cmp     #$02
	txa
	sbc     #$00
	bvs     L0003
	eor     #$80
L0003:	bpl     L0002
;
; mouse_name = argv[1];
;
	.dbg	line, "mousedemo.c", 146
	dey
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	clc
	adc     #$02
	bcc     L0004
	inx
L0004:	sta     ptr1
	stx     ptr1+1
	ldy     #$01
	lda     (ptr1),y
	sta     _mouse_name+1
	dey
	lda     (ptr1),y
;
; } else {
;
	.dbg	line, "mousedemo.c", 147
	jmp     L003F
;
; DoWarning ();
;
	.dbg	line, "mousedemo.c", 149
L0002:	jsr     _DoWarning
;
; mouse_name = mouse_stddrv;
;
	.dbg	line, "mousedemo.c", 150
	lda     #>(_mouse_stddrv)
	sta     _mouse_name+1
	lda     #<(_mouse_stddrv)
L003F:	sta     _mouse_name
;
; CheckError ("mouse_load_driver",
;
	.dbg	line, "mousedemo.c", 154
	lda     #<(S000A)
	ldx     #>(S000A)
	jsr     pushax
;
; mouse_load_driver (&mouse_def_callbacks, mouse_name));
;
	.dbg	line, "mousedemo.c", 155
	lda     #<(_mouse_def_callbacks)
	ldx     #>(_mouse_def_callbacks)
	jsr     pushax
	lda     _mouse_name
	ldx     _mouse_name+1
	jsr     _mouse_load_driver
	jsr     _CheckError
;
; mouse_getbox (&full_box);
;
	.dbg	line, "mousedemo.c", 169
	lda     sp
	ldx     sp+1
	clc
	adc     #$0E
	bcc     L0006
	inx
L0006:	jsr     _mouse_getbox
;
; screensize (&width, &height);
;
	.dbg	line, "mousedemo.c", 171
	lda     sp
	ldx     sp+1
	clc
	adc     #$05
	bcc     L0007
	inx
L0007:	jsr     pushax
	lda     sp
	ldx     sp+1
	clc
	adc     #$06
	bcc     L0008
	inx
L0008:	jsr     _screensize
;
; clrscr ();
;
	.dbg	line, "mousedemo.c", 174
L0009:	jsr     _clrscr
;
; cputs (" d)ebug  h)ide   q)uit   s)how   j)ail");
;
	.dbg	line, "mousedemo.c", 177
	lda     #<(S000B)
	ldx     #>(S000B)
	jsr     _cputs
;
; gotoxy (width / 2 - 3, height / 2 - 1);
;
	.dbg	line, "mousedemo.c", 180
	ldy     #$05
	lda     (sp),y
	lsr     a
	sec
	sbc     #$03
	jsr     pusha
	ldy     #$05
	lda     (sp),y
	lsr     a
	sec
	sbc     #$01
	jsr     _gotoxy
;
; cprintf ("%3u,%3u\r\n%*s\xDB", width / 2 * 8 + 4, height / 2 * 8 + 4,
;
	.dbg	line, "mousedemo.c", 182
	lda     #<(S000C)
	ldx     #>(S000C)
	jsr     pushax
	ldy     #$07
	ldx     #$00
	lda     (sp),y
	lsr     a
	stx     tmp1
	asl     a
	rol     tmp1
	asl     a
	rol     tmp1
	asl     a
	rol     tmp1
	ldx     tmp1
	clc
	adc     #$04
	bcc     L000C
	inx
L000C:	jsr     pushax
	ldy     #$08
	ldx     #$00
	lda     (sp),y
	lsr     a
	stx     tmp1
	asl     a
	rol     tmp1
	asl     a
	rol     tmp1
	asl     a
	rol     tmp1
	ldx     tmp1
	clc
	adc     #$04
	bcc     L000D
	inx
L000D:	jsr     pushax
;
; width / 2, "");
;
	.dbg	line, "mousedemo.c", 183
	ldy     #$0B
	lda     (sp),y
	lsr     a
	jsr     pusha0
	lda     #<(S000D)
	ldx     #>(S000D)
	jsr     pushax
	ldy     #$0A
	jsr     _cprintf
;
; ShowState (Jailed, Invisible);
;
	.dbg	line, "mousedemo.c", 190
	ldy     #$00
	lda     (sp),y
	jsr     pusha
	ldy     #$03
	lda     (sp),y
	jsr     _ShowState
;
; mouse_info (&info);
;
	.dbg	line, "mousedemo.c", 193
L000E:	lda     sp
	ldx     sp+1
	clc
	adc     #$16
	bcc     L0011
	inx
L0011:	jsr     _mouse_info
;
; gotoxy (0, 2);
;
	.dbg	line, "mousedemo.c", 194
	lda     #$00
	jsr     pusha
	lda     #$02
	jsr     _gotoxy
;
; cprintf (" X  = %3d\r\n", info.pos.x);
;
	.dbg	line, "mousedemo.c", 195
	lda     #<(S000E)
	ldx     #>(S000E)
	jsr     pushax
	ldy     #$1B
	jsr     pushwysp
	ldy     #$04
	jsr     _cprintf
;
; cprintf (" Y  = %3d\r\n", info.pos.y);
;
	.dbg	line, "mousedemo.c", 196
	lda     #<(S000F)
	ldx     #>(S000F)
	jsr     pushax
	ldy     #$1D
	jsr     pushwysp
	ldy     #$04
	jsr     _cprintf
;
; cprintf (" B1 = %c\r\n", (info.buttons & MOUSE_BTN_LEFT) ?
;
	.dbg	line, "mousedemo.c", 197
	lda     #<(S0010)
	ldx     #>(S0010)
	jsr     pushax
	ldy     #$1C
	lda     (sp),y
	and     #$10
;
; 0x5F
;
	.dbg	line, "mousedemo.c", 199
	beq     L0038
;
; : '^');
;
	.dbg	line, "mousedemo.c", 203
	lda     #$5F
	jmp     L0013
L0038:	lda     #$5E
L0013:	jsr     pusha0
	ldy     #$04
	jsr     _cprintf
;
; cprintf (" B2 = %c", (info.buttons & MOUSE_BTN_RIGHT) ?
;
	.dbg	line, "mousedemo.c", 204
	lda     #<(S0011)
	ldx     #>(S0011)
	jsr     pushax
	ldy     #$1C
	lda     (sp),y
	and     #$01
;
; 0x5F
;
	.dbg	line, "mousedemo.c", 206
	beq     L0039
;
; : '^');
;
	.dbg	line, "mousedemo.c", 210
	lda     #$5F
	jmp     L0015
L0039:	lda     #$5E
L0015:	jsr     pusha0
	ldy     #$04
	jsr     _cprintf
;
; if (kbhit ()) {
;
	.dbg	line, "mousedemo.c", 213
	jsr     _kbhit
	tax
	jeq     L0018
;
; cclearxy (1, 9, 23);
;
	.dbg	line, "mousedemo.c", 214
	jsr     decsp2
	lda     #$01
	tay
	sta     (sp),y
	lda     #$09
	dey
	sta     (sp),y
	lda     #$17
	jsr     _cclearxy
;
; switch (tolower (C = cgetc ())) {
;
	.dbg	line, "mousedemo.c", 215
	jsr     _cgetc
	ldy     #$03
	sta     (sp),y
	jsr     _tolower
;
; }
;
	.dbg	line, "mousedemo.c", 269
	cpx     #$00
	jne     L003D
	cmp     #$44
	beq     L0019
	cmp     #$48
	beq     L001A
	cmp     #$4A
	beq     L001B
	cmp     #$51
	jeq     L003C
	cmp     #$53
	jeq     L0030
	jmp     L003D
;
; BREAK();
;
	.dbg	line, "mousedemo.c", 217
L0019:	brk
;
; (void) bordercolor (COLOR_GRAY2);
;
	.dbg	line, "mousedemo.c", 223
	lda     #$0C
	jsr     _bordercolor
;
; (void) bgcolor (COLOR_WHITE);
;
	.dbg	line, "mousedemo.c", 224
	lda     #$01
	jsr     _bgcolor
;
; (void) textcolor (COLOR_GRAY1);
;
	.dbg	line, "mousedemo.c", 225
	lda     #$0B
	jsr     _textcolor
;
; goto top;
;
	.dbg	line, "mousedemo.c", 233
	jmp     L0009
;
; mouse_hide ();
;
	.dbg	line, "mousedemo.c", 236
L001A:	jsr     _mouse_hide
;
; ShowState (Jailed, ++Invisible);
;
	.dbg	line, "mousedemo.c", 237
	ldy     #$00
	lda     (sp),y
	jsr     pusha
	ldy     #$03
	clc
	lda     #$01
	adc     (sp),y
	sta     (sp),y
	jsr     _ShowState
;
; break;
;
	.dbg	line, "mousedemo.c", 238
	jmp     L0018
;
; if (Jailed) {
;
	.dbg	line, "mousedemo.c", 241
L001B:	lda     (sp,x)
	beq     L001C
;
; mouse_setbox (&full_box);
;
	.dbg	line, "mousedemo.c", 242
	lda     sp
	ldx     sp+1
	clc
	adc     #$0E
	bcc     L001D
	inx
L001D:	jsr     _mouse_setbox
;
; Jailed = false;
;
	.dbg	line, "mousedemo.c", 243
	lda     #$00
;
; } else {
;
	.dbg	line, "mousedemo.c", 244
	jmp     L0040
;
; small_box.minx = max (info.pos.x - 10, full_box.minx);
;
	.dbg	line, "mousedemo.c", 245
L001C:	ldy     #$17
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	sec
	sbc     #$0A
	bcs     L001F
	dex
L001F:	jsr     pushax
	ldy     #$11
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     tosicmp
	bmi     L0020
	beq     L0020
	ldy     #$17
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	sec
	sbc     #$0A
	bcs     L0022
	dex
	jmp     L0022
L0020:	ldy     #$0F
	lda     (sp),y
	tax
	dey
	lda     (sp),y
L0022:	ldy     #$06
	jsr     staxysp
;
; small_box.miny = max (info.pos.y - 10, full_box.miny);
;
	.dbg	line, "mousedemo.c", 246
	ldy     #$19
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	sec
	sbc     #$0A
	bcs     L0023
	dex
L0023:	jsr     pushax
	ldy     #$13
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     tosicmp
	bmi     L0024
	beq     L0024
	ldy     #$19
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	sec
	sbc     #$0A
	bcs     L0026
	dex
	jmp     L0026
L0024:	ldy     #$11
	lda     (sp),y
	tax
	dey
	lda     (sp),y
L0026:	ldy     #$08
	jsr     staxysp
;
; small_box.maxx = min (info.pos.x + 10, full_box.maxx);
;
	.dbg	line, "mousedemo.c", 247
	ldy     #$17
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	clc
	adc     #$0A
	bcc     L0027
	inx
L0027:	ldy     #$12
	cmp     (sp),y
	txa
	iny
	sbc     (sp),y
	bvc     L0035
	eor     #$80
L0035:	bpl     L003A
	ldy     #$17
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	clc
	adc     #$0A
	bcc     L002A
	inx
	jmp     L002A
L003A:	lda     (sp),y
	tax
	dey
	lda     (sp),y
L002A:	ldy     #$0A
	jsr     staxysp
;
; small_box.maxy = min (info.pos.y + 10, full_box.maxy);
;
	.dbg	line, "mousedemo.c", 248
	ldy     #$19
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	clc
	adc     #$0A
	bcc     L002B
	inx
L002B:	ldy     #$14
	cmp     (sp),y
	txa
	iny
	sbc     (sp),y
	bvc     L0036
	eor     #$80
L0036:	bpl     L003B
	ldy     #$19
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	clc
	adc     #$0A
	bcc     L002E
	inx
	jmp     L002E
L003B:	lda     (sp),y
	tax
	dey
	lda     (sp),y
L002E:	ldy     #$0C
	jsr     staxysp
;
; mouse_setbox (&small_box);
;
	.dbg	line, "mousedemo.c", 249
	lda     sp
	ldx     sp+1
	clc
	adc     #$06
	bcc     L002F
	inx
L002F:	jsr     _mouse_setbox
;
; Jailed = true;
;
	.dbg	line, "mousedemo.c", 250
	lda     #$01
L0040:	ldy     #$00
	sta     (sp),y
;
; ShowState (Jailed, Invisible);
;
	.dbg	line, "mousedemo.c", 252
	jsr     pusha
	ldy     #$03
	lda     (sp),y
	jsr     _ShowState
;
; break;
;
	.dbg	line, "mousedemo.c", 253
	jmp     L0018
;
; mouse_show ();
;
	.dbg	line, "mousedemo.c", 256
L0030:	jsr     _mouse_show
;
; if (Invisible) {
;
	.dbg	line, "mousedemo.c", 257
	ldy     #$02
	lda     (sp),y
	beq     L0018
;
; ShowState (Jailed, --Invisible);
;
	.dbg	line, "mousedemo.c", 258
	ldy     #$00
	lda     (sp),y
	jsr     pusha
	ldy     #$03
	lda     (sp),y
	sec
	sbc     #$01
	sta     (sp),y
	jsr     _ShowState
;
; break;
;
	.dbg	line, "mousedemo.c", 260
	jmp     L0018
;
; Done = true;
;
	.dbg	line, "mousedemo.c", 263
L003C:	lda     #$01
	tay
	sta     (sp),y
;
; break;
;
	.dbg	line, "mousedemo.c", 264
	jmp     L003E
;
; gotoxy (1, 9);
;
	.dbg	line, "mousedemo.c", 267
L003D:	lda     #$01
	jsr     pusha
	lda     #$09
	jsr     _gotoxy
;
; cprintf ("Spurious character: $%02X", C);
;
	.dbg	line, "mousedemo.c", 268
	lda     #<(S0013)
	ldx     #>(S0013)
	jsr     pushax
	ldy     #$05
	lda     (sp),y
	jsr     pusha0
	ldy     #$04
	jsr     _cprintf
;
; } while (!Done);
;
	.dbg	line, "mousedemo.c", 271
L0018:	ldy     #$01
L003E:	lda     (sp),y
	jeq     L000E
;
; CheckError ("mouse_unload", mouse_unload ());
;
	.dbg	line, "mousedemo.c", 275
	lda     #<(S0014)
	ldx     #>(S0014)
	jsr     pushax
	jsr     _mouse_unload
	jsr     _CheckError
;
; cputsxy (0, height / 2 + 3, "Goodbye!");
;
	.dbg	line, "mousedemo.c", 282
	jsr     decsp2
	lda     #$00
	ldy     #$01
	sta     (sp),y
	ldy     #$06
	lda     (sp),y
	lsr     a
	clc
	adc     #$03
	ldy     #$00
	sta     (sp),y
	lda     #<(S0015)
	ldx     #>(S0015)
	jsr     _cputsxy
;
; return EXIT_SUCCESS;
;
	.dbg	line, "mousedemo.c", 283
	ldx     #$00
	txa
;
; }
;
	.dbg	line, "mousedemo.c", 284
	ldy     #$1F
	jmp     addysp

	.dbg	line
.endproc
