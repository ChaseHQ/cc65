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
	.dbg		file, "multidemo.c", 6562, 1657744212
	.dbg		file, "/cygdrive/c/Users/Craig Vella/Documents/GitHub/cc65/include/string.h", 5442, 1657744211
	.dbg		file, "/cygdrive/c/Users/Craig Vella/Documents/GitHub/cc65/include/stdio.h", 6901, 1657744211
	.dbg		file, "/cygdrive/c/Users/Craig Vella/Documents/GitHub/cc65/include/stdlib.h", 6145, 1657744211
	.dbg		file, "/cygdrive/c/Users/Craig Vella/Documents/GitHub/cc65/include/dirent.h", 5491, 1657744211
	.dbg		file, "/cygdrive/c/Users/Craig Vella/Documents/GitHub/cc65/include/cbm_filetype.h", 5057, 1657744211
	.dbg		file, "/cygdrive/c/Users/Craig Vella/Documents/GitHub/cc65/include/em.h", 6429, 1657744211
	.dbg		file, "/cygdrive/c/Users/Craig Vella/Documents/GitHub/cc65/include/cc65.h", 5230, 1657744211
	.dbg		file, "/cygdrive/c/Users/Craig Vella/Documents/GitHub/cc65/include/cbm.h", 12209, 1657744211
	.dbg		file, "/cygdrive/c/Users/Craig Vella/Documents/GitHub/cc65/include/stddef.h", 3127, 1657744211
	.dbg		file, "/cygdrive/c/Users/Craig Vella/Documents/GitHub/cc65/include/c64.h", 7085, 1657744211
	.dbg		file, "/cygdrive/c/Users/Craig Vella/Documents/GitHub/cc65/include/_vic2.h", 11027, 1657744211
	.dbg		file, "/cygdrive/c/Users/Craig Vella/Documents/GitHub/cc65/include/_sid.h", 3694, 1657744211
	.dbg		file, "/cygdrive/c/Users/Craig Vella/Documents/GitHub/cc65/include/_6526.h", 4033, 1657744211
	.dbg		file, "/cygdrive/c/Users/Craig Vella/Documents/GitHub/cc65/include/device.h", 3284, 1657744211
	.forceimport	__STARTUP__
	.dbg		sym, "strcpy", "00", extern, "_strcpy"
	.dbg		sym, "strrchr", "00", extern, "_strrchr"
	.dbg		sym, "strcasecmp", "00", extern, "_strcasecmp"
	.dbg		sym, "getchar", "00", extern, "_getchar"
	.dbg		sym, "printf", "00", extern, "_printf"
	.dbg		sym, "realloc", "00", extern, "_realloc"
	.dbg		sym, "free", "00", extern, "_free"
	.dbg		sym, "opendir", "00", extern, "_opendir"
	.dbg		sym, "readdir", "00", extern, "_readdir"
	.dbg		sym, "closedir", "00", extern, "_closedir"
	.dbg		sym, "em_load_driver", "00", extern, "_em_load_driver"
	.dbg		sym, "em_pagecount", "00", extern, "_em_pagecount"
	.dbg		sym, "em_copyfrom", "00", extern, "_em_copyfrom"
	.dbg		sym, "em_copyto", "00", extern, "_em_copyto"
	.dbg		sym, "doesclrscrafterexit", "00", extern, "_doesclrscrafterexit"
	.dbg		sym, "cbm_load", "00", extern, "_cbm_load"
	.dbg		sym, "getcurrentdevice", "00", extern, "_getcurrentdevice"
	.dbg		sym, "_OVERLAY1_LOAD__", "00", extern, "__OVERLAY1_LOAD__"
	.dbg		sym, "_OVERLAY1_SIZE__", "00", extern, "__OVERLAY1_SIZE__"
	.dbg		sym, "_OVERLAY2_LOAD__", "00", extern, "__OVERLAY2_LOAD__"
	.dbg		sym, "_OVERLAY2_SIZE__", "00", extern, "__OVERLAY2_SIZE__"
	.dbg		sym, "_OVERLAY3_LOAD__", "00", extern, "__OVERLAY3_LOAD__"
	.dbg		sym, "_OVERLAY3_SIZE__", "00", extern, "__OVERLAY3_SIZE__"
	.import		_strcpy
	.import		_strrchr
	.import		_strcasecmp
	.import		_getchar
	.import		_printf
	.import		_realloc
	.import		_free
	.import		_opendir
	.import		_readdir
	.import		_closedir
	.import		_em_load_driver
	.import		_em_pagecount
	.import		_em_copyfrom
	.import		_em_copyto
	.import		_doesclrscrafterexit
	.import		_cbm_load
	.import		_getcurrentdevice
	.import		__OVERLAY1_LOAD__
	.import		__OVERLAY1_SIZE__
	.import		__OVERLAY2_LOAD__
	.import		__OVERLAY2_SIZE__
	.import		__OVERLAY3_LOAD__
	.import		__OVERLAY3_SIZE__
	.export		_overlay
	.export		_log
	.export		_foo
	.export		_bar
	.export		_foobar
	.export		_loademdriver
	.export		_loadoverlay
	.export		_copyoverlays
	.export		_main

