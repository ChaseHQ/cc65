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
	.dbg		file, "tinyshell.c", 11198, 1657744212
	.dbg		file, "/cygdrive/c/Users/Craig Vella/Documents/GitHub/cc65/include/stdio.h", 6901, 1657744211
	.dbg		file, "/cygdrive/c/Users/Craig Vella/Documents/GitHub/cc65/include/stdlib.h", 6145, 1657744211
	.dbg		file, "/cygdrive/c/Users/Craig Vella/Documents/GitHub/cc65/include/string.h", 5442, 1657744211
	.dbg		file, "/cygdrive/c/Users/Craig Vella/Documents/GitHub/cc65/include/errno.h", 5194, 1657744211
	.dbg		file, "/cygdrive/c/Users/Craig Vella/Documents/GitHub/cc65/include/unistd.h", 4412, 1657744211
	.dbg		file, "/cygdrive/c/Users/Craig Vella/Documents/GitHub/cc65/include/sys/types.h", 3296, 1657744211
	.dbg		file, "/cygdrive/c/Users/Craig Vella/Documents/GitHub/cc65/include/fcntl.h", 3625, 1657744211
	.dbg		file, "/cygdrive/c/Users/Craig Vella/Documents/GitHub/cc65/include/dirent.h", 5491, 1657744211
	.dbg		file, "/cygdrive/c/Users/Craig Vella/Documents/GitHub/cc65/include/cbm_filetype.h", 5057, 1657744211
	.forceimport	__STARTUP__
	.dbg		sym, "stdin", "00", extern, "_stdin"
	.dbg		sym, "fgets", "00", extern, "_fgets"
	.dbg		sym, "printf", "00", extern, "_printf"
	.dbg		sym, "puts", "00", extern, "_puts"
	.dbg		sym, "rename", "00", extern, "_rename"
	.dbg		sym, "malloc", "00", extern, "_malloc"
	.dbg		sym, "free", "00", extern, "_free"
	.dbg		sym, "strtoul", "00", extern, "_strtoul"
	.dbg		sym, "strcmp", "00", extern, "_strcmp"
	.dbg		sym, "strcpy", "00", extern, "_strcpy"
	.dbg		sym, "strerror", "00", extern, "_strerror"
	.dbg		sym, "strtok", "00", extern, "_strtok"
	.dbg		sym, "_errno", "00", extern, "__errno"
	.dbg		sym, "write", "00", extern, "_write"
	.dbg		sym, "read", "00", extern, "_read"
	.dbg		sym, "unlink", "00", extern, "_unlink"
	.dbg		sym, "exec", "00", extern, "_exec"
	.dbg		sym, "open", "00", extern, "_open"
	.dbg		sym, "close", "00", extern, "_close"
	.dbg		sym, "opendir", "00", extern, "_opendir"
	.dbg		sym, "readdir", "00", extern, "_readdir"
	.dbg		sym, "closedir", "00", extern, "_closedir"
	.dbg		sym, "getsp", "00", extern, "_getsp"
	.import		_stdin
	.import		_fgets
	.import		_printf
	.import		_puts
	.import		_rename
	.import		_malloc
	.import		_free
	.import		_strtoul
	.import		_strcmp
	.import		_strcpy
	.import		_strerror
	.import		_strtok
	.import		__errno
	.import		_write
	.import		_read
	.import		_unlink
	.import		_exec
	.import		_open
	.import		_close
	.import		_opendir
	.import		_readdir
	.import		_closedir
	.import		_getsp
	.export		_cmd_table
	.export		_main

.segment	"DATA"

_cpbuf_sz:
	.word	$1000
_cmd_table:
	.addr	S0001
	.byte	$02
	.addr	S0002
	.byte	$03
	.addr	S0003
	.byte	$03
	.addr	S0004
	.byte	$03
	.addr	S0005
	.byte	$04
	.addr	S0006
	.byte	$04
	.addr	S0007
	.byte	$05
	.addr	S0008
	.byte	$08
	.addr	S0009
	.byte	$08
	.addr	S000A
	.byte	$0A
	.addr	S000B
	.byte	$0A
	.addr	S000C
	.byte	$09
	.addr	S000D
	.byte	$09
	.addr	S000E
	.byte	$0B
	.addr	S000F
	.byte	$0E
	.addr	S0010
	.byte	$0D
	.word	$0000
	.byte	$00

.segment	"RODATA"

S001F:
	.byte	$4C,$53,$2C,$20,$44,$49,$52,$20,$20,$20,$20,$2D,$20,$20,$44,$49
	.byte	$53,$50,$4C,$41,$59,$20,$43,$55,$52,$52,$45,$4E,$54,$20,$44,$49
	.byte	$52,$45,$43,$54,$4F,$52,$59,$00
S0026:
	.byte	$52,$44,$2C,$20,$52,$4D,$44,$49,$52,$20,$20,$2D,$20,$20,$52,$45
	.byte	$4D,$4F,$56,$45,$20,$44,$49,$52,$45,$43,$54,$4F,$52,$59,$20,$4F
	.byte	$52,$20,$44,$52,$49,$56,$45,$00
S0024:
	.byte	$43,$44,$2C,$20,$43,$48,$44,$49,$52,$20,$20,$2D,$20,$20,$43,$48
	.byte	$41,$4E,$47,$45,$20,$44,$49,$52,$45,$43,$54,$4F,$52,$59,$20,$4F
	.byte	$52,$20,$44,$52,$49,$56,$45,$00
S0025:
	.byte	$4D,$44,$2C,$20,$4D,$4B,$44,$49,$52,$20,$20,$2D,$20,$20,$4D,$41
	.byte	$4B,$45,$20,$44,$49,$52,$45,$43,$54,$4F,$52,$59,$20,$4F,$52,$20
	.byte	$44,$52,$49,$56,$45,$00
S0014:
	.byte	$D3,$D0,$3A,$20,$30,$58,$25,$30,$34,$D8,$20,$20,$2A,$2A,$2A,$CD
	.byte	$C9,$D3,$CD,$C1,$D4,$C3,$C8,$2A,$2A,$2A,$20,$30,$58,$25,$30,$34
	.byte	$D8,$0D,$00
