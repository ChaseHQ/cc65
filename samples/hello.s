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
	.dbg		file, "hello.c", 2052, 1657744212
	.dbg		file, "/cygdrive/c/Users/Craig Vella/Documents/GitHub/cc65/include/stdlib.h", 6145, 1657744211
	.dbg		file, "/cygdrive/c/Users/Craig Vella/Documents/GitHub/cc65/include/string.h", 5442, 1657744211
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
	.dbg		file, "/cygdrive/c/Users/Craig Vella/Documents/GitHub/cc65/include/joystick.h", 5250, 1657744211
	.forceimport	__STARTUP__
	.dbg		sym, "strlen", "00", extern, "_strlen"
	.dbg		sym, "clrscr", "00", extern, "_clrscr"
	.dbg		sym, "gotoxy", "00", extern, "_gotoxy"
	.dbg		sym, "cputc", "00", extern, "_cputc"
	.dbg		sym, "cprintf", "00", extern, "_cprintf"
	.dbg		sym, "cgetc", "00", extern, "_cgetc"
	.dbg		sym, "textcolor", "00", extern, "_textcolor"
	.dbg		sym, "bgcolor", "00", extern, "_bgcolor"
	.dbg		sym, "bordercolor", "00", extern, "_bordercolor"
	.dbg		sym, "chline", "00", extern, "_chline"
	.dbg		sym, "cvlinexy", "00", extern, "_cvlinexy"
	.dbg		sym, "screensize", "00", extern, "_screensize"
	.import		_strlen
	.import		_clrscr
	.import		_gotoxy
	.import		_cputc
	.import		_cprintf
	.import		_cgetc
	.import		_textcolor
	.import		_bgcolor
	.import		_bordercolor
	.import		_chline
	.import		_cvlinexy
	.import		_screensize
	.export		_main

.segment	"RODATA"

_Text:
	.byte	$C8,$45,$4C,$4C,$4F,$20,$57,$4F,$52,$4C,$44,$21,$00
S0002:
	.byte	$25,$53,$00

; ---------------------------------------------------------------
; int __near__ main (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_main: near

	.dbg	func, "main", "00", extern, "_main"
	.dbg	sym, "XSize", "00", auto, -1
	.dbg	sym, "YSize", "00", auto, -2

.segment	"CODE"

;
; (void) textcolor (COLOR_WHITE);
;
	.dbg	line, "hello.c", 38
	jsr     decsp2
	lda     #$01
	jsr     _textcolor
;
; (void) bordercolor (COLOR_BLACK);
;
	.dbg	line, "hello.c", 39
	lda     #$00
	jsr     _bordercolor
;
; (void) bgcolor (COLOR_BLACK);
;
	.dbg	line, "hello.c", 40
	lda     #$00
	jsr     _bgcolor
;
; clrscr ();
;
	.dbg	line, "hello.c", 43
	jsr     _clrscr
;
; screensize (&XSize, &YSize);
;
	.dbg	line, "hello.c", 46
	lda     sp
	ldx     sp+1
	clc
	adc     #$01
	bcc     L0002
	inx
L0002:	jsr     pushax
	lda     sp
	ldx     sp+1
	clc
	adc     #$02
	bcc     L0003
	inx
L0003:	jsr     _screensize
;
; cputc (CH_ULCORNER);
;
	.dbg	line, "hello.c", 51
	lda     #$B0
	jsr     _cputc
;
; chline (XSize - 2);
;
	.dbg	line, "hello.c", 52
	ldy     #$01
	lda     (sp),y
	sec
	sbc     #$02
	jsr     _chline
;
; cputc (CH_URCORNER);
;
	.dbg	line, "hello.c", 53
	lda     #$AE
	jsr     _cputc
;
; cvlinexy (0, 1, YSize - 2);
;
	.dbg	line, "hello.c", 56
	jsr     decsp2
	lda     #$00
	ldy     #$01
	sta     (sp),y
	tya
	dey
	sta     (sp),y
	ldy     #$02
	lda     (sp),y
	sec
	sbc     #$02
	jsr     _cvlinexy
;
; cputc (CH_LLCORNER);
;
	.dbg	line, "hello.c", 59
	lda     #$AD
	jsr     _cputc
;
; chline (XSize - 2);
;
	.dbg	line, "hello.c", 60
	ldy     #$01
	lda     (sp),y
	sec
	sbc     #$02
	jsr     _chline
;
; cputc (CH_LRCORNER);
;
	.dbg	line, "hello.c", 61
	lda     #$BD
	jsr     _cputc
;
; cvlinexy (XSize - 1, 1, YSize - 2);
;
	.dbg	line, "hello.c", 64
	jsr     decsp2
	ldy     #$03
	lda     (sp),y
	sec
	sbc     #$01
	ldy     #$01
	sta     (sp),y
	tya
	dey
	sta     (sp),y
	ldy     #$02
	lda     (sp),y
	sec
	sbc     #$02
	jsr     _cvlinexy
;
; gotoxy ((XSize - strlen (Text)) / 2, YSize / 2);
;
	.dbg	line, "hello.c", 67
	ldy     #$01
	lda     (sp),y
	jsr     pusha0
	ldy     #$FF
L0009:	iny
	ldx     _Text,y
	bne     L0009
	tya
	jsr     tossuba0
	jsr     shrax1
	jsr     pusha
	ldy     #$01
	lda     (sp),y
	lsr     a
	jsr     _gotoxy
;
; cprintf ("%s", Text);
;
	.dbg	line, "hello.c", 68
	lda     #<(S0002)
	ldx     #>(S0002)
	jsr     pushax
	lda     #<(_Text)
	ldx     #>(_Text)
	jsr     pushax
	ldy     #$04
	jsr     _cprintf
;
; cgetc ();
;
	.dbg	line, "hello.c", 80
	jsr     _cgetc
;
; clrscr ();
;
	.dbg	line, "hello.c", 85
	jsr     _clrscr
;
; return EXIT_SUCCESS;
;
	.dbg	line, "hello.c", 88
	ldx     #$00
	txa
;
; }
;
	.dbg	line, "hello.c", 89
	jmp     incsp2

	.dbg	line
.endproc
