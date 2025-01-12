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
	.dbg		file, "enumdevdir.c", 3162, 1657744212
	.dbg		file, "/cygdrive/c/Users/Craig Vella/Documents/GitHub/cc65/include/stdio.h", 6901, 1657744211
	.dbg		file, "/cygdrive/c/Users/Craig Vella/Documents/GitHub/cc65/include/string.h", 5442, 1657744211
	.dbg		file, "/cygdrive/c/Users/Craig Vella/Documents/GitHub/cc65/include/unistd.h", 4412, 1657744211
	.dbg		file, "/cygdrive/c/Users/Craig Vella/Documents/GitHub/cc65/include/stdlib.h", 6145, 1657744211
	.dbg		file, "/cygdrive/c/Users/Craig Vella/Documents/GitHub/cc65/include/stdbool.h", 2559, 1657744211
	.dbg		file, "/cygdrive/c/Users/Craig Vella/Documents/GitHub/cc65/include/device.h", 3284, 1657744211
	.dbg		file, "/cygdrive/c/Users/Craig Vella/Documents/GitHub/cc65/include/dirent.h", 5491, 1657744211
	.dbg		file, "/cygdrive/c/Users/Craig Vella/Documents/GitHub/cc65/include/cbm_filetype.h", 5057, 1657744211
	.dbg		file, "/cygdrive/c/Users/Craig Vella/Documents/GitHub/cc65/include/cc65.h", 5230, 1657744211
	.forceimport	__STARTUP__
	.dbg		sym, "getchar", "00", extern, "_getchar"
	.dbg		sym, "perror", "00", extern, "_perror"
	.dbg		sym, "printf", "00", extern, "_printf"
	.dbg		sym, "strcpy", "00", extern, "_strcpy"
	.dbg		sym, "chdir", "00", extern, "_chdir"
	.dbg		sym, "getcwd", "00", extern, "_getcwd"
	.dbg		sym, "malloc", "00", extern, "_malloc"
	.dbg		sym, "realloc", "00", extern, "_realloc"
	.dbg		sym, "free", "00", extern, "_free"
	.dbg		sym, "getfirstdevice", "00", extern, "_getfirstdevice"
	.dbg		sym, "getnextdevice", "00", extern, "_getnextdevice"
	.dbg		sym, "getdevicedir", "00", extern, "_getdevicedir"
	.dbg		sym, "opendir", "00", extern, "_opendir"
	.dbg		sym, "readdir", "00", extern, "_readdir"
	.dbg		sym, "closedir", "00", extern, "_closedir"
	.dbg		sym, "doesclrscrafterexit", "00", extern, "_doesclrscrafterexit"
	.import		_getchar
	.import		_perror
	.import		_printf
	.import		_strcpy
	.import		_chdir
	.import		_getcwd
	.import		_malloc
	.import		_realloc
	.import		_free
	.import		_getfirstdevice
	.import		_getnextdevice
	.import		_getdevicedir
	.import		_opendir
	.import		_readdir
	.import		_closedir
	.import		_doesclrscrafterexit
	.export		_printdir
	.export		_main

.segment	"RODATA"

S0007:
	.byte	$43,$41,$4E,$4E,$4F,$54,$20,$41,$4C,$4C,$4F,$43,$41,$54,$45,$20
	.byte	$4D,$45,$4D,$4F,$52,$59,$00
S0003	:=	S0007+0
S0001	:=	S0007+0
S0008:
	.byte	$C4,$45,$56,$49,$43,$45,$20,$25,$44,$3A,$0D,$00
S0006:
	.byte	$20,$20,$C6,$49,$4C,$45,$20,$25,$53,$0D,$00
S0002:
	.byte	$20,$20,$C4,$49,$52,$20,$20,$25,$53,$0D,$00
S0004:
	.byte	$20,$C4,$49,$52,$20,$25,$53,$3A,$0D,$00
S0009:
	.byte	$20,$CE,$2F,$C1,$0D,$00