S0032:
	.byte	$55,$53,$41,$47,$45,$3A,$20,$45,$58,$45,$43,$20,$3C,$50,$52,$4F
	.byte	$47,$4E,$41,$4D,$45,$3E,$20,$5B,$41,$52,$47,$55,$4D,$45,$4E,$54
	.byte	$53,$5D,$00
S0028:
	.byte	$56,$45,$52,$42,$4F,$53,$45,$20,$20,$20,$20,$2D,$20,$20,$53,$45
	.byte	$54,$20,$56,$45,$52,$42,$4F,$53,$49,$54,$59,$20,$4C,$45,$56,$45
	.byte	$4C,$00
S0020:
	.byte	$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$41,$4E
	.byte	$44,$20,$44,$52,$49,$56,$45,$20,$43,$4F,$4E,$54,$45,$4E,$54,$53
	.byte	$00
S0011:
	.byte	$22,$54,$49,$4E,$59,$22,$20,$43,$4F,$4D,$4D,$41,$4E,$44,$20,$4C
	.byte	$49,$4E,$45,$20,$53,$48,$45,$4C,$4C,$2C,$20,$56,$30,$2E,$39,$31
	.byte	$00
S0012:
	.byte	$57,$52,$49,$54,$54,$45,$4E,$20,$42,$59,$20,$43,$48,$52,$49,$53
	.byte	$40,$47,$52,$4F,$45,$53,$53,$4C,$45,$52,$2E,$4F,$52,$47,$00
S002F:
	.byte	$55,$53,$41,$47,$45,$3A,$20,$4D,$56,$20,$3C,$4F,$4C,$44,$4E,$41
	.byte	$4D,$45,$3E,$20,$3C,$4E,$45,$57,$4E,$41,$4D,$45,$3E,$00
S0036:
	.byte	$4D,$41,$4C,$4C,$4F,$43,$20,$25,$55,$20,$42,$59,$54,$45,$53,$20
	.byte	$46,$41,$49,$4C,$45,$44,$3A,$20,$25,$53,$0D,$00
S003E:
	.byte	$56,$45,$52,$42,$4F,$53,$49,$54,$59,$20,$4C,$45,$56,$45,$4C,$20
	.byte	$53,$45,$54,$20,$54,$4F,$20,$25,$44,$0D,$00
S0023:
	.byte	$4D,$56,$2C,$20,$52,$45,$4E,$20,$20,$20,$20,$2D,$20,$20,$52,$45
	.byte	$4E,$41,$4D,$45,$20,$46,$49,$4C,$45,$00
S0027:
	.byte	$45,$58,$45,$43,$20,$20,$20,$20,$20,$20,$20,$2D,$20,$20,$52,$55
	.byte	$4E,$20,$50,$52,$4F,$47,$52,$41,$4D,$00
S0021:
	.byte	$52,$4D,$2C,$20,$44,$45,$4C,$20,$20,$20,$20,$2D,$20,$20,$44,$45
	.byte	$4C,$45,$54,$45,$20,$46,$49,$4C,$45,$00
S001E:
	.byte	$51,$55,$49,$54,$2C,$20,$45,$58,$49,$54,$20,$2D,$20,$20,$45,$58
	.byte	$49,$54,$20,$53,$48,$45,$4C,$4C,$00
S003D:
	.byte	$49,$4E,$56,$41,$4C,$49,$44,$20,$56,$45,$52,$42,$4F,$53,$49,$54
	.byte	$59,$20,$4C,$45,$56,$45,$4C,$00
S0022:
	.byte	$43,$50,$2C,$20,$43,$4F,$50,$59,$20,$20,$20,$2D,$20,$20,$43,$4F
	.byte	$50,$59,$20,$46,$49,$4C,$45,$00
S0035:
	.byte	$55,$53,$41,$47,$45,$3A,$20,$43,$50,$20,$3C,$53,$52,$43,$3E,$20
	.byte	$3C,$44,$45,$53,$54,$3E,$00
S003C:
	.byte	$55,$53,$41,$47,$45,$3A,$20,$56,$45,$52,$42,$4F,$53,$45,$20,$3C
	.byte	$4C,$45,$56,$45,$4C,$3E,$00
S0013:
	.byte	$54,$59,$50,$45,$20,$27,$48,$45,$4C,$50,$27,$20,$46,$4F,$52,$20
	.byte	$48,$45,$4C,$50,$0D,$00
S0038:
	.byte	$4F,$50,$45,$4E,$28,$25,$53,$29,$20,$46,$41,$49,$4C,$45,$44,$3A
	.byte	$20,$25,$53,$0D,$00
S003A	:=	S0038+0
S0030:
	.byte	$52,$45,$4E,$41,$4D,$45,$20,$46,$41,$49,$4C,$45,$44,$3A,$20,$25
	.byte	$53,$0D,$00
S002E:
	.byte	$52,$45,$4D,$4F,$56,$45,$20,$46,$41,$49,$4C,$45,$44,$3A,$20,$25
	.byte	$53,$0D,$00
S003B:
	.byte	$57,$52,$49,$54,$45,$20,$45,$52,$52,$4F,$52,$3A,$20,$25,$53,$0D
	.byte	$00
S002B:
	.byte	$C2,$55,$46,$46,$45,$52,$20,$41,$44,$44,$52,$3A,$20,$25,$50,$0D
	.byte	$00
S0037	:=	S002B+0
S002D:
	.byte	$55,$53,$41,$47,$45,$3A,$20,$52,$4D,$20,$3C,$46,$49,$4C,$45,$3E
	.byte	$00
S0040:
	.byte	$49,$4E,$56,$41,$4C,$49,$44,$20,$43,$4F,$4D,$4D,$41,$4E,$44,$00
S0039:
	.byte	$52,$45,$41,$44,$20,$45,$52,$52,$4F,$52,$3A,$20,$25,$53,$0D,$00
S0029:
	.byte	$55,$53,$41,$47,$45,$3A,$20,$4C,$53,$20,$5B,$44,$49,$52,$5D,$00
S0034:
	.byte	$45,$58,$45,$43,$20,$45,$52,$52,$4F,$52,$3A,$20,$25,$53,$0D,$00
S003F:
	.byte	$49,$4E,$54,$45,$52,$4E,$41,$4C,$20,$45,$52,$52,$4F,$52,$00