.segment	"DATA"

_overlay:
	.addr	S0001
	.word	$FFFF
	.addr	__OVERLAY1_LOAD__
	.addr	__OVERLAY1_SIZE__
	.addr	S0002
	.word	$FFFF
	.addr	__OVERLAY2_LOAD__
	.addr	__OVERLAY2_SIZE__
	.addr	S0003
	.word	$FFFF
	.addr	__OVERLAY3_LOAD__
	.addr	__OVERLAY3_SIZE__

.segment	"RODATA"

S0019:
	.byte	$C4,$42,$47,$3A,$20,$CE,$4F,$54,$20,$45,$4E,$4F,$55,$47,$48,$20
	.byte	$4D,$45,$4D,$4F,$52,$59,$20,$46,$4F,$52,$20,$4F,$56,$45,$52,$4C
	.byte	$41,$59,$20,$25,$55,$0D,$00
S001A:
	.byte	$C4,$42,$47,$3A,$20,$D3,$54,$4F,$52,$45,$44,$20,$4F,$56,$45,$52
	.byte	$4C,$41,$59,$20,$25,$55,$20,$49,$4E,$20,$50,$41,$47,$45,$53,$20
	.byte	$25,$55,$2D,$25,$55,$0D,$00
S0018:
	.byte	$C4,$42,$47,$3A,$20,$CC,$4F,$41,$44,$49,$4E,$47,$20,$4F,$56,$45
	.byte	$52,$4C,$41,$59,$20,$25,$55,$20,$46,$52,$4F,$4D,$20,$4D,$45,$4D
	.byte	$4F,$52,$59,$0D,$00
S001C:
	.byte	$C3,$4F,$50,$59,$49,$4E,$47,$20,$4F,$56,$45,$52,$4C,$41,$59,$53
	.byte	$20,$49,$4E,$54,$4F,$20,$45,$58,$54,$2E,$20,$4D,$45,$4D,$4F,$52
	.byte	$59,$00
S001D:
	.byte	$CE,$4F,$20,$45,$58,$54,$45,$4E,$44,$45,$44,$20,$4D,$45,$4D,$4F
	.byte	$52,$59,$20,$44,$52,$49,$56,$45,$52,$20,$46,$4F,$55,$4E,$44,$00
S001B:
	.byte	$CC,$4F,$41,$44,$49,$4E,$47,$20,$45,$58,$54,$45,$4E,$44,$45,$44
	.byte	$20,$4D,$45,$4D,$4F,$52,$59,$20,$44,$52,$49,$56,$45,$52,$00
S000E:
	.byte	$C4,$42,$47,$3A,$20,$D3,$45,$41,$52,$43,$48,$49,$4E,$47,$20,$46
	.byte	$4F,$52,$20,$45,$4D,$44,$52,$49,$56,$45,$52,$53,$0D,$00
S0009:
	.byte	$C3,$41,$4C,$4C,$49,$4E,$47,$20,$4D,$41,$49,$4E,$20,$46,$52,$4F
	.byte	$4D,$20,$4F,$56,$45,$52,$4C,$41,$59,$20,$32,$00
S000C:
	.byte	$C3,$41,$4C,$4C,$49,$4E,$47,$20,$4D,$41,$49,$4E,$20,$46,$52,$4F
	.byte	$4D,$20,$4F,$56,$45,$52,$4C,$41,$59,$20,$33,$00
S0006:
	.byte	$C3,$41,$4C,$4C,$49,$4E,$47,$20,$4D,$41,$49,$4E,$20,$46,$52,$4F
	.byte	$4D,$20,$4F,$56,$45,$52,$4C,$41,$59,$20,$31,$00
S0021:
	.byte	$C3,$41,$4C,$4C,$49,$4E,$47,$20,$4F,$56,$45,$52,$4C,$41,$59,$20
	.byte	$33,$20,$46,$52,$4F,$4D,$20,$4D,$41,$49,$4E,$00
S0017:
	.byte	$CC,$4F,$41,$44,$49,$4E,$47,$20,$4F,$56,$45,$52,$4C,$41,$59,$20
	.byte	$46,$49,$4C,$45,$20,$46,$41,$49,$4C,$45,$44,$00