S0005:
	.byte	$2E,$00

; ---------------------------------------------------------------
; unsigned char __near__ printdir (char *newdir)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_printdir: near

	.dbg	func, "printdir", "00", extern, "_printdir"
	.dbg	sym, "newdir", "00", auto, 0
	.dbg	sym, "olddir", "00", auto, -2
	.dbg	sym, "curdir", "00", auto, -4
	.dbg	sym, "dir", "00", auto, -6
	.dbg	sym, "ent", "00", auto, -8
	.dbg	sym, "subdirs", "00", auto, -10
	.dbg	sym, "dirnum", "00", auto, -12
	.dbg	sym, "num", "00", auto, -14

.segment	"CODE"

;
; {
;
	.dbg	line, "enumdevdir.c", 22
	jsr     pushax
;
; char *subdirs = NULL;
;
	.dbg	line, "enumdevdir.c", 27
	jsr     decsp8
	jsr     push0
;
; unsigned dirnum = 0;
;
	.dbg	line, "enumdevdir.c", 28
	jsr     push0
;
; olddir = malloc (FILENAME_MAX);
;
	.dbg	line, "enumdevdir.c", 31
	jsr     decsp2
	lda     #$FF
	jsr     _malloc
	ldy     #$0C
	jsr     staxysp
;
; if (olddir == NULL) {
;
	.dbg	line, "enumdevdir.c", 32
	cpx     #$00
	bne     L0002
	cmp     #$00
	bne     L0002
;
; perror ("cannot allocate memory");
;
	.dbg	line, "enumdevdir.c", 33
	lda     #<(S0001)
	ldx     #>(S0001)
	jsr     _perror
;
; return true;
;
	.dbg	line, "enumdevdir.c", 34
	ldx     #$00
	lda     #$01
	jmp     L0001
;
; getcwd (olddir, FILENAME_MAX);
;
	.dbg	line, "enumdevdir.c", 37
L0002:	ldy     #$0F
	jsr     pushwysp
	ldx     #$00
	lda     #$FF
	jsr     _getcwd
;
; if (chdir (newdir)) {
;
	.dbg	line, "enumdevdir.c", 38
	ldy     #$0F
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     _chdir
	stx     tmp1
	ora     tmp1
	beq     L0004
;
; printf ("  Dir  %s\n", newdir);
;
	.dbg	line, "enumdevdir.c", 43
	lda     #<(S0002)
	ldx     #>(S0002)
	jsr     pushax
	ldy     #$13
	jsr     pushwysp
	ldy     #$04
	jsr     _printf
;
; return false;
;
	.dbg	line, "enumdevdir.c", 45
	jmp     L0018
;
; curdir = malloc (FILENAME_MAX);
;
	.dbg	line, "enumdevdir.c", 48
L0004:	tax
	lda     #$FF
	jsr     _malloc
	ldy     #$0A
	jsr     staxysp
;
; if (curdir == NULL) {
;
	.dbg	line, "enumdevdir.c", 49
	cpx     #$00
	bne     L0005
	cmp     #$00
	bne     L0005
;
; perror ("cannot allocate memory");
;
	.dbg	line, "enumdevdir.c", 50
	lda     #<(S0003)
	ldx     #>(S0003)
	jsr     _perror
;
; return true;
;
	.dbg	line, "enumdevdir.c", 51
	ldx     #$00
	lda     #$01
	jmp     L0001
;
; getcwd (curdir, FILENAME_MAX);
;
	.dbg	line, "enumdevdir.c", 57
L0005:	ldy     #$0D
	jsr     pushwysp
	ldx     #$00
	lda     #$FF
	jsr     _getcwd
;
; printf (" Dir %s:\n", curdir);
;
	.dbg	line, "enumdevdir.c", 58
	lda     #<(S0004)
	ldx     #>(S0004)
	jsr     pushax
	ldy     #$0F
	jsr     pushwysp
	ldy     #$04
	jsr     _printf
;
; free (curdir);
;
	.dbg	line, "enumdevdir.c", 59
	ldy     #$0B
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     _free
;
; dir = opendir (".");
;
	.dbg	line, "enumdevdir.c", 64
	lda     #<(S0005)
	ldx     #>(S0005)
	jsr     _opendir
	ldy     #$08
	jsr     staxysp
;
; while (ent = readdir (dir)) {
;
	.dbg	line, "enumdevdir.c", 65
	jmp     L000C
;
; if (_DE_ISREG (ent->d_type)) {
;
	.dbg	line, "enumdevdir.c", 67
L0007:	ldy     #$07
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	ldy     #$15
	lda     (ptr1),y
	and     #$10
	beq     L000A
;
; printf ("  File %s\n", ent->d_name);
;
	.dbg	line, "enumdevdir.c", 68
	lda     #<(S0006)
	ldx     #>(S0006)
	jsr     pushax
	ldy     #$0B
	jsr     pushwysp
	ldy     #$04
	jsr     _printf
;
; continue;
;
	.dbg	line, "enumdevdir.c", 69
	jmp     L000C
;
; if (_DE_ISDIR (ent->d_type)) {
;
	.dbg	line, "enumdevdir.c", 76
L000A:	ldy     #$07
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	ldy     #$15
	lda     (ptr1),y
	cmp     #$02
	bne     L000C
;
; subdirs = realloc (subdirs, FILENAME_MAX * (dirnum + 1));
;
	.dbg	line, "enumdevdir.c", 77
	ldy     #$07
	jsr     pushwysp
	ldy     #$05
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	clc
	adc     #$01
	bcc     L000D
	inx
L000D:	jsr     pushax
	lda     #$FF
	jsr     tosumula0
	jsr     _realloc
	ldy     #$04
	jsr     staxysp
;
; strcpy (subdirs + FILENAME_MAX * dirnum++, ent->d_name);
;
	.dbg	line, "enumdevdir.c", 78
	jsr     pushax
	ldy     #$07
	jsr     pushwysp
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
	ldy     #$04
	clc
	lda     #$01
	adc     (sp),y
	sta     (sp),y
	iny
	lda     #$00
	adc     (sp),y
	sta     (sp),y
	lda     regsave
	ldx     regsave+1
	jsr     _strcpy
;
; while (ent = readdir (dir)) {
;
	.dbg	line, "enumdevdir.c", 65
L000C:	ldy     #$09
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     _readdir
	ldy     #$06
	jsr     staxysp
	stx     tmp1
	ora     tmp1
	jne     L0007
;
; closedir (dir);
;
	.dbg	line, "enumdevdir.c", 81
	ldy     #$09
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     _closedir
;
; for (num = 0; num < dirnum; ++num) {
;
	.dbg	line, "enumdevdir.c", 83
	ldy     #$00
	tya
	sta     (sp),y
	iny
L0016:	sta     (sp),y
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	ldy     #$02
	cmp     (sp),y
	txa
	iny
	sbc     (sp),y
	bcs     L000F
;
; if (printdir (subdirs + FILENAME_MAX * num))
;
	.dbg	line, "enumdevdir.c", 84
	ldy     #$07
	jsr     pushwysp
	ldy     #$05
	jsr     pushwysp
	lda     #$FF
	jsr     tosumula0
	jsr     tosaddax
	jsr     _printdir
	tax
;
; break;
;
	.dbg	line, "enumdevdir.c", 85
	bne     L000F
;
; for (num = 0; num < dirnum; ++num) {
;
	.dbg	line, "enumdevdir.c", 83
	tay
	clc
	lda     #$01
	adc     (sp),y
	sta     (sp),y
	iny
	txa
	adc     (sp),y
	jmp     L0016
;
; free (subdirs);
;
	.dbg	line, "enumdevdir.c", 87
L000F:	ldy     #$05
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     _free
;
; chdir (olddir);
;
	.dbg	line, "enumdevdir.c", 89
	ldy     #$0D
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     _chdir
;
; free (olddir);
;
	.dbg	line, "enumdevdir.c", 90
L0018:	ldy     #$0D
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     _free
;
; return false;
;
	.dbg	line, "enumdevdir.c", 91
	ldx     #$00
	txa
;
; }
;
	.dbg	line, "enumdevdir.c", 92
L0001:	ldy     #$10
	jmp     addysp

	.dbg	line
.endproc

; ---------------------------------------------------------------
; void __near__ main (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_main: near

	.dbg	func, "main", "00", extern, "_main"
	.dbg	sym, "device", "00", auto, -1
	.dbg	sym, "devicedir", "00", auto, -3

.segment	"CODE"

;
; devicedir = malloc (FILENAME_MAX);
;
	.dbg	line, "enumdevdir.c", 100
	jsr     decsp3
	ldx     #$00
	lda     #$FF
	jsr     _malloc
	jsr     stax0sp
;
; if (devicedir == NULL) {
;
	.dbg	line, "enumdevdir.c", 101
	cpx     #$00
	bne     L0002
	cmp     #$00
	bne     L0002
;
; perror ("cannot allocate memory");
;
	.dbg	line, "enumdevdir.c", 102
	lda     #<(S0007)
	ldx     #>(S0007)
	jsr     _perror
;
; return;
;
	.dbg	line, "enumdevdir.c", 103
	jmp     incsp3
;
; device = getfirstdevice ();
;
	.dbg	line, "enumdevdir.c", 109
L0002:	jsr     _getfirstdevice
;
; while (device != INVALID_DEVICE) {
;
	.dbg	line, "enumdevdir.c", 110
	jmp     L000B
;
; printf ("Device %d:\n", device);
;
	.dbg	line, "enumdevdir.c", 111
L0004:	lda     #<(S0008)
	ldx     #>(S0008)
	jsr     pushax
	ldy     #$04
	lda     (sp),y
	jsr     pusha0
	ldy     #$04
	jsr     _printf
;
; if (getdevicedir (device, devicedir, FILENAME_MAX)) {
;
	.dbg	line, "enumdevdir.c", 116
	jsr     decsp3
	ldy     #$05
	lda     (sp),y
	ldy     #$02
	sta     (sp),y
	ldy     #$04
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	ldy     #$00
	sta     (sp),y
	iny
	txa
	sta     (sp),y
	ldx     #$00
	lda     #$FF
	jsr     _getdevicedir
	stx     tmp1
	ora     tmp1
	beq     L0007
;
; printdir (devicedir);
;
	.dbg	line, "enumdevdir.c", 117
	ldy     #$01
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     _printdir
;
; } else {
;
	.dbg	line, "enumdevdir.c", 118
	jmp     L0008
;
; printf (" N/A\n");
;
	.dbg	line, "enumdevdir.c", 119
L0007:	lda     #<(S0009)
	ldx     #>(S0009)
	jsr     pushax
	ldy     #$02
	jsr     _printf
;
; device = getnextdevice (device);
;
	.dbg	line, "enumdevdir.c", 122
L0008:	ldy     #$02
	lda     (sp),y
	jsr     _getnextdevice
L000B:	ldy     #$02
	sta     (sp),y
;
; while (device != INVALID_DEVICE) {
;
	.dbg	line, "enumdevdir.c", 110
	cmp     #$FF
	bne     L0004
;
; if (doesclrscrafterexit ()) {
;
	.dbg	line, "enumdevdir.c", 125
	jsr     _doesclrscrafterexit
	tax
	beq     L0009
;
; getchar ();
;
	.dbg	line, "enumdevdir.c", 126
	jsr     _getchar
;
; free (devicedir);
;
	.dbg	line, "enumdevdir.c", 129
L0009:	ldy     #$01
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     _free
;
; }
;
	.dbg	line, "enumdevdir.c", 130
	jmp     incsp3

	.dbg	line
.endproc