S002C:
	.byte	$4F,$50,$45,$4E,$44,$49,$52,$20,$46,$41,$49,$4C,$45,$44,$00
S0015:
	.byte	$D3,$D0,$3A,$20,$30,$58,$25,$30,$34,$D8,$0D,$00
S0010:
	.byte	$56,$45,$52,$42,$4F,$53,$45,$00
S000F:
	.byte	$45,$58,$45,$43,$00
S000B:
	.byte	$43,$4F,$50,$59,$00
S0004:
	.byte	$45,$58,$49,$54,$00
S0002:
	.byte	$51,$55,$49,$54,$00
S0016:
	.byte	$3E,$3E,$3E,$20,$00
S0001:
	.byte	$48,$45,$4C,$50,$00
S001D:
	.byte	$20,$09,$0D,$00
S001C	:=	S001D+0
S001B	:=	S001D+0
S0031	:=	S001D+0
S001A	:=	S001D+0
S000D:
	.byte	$52,$45,$4E,$00
S000E:
	.byte	$50,$57,$44,$00
S0018	:=	S001D+0
S0006:
	.byte	$44,$49,$52,$00
S0009:
	.byte	$44,$45,$4C,$00
S0008:
	.byte	$52,$4D,$00
S000C:
	.byte	$4D,$56,$00
S000A:
	.byte	$43,$50,$00
S0005:
	.byte	$4C,$53,$00
S0007:
	.byte	$4D,$44,$00
S0003:
	.byte	$51,$00
S002A:
	.byte	$2E,$00
S0019	:=	S001F+39
S0033	:=	S001F+39
S0017	:=	S001F+39

.segment	"BSS"

_verbose:
	.res	1,$00
_terminate:
	.res	1,$00
_cmd:
	.res	1,$00
_cmd_asc:
	.res	2,$00
_arg1:
	.res	2,$00
_arg2:
	.res	2,$00
_arg3:
	.res	2,$00
_args:
	.res	2,$00
_keyb_buf:
	.res	128,$00
_keyb_buf2:
	.res	128,$00