S0020:
	.byte	$C3,$41,$4C,$4C,$49,$4E,$47,$20,$4F,$56,$45,$52,$4C,$41,$59,$20
	.byte	$32,$20,$46,$52,$4F,$4D,$20,$4D,$41,$49,$4E,$00
S001F:
	.byte	$C3,$41,$4C,$4C,$49,$4E,$47,$20,$4F,$56,$45,$52,$4C,$41,$59,$20
	.byte	$31,$20,$46,$52,$4F,$4D,$20,$4D,$41,$49,$4E,$00
S0013:
	.byte	$C4,$42,$47,$3A,$20,$CD,$45,$4D,$4F,$52,$49,$5A,$49,$4E,$47,$20
	.byte	$46,$49,$4C,$45,$20,$25,$53,$0D,$00
S0014:
	.byte	$C4,$42,$47,$3A,$20,$D4,$52,$59,$49,$4E,$47,$20,$45,$4D,$44,$52
	.byte	$49,$56,$45,$52,$20,$25,$53,$0D,$00
S0015:
	.byte	$C4,$42,$47,$3A,$20,$CC,$4F,$41,$44,$45,$44,$20,$45,$4D,$44,$52
	.byte	$49,$56,$45,$52,$20,$25,$53,$0D,$00
S0016:
	.byte	$C4,$42,$47,$3A,$20,$C5,$4D,$44,$52,$49,$56,$45,$52,$20,$25,$53
	.byte	$20,$46,$41,$49,$4C,$45,$44,$0D,$00
S0010:
	.byte	$CF,$50,$45,$4E,$49,$4E,$47,$20,$44,$49,$52,$45,$43,$54,$4F,$52
	.byte	$59,$20,$46,$41,$49,$4C,$45,$44,$00
S0012:
	.byte	$C4,$42,$47,$3A,$20,$D3,$4B,$49,$50,$50,$49,$4E,$47,$20,$46,$49
	.byte	$4C,$45,$20,$25,$53,$0D,$00
S001E:
	.byte	$D0,$52,$45,$53,$53,$20,$41,$4E,$59,$20,$4B,$45,$59,$2E,$2E,$2E
	.byte	$00
S0022	:=	S001E+0
S0002:
	.byte	$4D,$55,$4C,$54,$44,$45,$4D,$4F,$2E,$32,$00
S0003:
	.byte	$4D,$55,$4C,$54,$44,$45,$4D,$4F,$2E,$33,$00
S0001:
	.byte	$4D,$55,$4C,$54,$44,$45,$4D,$4F,$2E,$31,$00
S0004:
	.byte	$CC,$4F,$47,$3A,$20,$25,$53,$0D,$00
S0011:
	.byte	$2E,$45,$4D,$44,$00
S000F	:=	S001E+15

; ---------------------------------------------------------------
; void __near__ log (char *msg)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_log: near

	.dbg	func, "log", "00", extern, "_log"
	.dbg	sym, "msg", "00", auto, 0

.segment	"CODE"

;
; {
;
	.dbg	line, "multidemo.c", 53
	jsr     pushax
;
; printf ("Log: %s\n", msg);
;
	.dbg	line, "multidemo.c", 59
	lda     #<(S0004)
	ldx     #>(S0004)
	jsr     pushax
	ldy     #$05
	jsr     pushwysp
	ldy     #$04
	jsr     _printf
;
; }
;
	.dbg	line, "multidemo.c", 60
	jmp     incsp2

	.dbg	line
.endproc

; ---------------------------------------------------------------
; void __near__ foo (void)
; ---------------------------------------------------------------

.segment	"OVERLAY1"

.proc	_foo: near

	.dbg	func, "foo", "00", extern, "_foo"

.segment	"OVERLAY1"

;
; log ("Calling main from overlay 1");
;
	.dbg	line, "multidemo.c", 71
	lda     #<(S0006)
	ldx     #>(S0006)
	jmp     _log

	.dbg	line
.endproc

; ---------------------------------------------------------------
; void __near__ bar (void)
; ---------------------------------------------------------------

.segment	"OVERLAY2"

.proc	_bar: near

	.dbg	func, "bar", "00", extern, "_bar"

.segment	"OVERLAY2"

;
; log ("Calling main from overlay 2");
;
	.dbg	line, "multidemo.c", 81
	lda     #<(S0009)
	ldx     #>(S0009)
	jmp     _log

	.dbg	line
.endproc

; ---------------------------------------------------------------
; void __near__ foobar (void)
; ---------------------------------------------------------------

.segment	"OVERLAY3"

.proc	_foobar: near

	.dbg	func, "foobar", "00", extern, "_foobar"

.segment	"OVERLAY3"

;
; log ("Calling main from overlay 3");
;
	.dbg	line, "multidemo.c", 91
	lda     #<(S000C)
	ldx     #>(S000C)
	jmp     _log

	.dbg	line