; ---------------------------------------------------------------
; void __near__ banner (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_banner: near

	.dbg	func, "banner", "00", static, "_banner"

.segment	"CODE"

;
; puts("\"tiny\" command line shell, v" VERSION_ASC);
;
	.dbg	line, "tinyshell.c", 103
	lda     #<(S0011)
	ldx     #>(S0011)
	jsr     _puts
;
; puts("written by chris@groessler.org");
;
	.dbg	line, "tinyshell.c", 104
	lda     #<(S0012)
	ldx     #>(S0012)
	jsr     _puts
;
; puts("type 'help' for help\n");
;
	.dbg	line, "tinyshell.c", 105
	lda     #<(S0013)
	ldx     #>(S0013)
	jmp     _puts

	.dbg	line
.endproc

; ---------------------------------------------------------------
; void __near__ get_command (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_get_command: near

	.dbg	func, "get_command", "00", static, "_get_command"
	.dbg	sym, "i", "00", auto, -1
	.dbg	sym, "sp", "00", auto, -3

.segment	"CODE"

;
; unsigned char i = 0;
;
	.dbg	line, "tinyshell.c", 110
	lda     #$00
	jsr     pusha
;
; if (firstcall)
;
	.dbg	line, "tinyshell.c", 116
	jsr     decsp2
	lda     M0001
	beq     L0002
;
; sp = good_sp = getsp();
;
	.dbg	line, "tinyshell.c", 117
	jsr     _getsp
	sta     M0002
	stx     M0002+1
;
; else
;
	.dbg	line, "tinyshell.c", 118
	jmp     L0017
;
; sp = getsp();
;
	.dbg	line, "tinyshell.c", 119
L0002:	jsr     _getsp
L0017:	jsr     stax0sp
;
; if (sp != good_sp) {
;
	.dbg	line, "tinyshell.c", 121
	cpx     M0002+1
	bne     L0016
	cmp     M0002
	beq     L0004
;
; printf("SP: 0x%04X  ***MISMATCH*** 0x%04X\n", sp, good_sp);
;
	.dbg	line, "tinyshell.c", 122
L0016:	lda     #<(S0014)
	ldx     #>(S0014)
	jsr     pushax
	ldy     #$05
	jsr     pushwysp
	lda     M0002
	ldx     M0002+1
	jsr     pushax
	ldy     #$06
;
; else if (verbose)
;
	.dbg	line, "tinyshell.c", 124
	jmp     L0014
L0004:	lda     _verbose
	beq     L0018
;
; printf("SP: 0x%04X\n", sp);
;
	.dbg	line, "tinyshell.c", 125
	lda     #<(S0015)
	ldx     #>(S0015)
	jsr     pushax
	ldy     #$05
	jsr     pushwysp
	ldy     #$04
L0014:	jsr     _printf
;
; arg1 = arg2 = arg3 = NULL;
;
	.dbg	line, "tinyshell.c", 128
	lda     #$00
L0018:	sta     _arg3
	sta     _arg3+1
	sta     _arg2
	sta     _arg2+1
	sta     _arg1
	sta     _arg1+1
;
; printf(PROMPT);
;
	.dbg	line, "tinyshell.c", 131
	lda     #<(S0016)
	ldx     #>(S0016)
	jsr     pushax
	ldy     #$02
	jsr     _printf
;
; if (! fgets(keyb_buf, KEYB_BUFSZ, stdin)) {
;
	.dbg	line, "tinyshell.c", 134
	jsr     decsp4
	lda     #<(_keyb_buf)
	ldy     #$02
	sta     (sp),y
	iny
	lda     #>(_keyb_buf)
	sta     (sp),y
	lda     #$7F
	ldy     #$00
	sta     (sp),y
	iny
	lda     #$00
	sta     (sp),y
	lda     _stdin
	ldx     _stdin+1
	jsr     _fgets
	stx     tmp1
	ora     tmp1
	bne     L0007
;
; puts("");
;
	.dbg	line, "tinyshell.c", 135
	lda     #<(S0017)
	ldx     #>(S0017)
	jsr     _puts
;
; cmd = CMD_QUIT;
;
	.dbg	line, "tinyshell.c", 136
	lda     #$03
	sta     _cmd
;
; return;
;
	.dbg	line, "tinyshell.c", 137
	jmp     incsp3
;
; strcpy(keyb_buf2, keyb_buf);  /* use a backup copy for 'args' */
;
	.dbg	line, "tinyshell.c", 142
L0007:	ldy     #$FF
L0008:	iny
	lda     _keyb_buf,y
	sta     _keyb_buf2,y
	bne     L0008
;
; cmd_asc = strtok(keyb_buf2, " \t\n");
;
	.dbg	line, "tinyshell.c", 145
	lda     #<(_keyb_buf2)
	ldx     #>(_keyb_buf2)
	jsr     pushax
	lda     #<(S0018)
	ldx     #>(S0018)
	jsr     _strtok
	sta     _cmd_asc
	stx     _cmd_asc+1
;
; if (cmd_asc)
;
	.dbg	line, "tinyshell.c", 146
	lda     _cmd_asc
	ora     _cmd_asc+1
	beq     L0009
;
; args = strtok(NULL, "");  /* get everything */
;
	.dbg	line, "tinyshell.c", 147
	jsr     push0
	lda     #<(S0019)
	ldx     #>(S0019)
	jsr     _strtok
	sta     _args
	stx     _args+1
;
; else
;
	.dbg	line, "tinyshell.c", 148
	jmp     L000A
;
; *args = 0;  /* no arguments */
;
	.dbg	line, "tinyshell.c", 149
L0009:	lda     _args+1
	sta     ptr1+1
	lda     _args
	sta     ptr1
	lda     #$00
	tay
	sta     (ptr1),y
;
; cmd_asc = strtok(keyb_buf, " \t\n");
;
	.dbg	line, "tinyshell.c", 154
L000A:	lda     #<(_keyb_buf)
	ldx     #>(_keyb_buf)
	jsr     pushax
	lda     #<(S001A)
	ldx     #>(S001A)
	jsr     _strtok
	sta     _cmd_asc
	stx     _cmd_asc+1
;
; if (! cmd_asc) {
;
	.dbg	line, "tinyshell.c", 155
	lda     _cmd_asc
	ora     _cmd_asc+1
	bne     L000B
;
; cmd = CMD_NOTHING;
;
	.dbg	line, "tinyshell.c", 156
	sta     _cmd
;
; return;
;
	.dbg	line, "tinyshell.c", 157
	jmp     incsp3
;
; cmd = CMD_INVALID;
;
	.dbg	line, "tinyshell.c", 159
L000B:	lda     #$01
	sta     _cmd
;
; while (cmd_table[i].name) {
;
	.dbg	line, "tinyshell.c", 160
	jmp     L000E
;
; if (! strcmp(cmd_table[i].name, cmd_asc)) {
;
	.dbg	line, "tinyshell.c", 161
L000C:	iny
	ldx     #$00
	lda     (sp),y
	jsr     mulax3
	clc
	adc     #<(_cmd_table)
	sta     ptr1
	txa
	adc     #>(_cmd_table)
	sta     ptr1+1
	dey
	lda     (ptr1),y
	tax
	dey
	lda     (ptr1),y
	jsr     pushax
	lda     _cmd_asc
	ldx     _cmd_asc+1
	jsr     _strcmp
	stx     tmp1
	ora     tmp1
	bne     L000F
;
; cmd = cmd_table[i].code;
;
	.dbg	line, "tinyshell.c", 162
	ldy     #$02
	tax
	lda     (sp),y
	jsr     mulax3
	clc
	adc     #<(_cmd_table)
	sta     ptr1
	txa
	adc     #>(_cmd_table)
	sta     ptr1+1
	lda     (ptr1),y
	sta     _cmd
;
; break;
;
	.dbg	line, "tinyshell.c", 163
	jmp     L0015
;
; i++;
;
	.dbg	line, "tinyshell.c", 165
L000F:	ldy     #$02
	clc
	lda     #$01
	adc     (sp),y
	sta     (sp),y
;
; while (cmd_table[i].name) {
;
	.dbg	line, "tinyshell.c", 160
L000E:	ldy     #$02
	ldx     #$00
	lda     (sp),y
	jsr     mulax3
	clc
	adc     #<(_cmd_table)
	sta     ptr1
	txa
	adc     #>(_cmd_table)
	sta     ptr1+1
	ldy     #$00
	lda     (ptr1),y
	iny
	ora     (ptr1),y
	bne     L000C
;
; arg1 = strtok(NULL, " \t\n");
;
	.dbg	line, "tinyshell.c", 169
L0015:	jsr     push0
	lda     #<(S001B)
	ldx     #>(S001B)
	jsr     _strtok
	sta     _arg1
	stx     _arg1+1
;
; if (! arg1)
;
	.dbg	line, "tinyshell.c", 170
	lda     _arg1
	ora     _arg1+1
;
; return;
;
	.dbg	line, "tinyshell.c", 171
	beq     L0001
;
; arg2 = strtok(NULL, " \t\n");
;
	.dbg	line, "tinyshell.c", 172
	jsr     push0
	lda     #<(S001C)
	ldx     #>(S001C)
	jsr     _strtok
	sta     _arg2
	stx     _arg2+1
;
; if (! arg2)
;
	.dbg	line, "tinyshell.c", 173
	lda     _arg2
	ora     _arg2+1
;
; return;
;
	.dbg	line, "tinyshell.c", 174
	beq     L0001
;
; arg3 = strtok(NULL, " \t\n");
;
	.dbg	line, "tinyshell.c", 175
	jsr     push0
	lda     #<(S001D)
	ldx     #>(S001D)
	jsr     _strtok
	sta     _arg3
	stx     _arg3+1
;
; }
;
	.dbg	line, "tinyshell.c", 176
L0001:	jmp     incsp3

	.dbg	line
.segment	"DATA"

M0001:
	.byte	$01

.segment	"BSS"

M0002:
	.res	2,$00

.endproc

; ---------------------------------------------------------------
; void __near__ cmd_help (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_cmd_help: near

	.dbg	func, "cmd_help", "00", static, "_cmd_help"

.segment	"CODE"

;
; puts("quit, exit -  exit shell");
;
	.dbg	line, "tinyshell.c", 180
	lda     #<(S001E)
	ldx     #>(S001E)
	jsr     _puts
;
; puts("ls, dir    -  display current directory");
;
	.dbg	line, "tinyshell.c", 181
	lda     #<(S001F)
	ldx     #>(S001F)
	jsr     _puts
;
; puts("              and drive contents");
;
	.dbg	line, "tinyshell.c", 182
	lda     #<(S0020)
	ldx     #>(S0020)
	jsr     _puts
;
; puts("rm, del    -  delete file");
;
	.dbg	line, "tinyshell.c", 183
	lda     #<(S0021)
	ldx     #>(S0021)
	jsr     _puts
;
; puts("cp, copy   -  copy file");
;
	.dbg	line, "tinyshell.c", 184
	lda     #<(S0022)
	ldx     #>(S0022)
	jsr     _puts
;
; puts("mv, ren    -  rename file");
;
	.dbg	line, "tinyshell.c", 185
	lda     #<(S0023)
	ldx     #>(S0023)
	jsr     _puts
;
; puts("cd, chdir  -  change directory or drive");
;
	.dbg	line, "tinyshell.c", 186
	lda     #<(S0024)
	ldx     #>(S0024)
	jsr     _puts
;
; puts("md, mkdir  -  make directory or drive");
;
	.dbg	line, "tinyshell.c", 187
	lda     #<(S0025)
	ldx     #>(S0025)
	jsr     _puts
;
; puts("rd, rmdir  -  remove directory or drive");
;
	.dbg	line, "tinyshell.c", 188
	lda     #<(S0026)
	ldx     #>(S0026)
	jsr     _puts
;
; puts("exec       -  run program");
;
	.dbg	line, "tinyshell.c", 189
	lda     #<(S0027)
	ldx     #>(S0027)
	jsr     _puts
;
; puts("verbose    -  set verbosity level");
;
	.dbg	line, "tinyshell.c", 193
	lda     #<(S0028)
	ldx     #>(S0028)
	jmp     _puts

	.dbg	line
.endproc

; ---------------------------------------------------------------
; void __near__ cmd_ls (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_cmd_ls: near

	.dbg	func, "cmd_ls", "00", static, "_cmd_ls"
	.dbg	sym, "dir", "00", auto, -2
	.dbg	sym, "arg", "00", auto, -4
	.dbg	sym, "dirent", "00", auto, -6

.segment	"CODE"

;
; if (arg2) {
;
	.dbg	line, "tinyshell.c", 205
	jsr     decsp6
	lda     _arg2
	ora     _arg2+1
	beq     L0002
;
; puts("usage: ls [dir]");
;
	.dbg	line, "tinyshell.c", 206
	lda     #<(S0029)
	ldx     #>(S0029)
	jsr     _puts
;
; return;
;
	.dbg	line, "tinyshell.c", 207
	jmp     incsp6
;
; if (arg1) {
;
	.dbg	line, "tinyshell.c", 211
L0002:	lda     _arg1
	ora     _arg1+1
	beq     L0003
;
; arg = arg1;
;
	.dbg	line, "tinyshell.c", 229
	lda     _arg1
	ldx     _arg1+1
;
; else
;
	.dbg	line, "tinyshell.c", 231
	jmp     L000B
;
; arg = ".";
;
	.dbg	line, "tinyshell.c", 232
L0003:	lda     #<(S002A)
	ldx     #>(S002A)
L000B:	ldy     #$02
	jsr     staxysp
;
; if (verbose)
;
	.dbg	line, "tinyshell.c", 234
	lda     _verbose
	beq     L0005
;
; printf("Buffer addr: %p\n", arg);
;
	.dbg	line, "tinyshell.c", 235
	lda     #<(S002B)
	ldx     #>(S002B)
	jsr     pushax
	ldy     #$07
	jsr     pushwysp
	ldy     #$04
	jsr     _printf
;
; dir = opendir(arg);
;
	.dbg	line, "tinyshell.c", 236
L0005:	ldy     #$03
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     _opendir
	ldy     #$04
	jsr     staxysp
;
; if (! dir) {
;
	.dbg	line, "tinyshell.c", 240
	ldy     #$05
	lda     (sp),y
	dey
	ora     (sp),y
	bne     L0009
;
; puts("opendir failed");
;
	.dbg	line, "tinyshell.c", 241
	lda     #<(S002C)
	ldx     #>(S002C)
	jsr     _puts
;
; return;
;
	.dbg	line, "tinyshell.c", 242
	jmp     incsp6
;
; puts(dirent->d_name);
;
	.dbg	line, "tinyshell.c", 246
L0007:	ldy     #$01
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     _puts
;
; while (dirent = readdir(dir))
;
	.dbg	line, "tinyshell.c", 245
L0009:	ldy     #$05
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     _readdir
	jsr     stax0sp
	stx     tmp1
	ora     tmp1
	bne     L0007
;
; closedir(dir);
;
	.dbg	line, "tinyshell.c", 248
	ldy     #$05
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     _closedir
;
; }
;
	.dbg	line, "tinyshell.c", 249
	jmp     incsp6

	.dbg	line
.endproc

; ---------------------------------------------------------------
; void __near__ cmd_rm (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_cmd_rm: near

	.dbg	func, "cmd_rm", "00", static, "_cmd_rm"

.segment	"CODE"

;
; if (!arg1 || arg2) {
;
	.dbg	line, "tinyshell.c", 253
	lda     _arg1
	ora     _arg1+1
	beq     L0003
	lda     _arg2
	ora     _arg2+1
	beq     L0002
;
; puts("usage: rm <file>");
;
	.dbg	line, "tinyshell.c", 254
L0003:	lda     #<(S002D)
	ldx     #>(S002D)
	jmp     _puts
;
; if (unlink(arg1))
;
	.dbg	line, "tinyshell.c", 262
L0002:	lda     _arg1
	ldx     _arg1+1
	jsr     _unlink
	stx     tmp1
	ora     tmp1
	beq     L0005
;
; printf("remove failed: %s\n", strerror(errno));
;
	.dbg	line, "tinyshell.c", 263
	lda     #<(S002E)
	ldx     #>(S002E)
	jsr     pushax
	lda     __errno
	ldx     __errno+1
	jsr     _strerror
	jsr     pushax
	ldy     #$04
	jmp     _printf
;
; }
;
	.dbg	line, "tinyshell.c", 264
L0005:	rts

	.dbg	line
.endproc

; ---------------------------------------------------------------
; void __near__ cmd_rename (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_cmd_rename: near

	.dbg	func, "cmd_rename", "00", static, "_cmd_rename"

.segment	"CODE"

;
; if (!arg2 || arg3) {
;
	.dbg	line, "tinyshell.c", 343
	lda     _arg2
	ora     _arg2+1
	beq     L0003
	lda     _arg3
	ora     _arg3+1
	beq     L0002
;
; puts("usage: mv <oldname> <newname>");
;
	.dbg	line, "tinyshell.c", 344
L0003:	lda     #<(S002F)
	ldx     #>(S002F)
	jmp     _puts
;
; if (rename(arg1, arg2))
;
	.dbg	line, "tinyshell.c", 353
L0002:	lda     _arg1
	ldx     _arg1+1
	jsr     pushax
	lda     _arg2
	ldx     _arg2+1
	jsr     _rename
	stx     tmp1
	ora     tmp1
	beq     L0005
;
; printf("rename failed: %s\n", strerror(errno));
;
	.dbg	line, "tinyshell.c", 354
	lda     #<(S0030)
	ldx     #>(S0030)
	jsr     pushax
	lda     __errno
	ldx     __errno+1
	jsr     _strerror
	jsr     pushax
	ldy     #$04
	jmp     _printf
;
; }
;
	.dbg	line, "tinyshell.c", 355
L0005:	rts

	.dbg	line
.endproc

; ---------------------------------------------------------------
; void __near__ cmd_exec (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_cmd_exec: near

	.dbg	func, "cmd_exec", "00", static, "_cmd_exec"
	.dbg	sym, "progname", "00", auto, -2
	.dbg	sym, "arguments", "00", auto, -4

.segment	"CODE"

;
; progname = strtok(args, " \t\n");
;
	.dbg	line, "tinyshell.c", 361
	jsr     decsp4
	lda     _args
	ldx     _args+1
	jsr     pushax
	lda     #<(S0031)
	ldx     #>(S0031)
	jsr     _strtok
	ldy     #$02
	jsr     staxysp
;
; if (! progname) {
;
	.dbg	line, "tinyshell.c", 362
	ldy     #$03
	lda     (sp),y
	dey
	ora     (sp),y
	bne     L0002
;
; puts("usage: exec <progname> [arguments]");
;
	.dbg	line, "tinyshell.c", 363
	lda     #<(S0032)
	ldx     #>(S0032)
	jsr     _puts
;
; return;
;
	.dbg	line, "tinyshell.c", 364
	jmp     incsp4
;
; arguments = strtok(NULL, "");
;
	.dbg	line, "tinyshell.c", 366
L0002:	jsr     push0
	lda     #<(S0033)
	ldx     #>(S0033)
	jsr     _strtok
	jsr     stax0sp
;
; (void)exec(progname, arguments);
;
	.dbg	line, "tinyshell.c", 369
	ldy     #$05
	jsr     pushwysp
	ldy     #$03
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     _exec
;
; printf("exec error: %s\n", strerror(errno));
;
	.dbg	line, "tinyshell.c", 370
	lda     #<(S0034)
	ldx     #>(S0034)
	jsr     pushax
	lda     __errno
	ldx     __errno+1
	jsr     _strerror
	jsr     pushax
	ldy     #$04
	jsr     _printf
;
; }
;
	.dbg	line, "tinyshell.c", 371
	jmp     incsp4

	.dbg	line
.endproc

; ---------------------------------------------------------------
; void __near__ cmd_copy (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_cmd_copy: near

	.dbg	func, "cmd_copy", "00", static, "_cmd_copy"
	.dbg	sym, "srcfd", "00", auto, -2
	.dbg	sym, "dstfd", "00", auto, -4
	.dbg	sym, "buf", "00", auto, -6
	.dbg	sym, "readsz", "00", auto, -8
	.dbg	sym, "writesz", "00", auto, -10

.segment	"CODE"

;
; int srcfd = -1, dstfd = -1;
;
	.dbg	line, "tinyshell.c", 375
	ldx     #$FF
	txa
	jsr     pushax
	jsr     pushax
;
; if (!arg2 || arg3) {
;
	.dbg	line, "tinyshell.c", 379
	jsr     decsp6
	lda     _arg2
	ora     _arg2+1
	beq     L0003
	lda     _arg3
	ora     _arg3+1
	beq     L0002
;
; puts("usage: cp <src> <dest>");
;
	.dbg	line, "tinyshell.c", 380
L0003:	lda     #<(S0035)
	ldx     #>(S0035)
	jsr     _puts
;
; return;
;
	.dbg	line, "tinyshell.c", 381
	jmp     L0017
;
; buf = malloc(cpbuf_sz);
;
	.dbg	line, "tinyshell.c", 389
L0002:	lda     _cpbuf_sz
	ldx     _cpbuf_sz+1
	jsr     _malloc
	ldy     #$04
	jsr     staxysp
;
; if (! buf) {
;
	.dbg	line, "tinyshell.c", 390
	ldy     #$05
	lda     (sp),y
	dey
	ora     (sp),y
	bne     L0005
;
; printf("malloc %u bytes failed: %s\n", cpbuf_sz, strerror(errno));
;
	.dbg	line, "tinyshell.c", 391
	lda     #<(S0036)
	ldx     #>(S0036)
	jsr     pushax
	lda     _cpbuf_sz
	ldx     _cpbuf_sz+1
	jsr     pushax
	lda     __errno
	ldx     __errno+1
	jsr     _strerror
	jsr     pushax
	ldy     #$06
	jsr     _printf
;
; return;
;
	.dbg	line, "tinyshell.c", 392
	jmp     L0017
;
; if (verbose)
;
	.dbg	line, "tinyshell.c", 394
L0005:	lda     _verbose
	beq     L0007
;
; printf("Buffer addr: %p\n", buf);
;
	.dbg	line, "tinyshell.c", 395
	lda     #<(S0037)
	ldx     #>(S0037)
	jsr     pushax
	ldy     #$09
	jsr     pushwysp
	ldy     #$04
	jsr     _printf
;
; if (srcfd == -1) {
;
	.dbg	line, "tinyshell.c", 398
L0007:	ldy     #$09
	lda     (sp),y
	cmp     #$FF
	bne     L000C
	dey
	lda     (sp),y
	cmp     #$FF
	bne     L000C
;
; srcfd = open(arg1, O_RDONLY);
;
	.dbg	line, "tinyshell.c", 399
	jsr     decsp4
	lda     _arg1
	ldy     #$02
	sta     (sp),y
	iny
	lda     _arg1+1
	sta     (sp),y
	lda     #$01
	ldy     #$00
	sta     (sp),y
	iny
	lda     #$00
	sta     (sp),y
	ldy     #$04
	jsr     _open
	ldy     #$08
	jsr     staxysp
;
; if (srcfd < 0) {
;
	.dbg	line, "tinyshell.c", 400
	cpx     #$80
	bcc     L000C
;
; printf("open(%s) failed: %s\n", arg1, strerror(errno));
;
	.dbg	line, "tinyshell.c", 401
	lda     #<(S0038)
	ldx     #>(S0038)
	jsr     pushax
	lda     _arg1
	ldx     _arg1+1
	jsr     pushax
	lda     __errno
	ldx     __errno+1
	jsr     _strerror
	jsr     pushax
	ldy     #$06
	jsr     _printf
;
; break;
;
	.dbg	line, "tinyshell.c", 402
	jmp     L0008
;
; readsz = read(srcfd, buf, cpbuf_sz);
;
	.dbg	line, "tinyshell.c", 406
L000C:	jsr     decsp4
	ldy     #$0D
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	ldy     #$02
	sta     (sp),y
	iny
	txa
	sta     (sp),y
	ldy     #$09
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	ldy     #$00
	sta     (sp),y
	iny
	txa
	sta     (sp),y
	lda     _cpbuf_sz
	ldx     _cpbuf_sz+1
	jsr     _read
	ldy     #$02
	jsr     staxysp
;
; if (readsz < 0) {
;
	.dbg	line, "tinyshell.c", 407
	cpx     #$80
	bcc     L000D
;
; printf("read error: %s\n", strerror(errno));
;
	.dbg	line, "tinyshell.c", 408
	lda     #<(S0039)
	ldx     #>(S0039)
	jsr     pushax
	lda     __errno
	ldx     __errno+1
	jsr     _strerror
	jsr     pushax
	ldy     #$04
	jsr     _printf
;
; break;
;
	.dbg	line, "tinyshell.c", 409
	jmp     L0008
;
; if (! readsz)
;
	.dbg	line, "tinyshell.c", 411
L000D:	ldy     #$03
	lda     (sp),y
	dey
	ora     (sp),y
;
; break;
;
	.dbg	line, "tinyshell.c", 412
	jeq     L0008
;
; if (dstfd == -1) {
;
	.dbg	line, "tinyshell.c", 414
	ldy     #$07
	lda     (sp),y
	cmp     #$FF
	bne     L0011
	dey
	lda     (sp),y
	cmp     #$FF
	bne     L0011
;
; dstfd = open(arg2, O_WRONLY | O_CREAT | O_TRUNC, 0777);
;
	.dbg	line, "tinyshell.c", 415
	jsr     decsp4
	lda     _arg2
	ldy     #$02
	sta     (sp),y
	iny
	lda     _arg2+1
	sta     (sp),y
	lda     #$32
	ldy     #$00
	sta     (sp),y
	iny
	lda     #$00
	sta     (sp),y
	ldx     #$01
	lda     #$FF
	jsr     pushax
	ldy     #$06
	jsr     _open
	ldy     #$06
	jsr     staxysp
;
; if (dstfd < 0) {
;
	.dbg	line, "tinyshell.c", 416
	cpx     #$80
	bcc     L0011
;
; printf("open(%s) failed: %s\n", arg2, strerror(errno));
;
	.dbg	line, "tinyshell.c", 417
	lda     #<(S003A)
	ldx     #>(S003A)
	jsr     pushax
	lda     _arg2
	ldx     _arg2+1
	jsr     pushax
	lda     __errno
	ldx     __errno+1
	jsr     _strerror
	jsr     pushax
	ldy     #$06
	jsr     _printf
;
; break;
;
	.dbg	line, "tinyshell.c", 418
	jmp     L0008
;
; writesz = write(dstfd, buf, readsz);
;
	.dbg	line, "tinyshell.c", 422
L0011:	jsr     decsp4
	ldy     #$0B
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	ldy     #$02
	sta     (sp),y
	iny
	txa
	sta     (sp),y
	ldy     #$09
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	ldy     #$00
	sta     (sp),y
	iny
	txa
	sta     (sp),y
	ldy     #$07
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     _write
	jsr     stax0sp
;
; if (writesz < 0 || writesz != readsz) {
;
	.dbg	line, "tinyshell.c", 423
	cpx     #$80
	bcs     L001A
	ldy     #$01
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	ldy     #$02
	cmp     (sp),y
	bne     L001A
	txa
	iny
	cmp     (sp),y
	beq     L001C
;
; printf("write error: %s\n", strerror(errno));
;
	.dbg	line, "tinyshell.c", 424
L001A:	lda     #<(S003B)
	ldx     #>(S003B)
	jsr     pushax
	lda     __errno
	ldx     __errno+1
	jsr     _strerror
	jsr     pushax
	ldy     #$04
	jsr     _printf
;
; break;
;
	.dbg	line, "tinyshell.c", 425
	jmp     L0008
;
; if (readsz != cpbuf_sz)
;
	.dbg	line, "tinyshell.c", 427
L001C:	lda     (sp),y
	tax
	dey
	lda     (sp),y
	cpx     _cpbuf_sz+1
	bne     L0008
	cmp     _cpbuf_sz
	jeq     L0007
;
; free(buf);
;
	.dbg	line, "tinyshell.c", 431
L0008:	ldy     #$05
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     _free
;
; if (srcfd >= 0) close(srcfd);
;
	.dbg	line, "tinyshell.c", 432
	ldy     #$09
	lda     (sp),y
	bmi     L0016
	ldy     #$09
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     _close
;
; if (dstfd >= 0) close(dstfd);
;
	.dbg	line, "tinyshell.c", 433
L0016:	ldy     #$07
	lda     (sp),y
	bmi     L0017
	ldy     #$07
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     _close
;
; }
;
	.dbg	line, "tinyshell.c", 434
L0017:	ldy     #$0A
	jmp     addysp

	.dbg	line
.endproc

; ---------------------------------------------------------------
; void __near__ cmd_verbose (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_cmd_verbose: near

	.dbg	func, "cmd_verbose", "00", static, "_cmd_verbose"
	.dbg	sym, "verb", "00", auto, -4
	.dbg	sym, "endptr", "00", auto, -6

.segment	"CODE"

;
; if (!arg1 || arg2) {
;
	.dbg	line, "tinyshell.c", 448
	jsr     decsp6
	lda     _arg1
	ora     _arg1+1
	beq     L0003
	lda     _arg2
	ora     _arg2+1
	beq     L0002
;
; puts("usage: verbose <level>");
;
	.dbg	line, "tinyshell.c", 449
L0003:	lda     #<(S003C)
	ldx     #>(S003C)
	jsr     _puts
;
; return;
;
	.dbg	line, "tinyshell.c", 450
	jmp     incsp6
;
; verb = strtoul(arg1, &endptr, 10);
;
	.dbg	line, "tinyshell.c", 453
L0002:	jsr     decsp4
	lda     _arg1
	ldy     #$02
	sta     (sp),y
	iny
	lda     _arg1+1
	sta     (sp),y
	lda     sp
	ldx     sp+1
	clc
	adc     #$04
	bcc     L0005
	inx
L0005:	ldy     #$00
	sta     (sp),y
	iny
	txa
	sta     (sp),y
	ldx     #$00
	lda     #$0A
	jsr     _strtoul
	ldy     #$02
	jsr     steaxysp
;
; if (verb > 255 || *endptr) {
;
	.dbg	line, "tinyshell.c", 454
	ldy     #$05
	jsr     ldeaxysp
	cmp     #$00
	txa
	sbc     #$01
	lda     sreg
	sbc     #$00
	lda     sreg+1
	sbc     #$00
	bcs     L0009
	ldy     #$01
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	lda     (ptr1),y
	beq     L0006
;
; puts("invalid verbosity level");
;
	.dbg	line, "tinyshell.c", 455
L0009:	lda     #<(S003D)
	ldx     #>(S003D)
	jsr     _puts
;
; return;
;
	.dbg	line, "tinyshell.c", 456
	jmp     incsp6
;
; verbose = verb;
;
	.dbg	line, "tinyshell.c", 459
L0006:	ldy     #$02
	lda     (sp),y
	sta     _verbose
;
; printf("verbosity level set to %d\n", verbose);
;
	.dbg	line, "tinyshell.c", 460
	lda     #<(S003E)
	ldx     #>(S003E)
	jsr     pushax
	lda     _verbose
	jsr     pusha0
	ldy     #$04
	jsr     _printf
;
; }
;
	.dbg	line, "tinyshell.c", 461
	jmp     incsp6

	.dbg	line
.endproc

; ---------------------------------------------------------------
; void __near__ run_command (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_run_command: near

	.dbg	func, "run_command", "00", static, "_run_command"

.segment	"CODE"

;
; switch (cmd) {
;
	.dbg	line, "tinyshell.c", 465
	lda     _cmd
;
; }
;
	.dbg	line, "tinyshell.c", 486
	beq     L0003
	cmp     #$01
	beq     L0006
	cmp     #$02
	beq     L0007
	cmp     #$03
	beq     L000F
	cmp     #$04
	beq     L0009
	cmp     #$08
	beq     L000A
	cmp     #$09
	beq     L000C
	cmp     #$0A
	beq     L000D
	cmp     #$0D
	beq     L000E
	cmp     #$0E
	beq     L000B
;
; default: puts("internal error"); return;
;
	.dbg	line, "tinyshell.c", 466
	lda     #<(S003F)
	ldx     #>(S003F)
	jmp     _puts
;
; case CMD_INVALID: puts("invalid command"); return;
;
	.dbg	line, "tinyshell.c", 468
L0006:	lda     #<(S0040)
	ldx     #>(S0040)
	jmp     _puts
;
; case CMD_HELP: cmd_help(); return;
;
	.dbg	line, "tinyshell.c", 469
L0007:	jmp     _cmd_help
;
; case CMD_QUIT: terminate = 1; return;
;
	.dbg	line, "tinyshell.c", 470
L000F:	lda     #$01
	sta     _terminate
	rts
;
; case CMD_LS: cmd_ls(); return;
;
	.dbg	line, "tinyshell.c", 471
L0009:	jmp     _cmd_ls
;
; case CMD_RM: cmd_rm(); return;
;
	.dbg	line, "tinyshell.c", 472
L000A:	jmp     _cmd_rm
;
; case CMD_EXEC: cmd_exec(); return;
;
	.dbg	line, "tinyshell.c", 479
L000B:	jmp     _cmd_exec
;
; case CMD_RENAME: cmd_rename(); return;
;
	.dbg	line, "tinyshell.c", 480
L000C:	jmp     _cmd_rename
;
; case CMD_COPY: cmd_copy(); return;
;
	.dbg	line, "tinyshell.c", 481
L000D:	jmp     _cmd_copy
;
; case CMD_VERBOSE: cmd_verbose(); return;
;
	.dbg	line, "tinyshell.c", 485
L000E:	jmp     _cmd_verbose
;
; }
;
	.dbg	line, "tinyshell.c", 487
L0003:	rts

	.dbg	line
.endproc

; ---------------------------------------------------------------
; int __near__ main (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_main: near

	.dbg	func, "main", "00", extern, "_main"

.segment	"CODE"

;
; banner();
;
	.dbg	line, "tinyshell.c", 491
	jsr     _banner
;
; while (! terminate) {
;
	.dbg	line, "tinyshell.c", 493
	jmp     L0004
;
; get_command();
;
	.dbg	line, "tinyshell.c", 494
L0002:	jsr     _get_command
;
; run_command();
;
	.dbg	line, "tinyshell.c", 495
	jsr     _run_command
;
; while (! terminate) {
;
	.dbg	line, "tinyshell.c", 493
L0004:	lda     _terminate
	beq     L0002
;
; return 0;
;
	.dbg	line, "tinyshell.c", 497
	ldx     #$00
	txa
;
; }
;
	.dbg	line, "tinyshell.c", 498
	rts

	.dbg	line
.endproc