.endproc

; ---------------------------------------------------------------
; unsigned char __near__ loademdriver (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_loademdriver: near

	.dbg	func, "loademdriver", "00", extern, "_loademdriver"
	.dbg	sym, "dir", "00", auto, -2
	.dbg	sym, "ent", "00", auto, -4
	.dbg	sym, "emd", "00", auto, -6
	.dbg	sym, "max", "00", auto, -7
	.dbg	sym, "num", "00", auto, -8

.segment	"CODE"

;
; char *emd = NULL;
;
	.dbg	line, "multidemo.c", 101
	jsr     decsp4
	jsr     push0
;
; unsigned char max = 0;
;
	.dbg	line, "multidemo.c", 102
	jsr     pusha
;
; printf ("Dbg: Searching for emdrivers\n");
;
	.dbg	line, "multidemo.c", 105
	jsr     decsp1
	lda     #<(S000E)
	ldx     #>(S000E)
	jsr     pushax
	ldy     #$02
	jsr     _printf
;
; dir = opendir (".");
;
	.dbg	line, "multidemo.c", 106
	lda     #<(S000F)
	ldx     #>(S000F)
	jsr     _opendir
	ldy     #$06
	jsr     staxysp
;
; if (!dir) {
;
	.dbg	line, "multidemo.c", 107
	ldy     #$07
	lda     (sp),y
	dey
	ora     (sp),y
	jne     L0005
;
; log ("Opening directory failed");
;
	.dbg	line, "multidemo.c", 108
	lda     #<(S0010)
	ldx     #>(S0010)
	jsr     _log
;
; return 0;
;
	.dbg	line, "multidemo.c", 109
	jmp     L0014
;
; if (!_DE_ISREG (ent->d_type)) {
;
	.dbg	line, "multidemo.c", 115
L0003:	jsr     decsp2
	ldy     #$07
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	ldy     #$15
	lda     (ptr1),y
	and     #$10
	jsr     boolne
	tax
;
; continue;
;
	.dbg	line, "multidemo.c", 116
	jeq     L0012
;
; ext = strrchr (ent->d_name, '.');
;
	.dbg	line, "multidemo.c", 119
	ldy     #$09
	jsr     pushwysp
	ldx     #$00
	lda     #$2E
	jsr     _strrchr
	jsr     stax0sp
;
; if (!ext || strcasecmp (ext, ".emd")) {
;
	.dbg	line, "multidemo.c", 120
	ldy     #$01
	lda     (sp),y
	dey
	ora     (sp),y
	beq     L0009
	jsr     pushw0sp
	lda     #<(S0011)
	ldx     #>(S0011)
	jsr     _strcasecmp
	stx     tmp1
	ora     tmp1
	beq     L0008
;
; printf ("Dbg: Skipping file %s\n", ent->d_name);
;
	.dbg	line, "multidemo.c", 121
L0009:	lda     #<(S0012)
	ldx     #>(S0012)
	jsr     pushax
	ldy     #$0B
	jsr     pushwysp
	ldy     #$04
	jsr     _printf
;
; continue;
;
	.dbg	line, "multidemo.c", 122
	jmp     L0012
;
; printf ("Dbg: Memorizing file %s\n", ent->d_name);
;
	.dbg	line, "multidemo.c", 125
L0008:	lda     #<(S0013)
	ldx     #>(S0013)
	jsr     pushax
	ldy     #$0B
	jsr     pushwysp
	ldy     #$04
	jsr     _printf
;
; emd = realloc (emd, FILENAME_MAX * (max + 1));
;
	.dbg	line, "multidemo.c", 126
	ldy     #$07
	jsr     pushwysp
	ldy     #$05
	ldx     #$00
	lda     (sp),y
	clc
	adc     #$01
	bcc     L000B
	inx
L000B:	jsr     pushax
	lda     #$FF
	jsr     tosmula0
	jsr     _realloc
	ldy     #$04
	jsr     staxysp
;
; strcpy (emd + FILENAME_MAX * max++, ent->d_name);
;
	.dbg	line, "multidemo.c", 127
	jsr     pushax
	ldy     #$05
	lda     (sp),y
	jsr     pusha0
	lda     #$FF
	jsr     tosumula0
	jsr     tosaddax
	jsr     pushax
	ldy     #$09
	lda     (sp),y
	sta     regsave+1
	dey
	lda     (sp),y
	sta     regsave
	ldy     #$05
	clc
	lda     #$01
	adc     (sp),y
	sta     (sp),y
	lda     regsave
	ldx     regsave+1
	jsr     _strcpy
;
; }
;
	.dbg	line, "multidemo.c", 128
L0012:	jsr     incsp2
;
; while (ent = readdir (dir)) {
;
	.dbg	line, "multidemo.c", 112
L0005:	ldy     #$07
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     _readdir
	ldy     #$04
	jsr     staxysp
	stx     tmp1
	ora     tmp1
	jne     L0003
;
; closedir (dir);
;
	.dbg	line, "multidemo.c", 129
	ldy     #$07
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     _closedir
;
; for (num = 0; num < max; ++num) {
;
	.dbg	line, "multidemo.c", 131
	lda     #$00
	tay
L0013:	sta     (sp),y
	iny
	cmp     (sp),y
	jcs     L000D
;
; drv = emd + FILENAME_MAX * num;
;
	.dbg	line, "multidemo.c", 134
	jsr     decsp2
	ldy     #$07
	jsr     pushwysp
	ldy     #$04
	lda     (sp),y
	jsr     pusha0
	lda     #$FF
	jsr     tosumula0
	jsr     tosaddax
	jsr     stax0sp
;
; printf ("Dbg: Trying emdriver %s\n", drv);
;
	.dbg	line, "multidemo.c", 135
	lda     #<(S0014)
	ldx     #>(S0014)
	jsr     pushax
	ldy     #$05
	jsr     pushwysp
	ldy     #$04
	jsr     _printf
;
; if (em_load_driver (drv) == EM_ERR_OK) {
;
	.dbg	line, "multidemo.c", 136
	ldy     #$01
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     _em_load_driver
	cmp     #$00
	bne     L0010
;
; printf ("Dbg: Loaded emdriver %s\n", drv);
;
	.dbg	line, "multidemo.c", 137
	lda     #<(S0015)
	ldx     #>(S0015)
	jsr     pushax
	ldy     #$05
	jsr     pushwysp
	ldy     #$04
	jsr     _printf
;
; free (emd);
;
	.dbg	line, "multidemo.c", 138
	ldy     #$05
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     _free
;
; return 1;
;
	.dbg	line, "multidemo.c", 139
	ldx     #$00
	lda     #$01
	jsr     incsp2
	jmp     incsp8
;
; printf ("Dbg: Emdriver %s failed\n", drv);
;
	.dbg	line, "multidemo.c", 142
L0010:	lda     #<(S0016)
	ldx     #>(S0016)
	jsr     pushax
	ldy     #$05
	jsr     pushwysp
	ldy     #$04
	jsr     _printf
;
; }
;
	.dbg	line, "multidemo.c", 143
	jsr     incsp2
;
; for (num = 0; num < max; ++num) {
;
	.dbg	line, "multidemo.c", 131
	ldy     #$00
	clc
	lda     #$01
	adc     (sp),y
	jmp     L0013
;
; free (emd);
;
	.dbg	line, "multidemo.c", 145
L000D:	ldy     #$03
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     _free
;
; return 0;
;
	.dbg	line, "multidemo.c", 146
L0014:	ldx     #$00
	txa
;
; }
;
	.dbg	line, "multidemo.c", 147
	jmp     incsp8

	.dbg	line
.endproc

; ---------------------------------------------------------------
; unsigned char __near__ loadoverlay (unsigned char num)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_loadoverlay: near

	.dbg	func, "loadoverlay", "00", extern, "_loadoverlay"
	.dbg	sym, "num", "00", auto, 0

.segment	"CODE"

;
; {
;
	.dbg	line, "multidemo.c", 151
	jsr     pusha
;
; if (overlay[num - 1].page < 0) {
;
	.dbg	line, "multidemo.c", 152
	ldx     #$00
	lda     (sp,x)
	sec
	sbc     #$01
	bcs     L0003
	dex
L0003:	stx     tmp1
	asl     a
	rol     tmp1
	asl     a
	rol     tmp1
	asl     a
	rol     tmp1
	clc
	adc     #<(_overlay)
	sta     ptr1
	lda     tmp1
	adc     #>(_overlay)
	sta     ptr1+1
	ldy     #$03
	lda     (ptr1),y
	tax
	cpx     #$80
	bcc     L0002
;
; if (cbm_load (overlay[num - 1].name, getcurrentdevice (), NULL) == 0) {
;
	.dbg	line, "multidemo.c", 169
	jsr     decsp3
	ldx     #$00
	lda     (sp),y
	sec
	sbc     #$01
	bcs     L0005
	dex
L0005:	stx     tmp1
	asl     a
	rol     tmp1
	asl     a
	rol     tmp1
	asl     a
	rol     tmp1
	clc
	adc     #<(_overlay)
	sta     ptr1
	lda     tmp1
	adc     #>(_overlay)
	sta     ptr1+1
	ldy     #$01
	lda     (ptr1),y
	tax
	dey
	lda     (ptr1),y
	iny
	sta     (sp),y
	iny
	txa
	sta     (sp),y
	jsr     _getcurrentdevice
	ldy     #$00
	sta     (sp),y
	ldx     #$00
	txa
	jsr     _cbm_load
	cpx     #$00
	bne     L0004
	cmp     #$00
	bne     L000B
;
; log ("Loading overlay file failed");
;
	.dbg	line, "multidemo.c", 170
	lda     #<(S0017)
	ldx     #>(S0017)
	jsr     _log
;
; return 0;
;
	.dbg	line, "multidemo.c", 171
	ldx     #$00
	txa
	jmp     incsp1
;
; return 1;
;
	.dbg	line, "multidemo.c", 175
L0004:	ldx     #$00
L000B:	lda     #$01
	jmp     incsp1
;
; printf ("Dbg: Loading overlay %u from memory\n", num);
;
	.dbg	line, "multidemo.c", 179
L0002:	jsr     decsp8
	lda     #<(S0018)
	ldx     #>(S0018)
	jsr     pushax
	ldy     #$0A
	lda     (sp),y
	jsr     pusha0
	ldy     #$04
	jsr     _printf
;
; copyinfo.offs  = 0;
;
	.dbg	line, "multidemo.c", 180
	lda     #$00
	ldy     #$02
	sta     (sp),y
;
; copyinfo.page  = overlay[num - 1].page;
;
	.dbg	line, "multidemo.c", 181
	ldy     #$08
	tax
	lda     (sp),y
	sec
	sbc     #$01
	bcs     L0008
	dex
L0008:	stx     tmp1
	asl     a
	rol     tmp1
	asl     a
	rol     tmp1
	asl     a
	rol     tmp1
	clc
	adc     #<(_overlay)
	sta     ptr1
	lda     tmp1
	adc     #>(_overlay)
	sta     ptr1+1
	ldy     #$03
	lda     (ptr1),y
	tax
	dey
	lda     (ptr1),y
	iny
	jsr     staxysp
;
; copyinfo.buf   = overlay[num - 1].addr;
;
	.dbg	line, "multidemo.c", 182
	ldy     #$08
	ldx     #$00
	lda     (sp),y
	sec
	sbc     #$01
	bcs     L0009
	dex
L0009:	stx     tmp1
	asl     a
	rol     tmp1
	asl     a
	rol     tmp1
	asl     a
	rol     tmp1
	clc
	adc     #<(_overlay)
	sta     ptr1
	lda     tmp1
	adc     #>(_overlay)
	sta     ptr1+1
	ldy     #$05
	lda     (ptr1),y
	tax
	dey
	lda     (ptr1),y
	jsr     stax0sp
;
; copyinfo.count = overlay[num - 1].size;
;
	.dbg	line, "multidemo.c", 183
	ldy     #$08
	ldx     #$00
	lda     (sp),y
	sec
	sbc     #$01
	bcs     L000A
	dex
L000A:	stx     tmp1
	asl     a
	rol     tmp1
	asl     a
	rol     tmp1
	asl     a
	rol     tmp1
	clc
	adc     #<(_overlay)
	sta     ptr1
	lda     tmp1
	adc     #>(_overlay)
	sta     ptr1+1
	dey
	lda     (ptr1),y
	tax
	dey
	lda     (ptr1),y
	dey
	jsr     staxysp
;
; em_copyfrom (&copyinfo);
;
	.dbg	line, "multidemo.c", 184
	lda     sp
	ldx     sp+1
	jsr     _em_copyfrom
;
; return 1;
;
	.dbg	line, "multidemo.c", 185
	ldx     #$00
	lda     #$01
	jsr     incsp8
;
; }
;
	.dbg	line, "multidemo.c", 187
	jmp     incsp1

	.dbg	line
.endproc

; ---------------------------------------------------------------
; void __near__ copyoverlays (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_copyoverlays: near

	.dbg	func, "copyoverlays", "00", extern, "_copyoverlays"
	.dbg	sym, "page", "00", auto, -2
	.dbg	sym, "num", "00", auto, -3

.segment	"CODE"

;
; unsigned page = 0;
;
	.dbg	line, "multidemo.c", 192
	jsr     push0
;
; for (num = 0; num < sizeof (overlay) / sizeof (overlay[0]); ++num) {
;
	.dbg	line, "multidemo.c", 195
	jsr     decsp1
	ldy     #$00
L000F:	sta     (sp),y
	cmp     #$03
	jcs     L0003
;
; unsigned size = (overlay[num].size + EM_PAGE_SIZE - 1) / EM_PAGE_SIZE;
;
	.dbg	line, "multidemo.c", 197
	jsr     decsp8
	ldy     #$08
	ldx     #$00
	lda     (sp),y
	stx     tmp1
	asl     a
	rol     tmp1
	asl     a
	rol     tmp1
	asl     a
	rol     tmp1
	clc
	adc     #<(_overlay)
	sta     ptr1
	lda     tmp1
	adc     #>(_overlay)
	sta     ptr1+1
	dey
	lda     (ptr1),y
	tax
	dey
	lda     (ptr1),y
	inx
	sec
	sbc     #$01
	bcs     L0006
	dex
L0006:	txa
	jsr     pusha0
;
; if (size > em_pagecount () - page) {
;
	.dbg	line, "multidemo.c", 199
	jsr     pushw0sp
	jsr     _em_pagecount
	sec
	ldy     #$0D
	sbc     (sp),y
	pha
	txa
	iny
	sbc     (sp),y
	tax
	pla
	jsr     tosicmp
	bcc     L0007
	beq     L0007
;
; printf ("Dbg: Not enough memory for overlay %u\n", num + 1);
;
	.dbg	line, "multidemo.c", 200
	lda     #<(S0019)
	ldx     #>(S0019)
	jsr     pushax
	ldy     #$0C
	ldx     #$00
	lda     (sp),y
	clc
	adc     #$01
	bcc     L0008
	inx
L0008:	jsr     pushax
	ldy     #$04
;
; continue;
;
	.dbg	line, "multidemo.c", 201
	jmp     L0011
;
; if (loadoverlay (num + 1) == 0)
;
	.dbg	line, "multidemo.c", 204
L0007:	ldy     #$0A
	lda     (sp),y
	clc
	adc     #$01
	jsr     _loadoverlay
	cmp     #$00
;
; continue;
;
	.dbg	line, "multidemo.c", 205
	jeq     L0010
;
; copyinfo.offs  = 0;
;
	.dbg	line, "multidemo.c", 207
	lda     #$00
	ldy     #$04
	sta     (sp),y
;
; copyinfo.page  = page;
;
	.dbg	line, "multidemo.c", 208
	ldy     #$0C
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	ldy     #$05
	jsr     staxysp
;
; copyinfo.buf   = overlay[num].addr;
;
	.dbg	line, "multidemo.c", 209
	ldy     #$0A
	ldx     #$00
	lda     (sp),y
	stx     tmp1
	asl     a
	rol     tmp1
	asl     a
	rol     tmp1
	asl     a
	rol     tmp1
	clc
	adc     #<(_overlay)
	sta     ptr1
	lda     tmp1
	adc     #>(_overlay)
	sta     ptr1+1
	ldy     #$05
	lda     (ptr1),y
	tax
	dey
	lda     (ptr1),y
	ldy     #$02
	jsr     staxysp
;
; copyinfo.count = overlay[num].size;
;
	.dbg	line, "multidemo.c", 210
	ldy     #$0A
	ldx     #$00
	lda     (sp),y
	stx     tmp1
	asl     a
	rol     tmp1
	asl     a
	rol     tmp1
	asl     a
	rol     tmp1
	clc
	adc     #<(_overlay)
	sta     ptr1
	lda     tmp1
	adc     #>(_overlay)
	sta     ptr1+1
	ldy     #$07
	lda     (ptr1),y
	tax
	dey
	lda     (ptr1),y
	iny
	jsr     staxysp
;
; em_copyto (&copyinfo);
;
	.dbg	line, "multidemo.c", 211
	lda     sp
	ldx     sp+1
	clc
	adc     #$02
	bcc     L000B
	inx
L000B:	jsr     _em_copyto
;
; overlay[num].page = page;
;
	.dbg	line, "multidemo.c", 213
	ldy     #$0A
	ldx     #$00
	lda     (sp),y
	stx     tmp1
	asl     a
	rol     tmp1
	asl     a
	rol     tmp1
	asl     a
	rol     tmp1
	clc
	adc     #<(_overlay)
	sta     ptr1
	lda     tmp1
	adc     #>(_overlay)
	sta     ptr1+1
	ldy     #$0C
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	ldy     #$02
	sta     (ptr1),y
	iny
	txa
	sta     (ptr1),y
;
; page += size;
;
	.dbg	line, "multidemo.c", 214
	ldy     #$00
	lda     (sp),y
	ldy     #$0B
	clc
	adc     (sp),y
	sta     (sp),y
	ldy     #$01
	lda     (sp),y
	ldy     #$0C
	adc     (sp),y
	sta     (sp),y
;
; printf ("Dbg: Stored overlay %u in pages %u-%u\n",
;
	.dbg	line, "multidemo.c", 216
	lda     #<(S001A)
	ldx     #>(S001A)
	jsr     pushax
;
; num + 1, overlay[num].page, page - 1);
;
	.dbg	line, "multidemo.c", 217
	ldy     #$0C
	ldx     #$00
	lda     (sp),y
	clc
	adc     #$01
	bcc     L000C
	inx
L000C:	jsr     pushax
	ldy     #$0E
	ldx     #$00
	lda     (sp),y
	stx     tmp1
	asl     a
	rol     tmp1
	asl     a
	rol     tmp1
	asl     a
	rol     tmp1
	clc
	adc     #<(_overlay)
	sta     ptr1
	lda     tmp1
	adc     #>(_overlay)
	sta     ptr1+1
	ldy     #$03
	lda     (ptr1),y
	tax
	dey
	lda     (ptr1),y
	jsr     pushax
	ldy     #$12
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	sec
	sbc     #$01
	bcs     L000D
	dex
L000D:	jsr     pushax
	ldy     #$08
L0011:	jsr     _printf
;
; }
;
	.dbg	line, "multidemo.c", 218
L0010:	ldy     #$0A
	jsr     addysp
;
; for (num = 0; num < sizeof (overlay) / sizeof (overlay[0]); ++num) {
;
	.dbg	line, "multidemo.c", 195
	ldy     #$00
	clc
	lda     #$01
	adc     (sp),y
	jmp     L000F
;
; }
;
	.dbg	line, "multidemo.c", 219
L0003:	jmp     incsp3

	.dbg	line
.endproc

; ---------------------------------------------------------------
; void __near__ main (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_main: near

	.dbg	func, "main", "00", extern, "_main"

.segment	"CODE"

;
; log ("Loading extended memory driver");
;
	.dbg	line, "multidemo.c", 224
	lda     #<(S001B)
	ldx     #>(S001B)
	jsr     _log
;
; if (loademdriver ()) {
;
	.dbg	line, "multidemo.c", 225
	jsr     _loademdriver
	tax
	beq     L0002
;
; log ("Copying overlays into ext. memory");
;
	.dbg	line, "multidemo.c", 226
	lda     #<(S001C)
	ldx     #>(S001C)
	jsr     _log
;
; copyoverlays ();
;
	.dbg	line, "multidemo.c", 227
	jsr     _copyoverlays
;
; } else {
;
	.dbg	line, "multidemo.c", 228
	jmp     L0003
;
; log ("No extended memory driver found");
;
	.dbg	line, "multidemo.c", 229
L0002:	lda     #<(S001D)
	ldx     #>(S001D)
	jsr     _log
;
; log ("Press any key...");
;
	.dbg	line, "multidemo.c", 232
L0003:	lda     #<(S001E)
	ldx     #>(S001E)
	jsr     _log
;
; getchar ();
;
	.dbg	line, "multidemo.c", 233
	jsr     _getchar
;
; if (loadoverlay (1)) {
;
	.dbg	line, "multidemo.c", 235
	lda     #$01
	jsr     _loadoverlay
	tax
	beq     L0008
;
; log ("Calling overlay 1 from main");
;
	.dbg	line, "multidemo.c", 236
	lda     #<(S001F)
	ldx     #>(S001F)
	jsr     _log
;
; foo ();
;
	.dbg	line, "multidemo.c", 242
	jsr     _foo
;
; if (loadoverlay (2)) {
;
	.dbg	line, "multidemo.c", 248
L0008:	lda     #$02
	jsr     _loadoverlay
	tax
	beq     L0009
;
; log ("Calling overlay 2 from main");
;
	.dbg	line, "multidemo.c", 249
	lda     #<(S0020)
	ldx     #>(S0020)
	jsr     _log
;
; bar ();
;
	.dbg	line, "multidemo.c", 250
	jsr     _bar
;
; if (loadoverlay (3)) {
;
	.dbg	line, "multidemo.c", 253
L0009:	lda     #$03
	jsr     _loadoverlay
	tax
	beq     L0006
;
; log ("Calling overlay 3 from main");
;
	.dbg	line, "multidemo.c", 254
	lda     #<(S0021)
	ldx     #>(S0021)
	jsr     _log
;
; foobar ();
;
	.dbg	line, "multidemo.c", 255
	jsr     _foobar
;
; if (doesclrscrafterexit ()) {
;
	.dbg	line, "multidemo.c", 258
L0006:	jsr     _doesclrscrafterexit
	tax
	beq     L0007
;
; log ("Press any key...");
;
	.dbg	line, "multidemo.c", 259
	lda     #<(S0022)
	ldx     #>(S0022)
	jsr     _log
;
; getchar ();
;
	.dbg	line, "multidemo.c", 260
	jmp     _getchar
;
; }
;
	.dbg	line, "multidemo.c", 262
L0007:	rts

	.dbg	line
.endproc

