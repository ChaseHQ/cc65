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
	.dbg		file, "gunzip65.c", 7071, 1657744212
	.dbg		file, "/cygdrive/c/Users/Craig Vella/Documents/GitHub/cc65/include/stdio.h", 6901, 1657744211
	.dbg		file, "/cygdrive/c/Users/Craig Vella/Documents/GitHub/cc65/include/string.h", 5442, 1657744211
	.dbg		file, "/cygdrive/c/Users/Craig Vella/Documents/GitHub/cc65/include/zlib.h", 7287, 1657744211
	.dbg		file, "/cygdrive/c/Users/Craig Vella/Documents/GitHub/cc65/include/stdlib.h", 6145, 1657744211
	.dbg		file, "/cygdrive/c/Users/Craig Vella/Documents/GitHub/cc65/include/cc65.h", 5230, 1657744211
	.forceimport	__STARTUP__
	.dbg		sym, "stdin", "00", extern, "_stdin"
	.dbg		sym, "fclose", "00", extern, "_fclose"
	.dbg		sym, "fgets", "00", extern, "_fgets"
	.dbg		sym, "fopen", "00", extern, "_fopen"
	.dbg		sym, "fread", "00", extern, "_fread"
	.dbg		sym, "fwrite", "00", extern, "_fwrite"
	.dbg		sym, "getchar", "00", extern, "_getchar"
	.dbg		sym, "puts", "00", extern, "_puts"
	.dbg		sym, "strlen", "00", extern, "_strlen"
	.dbg		sym, "memmove", "00", extern, "_memmove"
	.dbg		sym, "inflatemem", "00", extern, "_inflatemem"
	.dbg		sym, "crc32", "00", extern, "_crc32"
	.dbg		sym, "atexit", "00", extern, "_atexit"
	.dbg		sym, "doesclrscrafterexit", "00", extern, "_doesclrscrafterexit"
	.import		_stdin
	.import		_fclose
	.import		_fgets
	.import		_fopen
	.import		_fread
	.import		_fwrite
	.import		_getchar
	.import		_puts
	.import		_strlen
	.import		_memmove
	.import		_inflatemem
	.import		_crc32
	.import		_atexit
	.import		_doesclrscrafterexit
	.export		_uncompress_buffer
	.export		_get_fname
	.export		_main

.segment	"RODATA"

S0005:
	.byte	$D5,$4E,$43,$4F,$4D,$50,$52,$45,$53,$53,$45,$44,$20,$53,$49,$5A
	.byte	$45,$20,$44,$4F,$45,$53,$20,$4E,$4F,$54,$20,$4D,$41,$54,$43,$48
	.byte	$00
S000F:
	.byte	$C5,$52,$52,$4F,$52,$20,$57,$48,$49,$4C,$45,$20,$57,$52,$49,$54
	.byte	$49,$4E,$47,$20,$4F,$55,$54,$50,$55,$54,$20,$46,$49,$4C,$45,$00
S0002:
	.byte	$D5,$4E,$53,$55,$50,$50,$4F,$52,$54,$45,$44,$20,$43,$4F,$4D,$50
	.byte	$52,$45,$53,$53,$49,$4F,$4E,$20,$4D,$45,$54,$48,$4F,$44,$00
S0003:
	.byte	$D5,$4E,$43,$4F,$4D,$50,$52,$45,$53,$53,$45,$44,$20,$53,$49,$5A
	.byte	$45,$20,$54,$4F,$4F,$20,$42,$49,$47,$00
S000E:
	.byte	$C3,$41,$4E,$27,$54,$20,$43,$52,$45,$41,$54,$45,$20,$4F,$55,$54
	.byte	$50,$55,$54,$20,$46,$49,$4C,$45,$00
S000C:
	.byte	$D5,$4E,$43,$4F,$4D,$50,$52,$45,$53,$53,$45,$44,$20,$46,$49,$4C
	.byte	$45,$20,$4E,$41,$4D,$45,$3A,$00
S000A:
	.byte	$C3,$41,$4E,$27,$54,$20,$4F,$50,$45,$4E,$20,$C7,$DA,$C9,$D0,$20
	.byte	$46,$49,$4C,$45,$00
S0006:
	.byte	$C3,$41,$4C,$43,$55,$4C,$41,$54,$49,$4E,$47,$20,$C3,$D2,$C3,$2E
	.byte	$2E,$2E,$00
S000B:
	.byte	$C6,$49,$4C,$45,$20,$49,$53,$20,$54,$4F,$4F,$20,$4C,$4F,$4E,$47
	.byte	$00
S0008:
	.byte	$C7,$DA,$C9,$D0,$20,$46,$49,$4C,$45,$20,$4E,$41,$4D,$45,$3A,$00
S0001:
	.byte	$CE,$4F,$54,$20,$C7,$DA,$C9,$D0,$20,$46,$4F,$52,$4D,$41,$54,$00
S0004:
	.byte	$C9,$4E,$46,$4C,$41,$54,$49,$4E,$47,$2E,$2E,$2E,$00
S0007:
	.byte	$C3,$D2,$C3,$20,$4D,$49,$53,$4D,$41,$54,$43,$48,$00
S0010:
	.byte	$CF,$4B,$2E,$00
S000D:
	.byte	$57,$42,$00
S0009:
	.byte	$52,$42,$00

.segment	"BSS"

_buffer:
	.res	26000,$00

; ---------------------------------------------------------------
; unsigned int __near__ uncompress_buffer (unsigned int complen)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_uncompress_buffer: near

	.dbg	func, "uncompress_buffer", "00", extern, "_uncompress_buffer"
	.dbg	sym, "complen", "00", auto, 0
	.dbg	sym, "ptr", "00", auto, -2
	.dbg	sym, "crc", "00", auto, -6
	.dbg	sym, "unclen", "00", auto, -10
	.dbg	sym, "ptr2", "00", auto, -12
	.dbg	sym, "unclen2", "00", auto, -14

.segment	"CODE"

;
; {
;
	.dbg	line, "gunzip65.c", 101
	jsr     pushax
;
; if (buffer[0] != 0x1f || buffer[1] != 0x8b) {
;
	.dbg	line, "gunzip65.c", 109
	ldy     #$0E
	jsr     subysp
	lda     _buffer
	cmp     #$1F
	bne     L002B
	lda     _buffer+1
	cmp     #$8B
	beq     L002C
;
; puts("Not GZIP format");
;
	.dbg	line, "gunzip65.c", 110
L002B:	lda     #<(S0001)
	ldx     #>(S0001)
	jsr     _puts
;
; return 0;
;
	.dbg	line, "gunzip65.c", 111
	ldx     #$00
	txa
	jmp     L0001
;
; if (buffer[2] != 8) {
;
	.dbg	line, "gunzip65.c", 115
L002C:	lda     _buffer+2
	cmp     #$08
	beq     L0005
;
; puts("Unsupported compression method");
;
	.dbg	line, "gunzip65.c", 116
	lda     #<(S0002)
	ldx     #>(S0002)
	jsr     _puts
;
; return 0;
;
	.dbg	line, "gunzip65.c", 117
	ldx     #$00
	txa
	jmp     L0001
;
; crc = GET_LONG(buffer + complen - 8);
;
	.dbg	line, "gunzip65.c", 121
L0005:	ldy     #$0F
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	clc
	adc     #<(_buffer)
	tay
	txa
	adc     #>(_buffer)
	tax
	tya
	sec
	sbc     #$08
	bcs     L0006
	dex
L0006:	sta     ptr1
	stx     ptr1+1
	ldy     #$00
	lda     (ptr1),y
	sta     sreg
	ldy     #$0F
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	clc
	adc     #<(_buffer)
	tay
	txa
	adc     #>(_buffer)
	tax
	tya
	sec
	sbc     #$08
	bcs     L0007
	dex
L0007:	ldy     #$01
	sta     ptr1
	stx     ptr1+1
	lda     (ptr1),y
	tax
	clc
	lda     sreg
	bcc     L0024
	inx
L0024:	jsr     pushax
	ldy     #$11
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	clc
	adc     #<(_buffer)
	tay
	txa
	adc     #>(_buffer)
	tax
	tya
	sec
	sbc     #$08
	bcs     L0009
	dex
L0009:	ldy     #$02
	sta     ptr1
	stx     ptr1+1
	lda     (ptr1),y
	sta     sreg
	ldy     #$11
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	clc
	adc     #<(_buffer)
	tay
	txa
	adc     #>(_buffer)
	tax
	tya
	sec
	sbc     #$08
	bcs     L000B
	dex
L000B:	clc
	adc     #$02
	bcc     L000C
	inx
L000C:	ldy     #$01
	sta     ptr1
	stx     ptr1+1
	lda     (ptr1),y
	tax
	clc
	lda     sreg
	bcc     L0025
	inx
L0025:	stx     sreg+1
	sta     sreg
	lda     #$00
	tax
	jsr     tosulong
	jsr     tosaddeax
	ldy     #$08
	jsr     steaxysp
;
; unclen = GET_LONG(buffer + complen - 4);
;
	.dbg	line, "gunzip65.c", 124
	ldy     #$0F
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	clc
	adc     #<(_buffer)
	tay
	txa
	adc     #>(_buffer)
	tax
	tya
	sec
	sbc     #$04
	bcs     L000E
	dex
L000E:	sta     ptr1
	stx     ptr1+1
	ldy     #$00
	lda     (ptr1),y
	sta     sreg
	ldy     #$0F
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	clc
	adc     #<(_buffer)
	tay
	txa
	adc     #>(_buffer)
	tax
	tya
	sec
	sbc     #$04
	bcs     L000F
	dex
L000F:	ldy     #$01
	sta     ptr1
	stx     ptr1+1
	lda     (ptr1),y
	tax
	clc
	lda     sreg
	bcc     L0026
	inx
L0026:	jsr     pushax
	ldy     #$11
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	clc
	adc     #<(_buffer)
	tay
	txa
	adc     #>(_buffer)
	tax
	tya
	sec
	sbc     #$04
	bcs     L0011
	dex
L0011:	ldy     #$02
	sta     ptr1
	stx     ptr1+1
	lda     (ptr1),y
	sta     sreg
	ldy     #$11
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	clc
	adc     #<(_buffer)
	tay
	txa
	adc     #>(_buffer)
	tax
	tya
	sec
	sbc     #$04
	bcs     L0013
	dex
L0013:	clc
	adc     #$02
	bcc     L0014
	inx
L0014:	ldy     #$01
	sta     ptr1
	stx     ptr1+1
	lda     (ptr1),y
	tax
	clc
	lda     sreg
	bcc     L0027
	inx
L0027:	stx     sreg+1
	sta     sreg
	lda     #$00
	tax
	jsr     tosulong
	jsr     tosaddeax
	ldy     #$04
	jsr     steaxysp
;
; if (unclen > sizeof(buffer)) {
;
	.dbg	line, "gunzip65.c", 125
	ldy     #$07
	jsr     ldeaxysp
	cmp     #$91
	txa
	sbc     #$65
	lda     sreg
	sbc     #$00
	lda     sreg+1
	sbc     #$00
	bcc     L0016
;
; puts("Uncompressed size too big");
;
	.dbg	line, "gunzip65.c", 126
	lda     #<(S0003)
	ldx     #>(S0003)
	jsr     _puts
;
; return 0;
;
	.dbg	line, "gunzip65.c", 127
	ldx     #$00
	txa
	jmp     L0001
;
; ptr = buffer + 10;
;
	.dbg	line, "gunzip65.c", 131
L0016:	lda     #<(_buffer+10)
	ldx     #>(_buffer+10)
	ldy     #$0C
	jsr     staxysp
;
; if (buffer[3] & FEXTRA)
;
	.dbg	line, "gunzip65.c", 132
	lda     _buffer+3
	and     #$04
	beq     L002D
;
; ptr = buffer + 12 + GET_WORD(buffer + 10);
;
	.dbg	line, "gunzip65.c", 133
	ldx     _buffer+11
	clc
	lda     _buffer+10
	bcc     L002A
	inx
	clc
L002A:	adc     #<(_buffer+12)
	tay
	txa
	adc     #>(_buffer+12)
	tax
	tya
	ldy     #$0C
	jsr     staxysp
;
; if (buffer[3] & FNAME)
;
	.dbg	line, "gunzip65.c", 134
L002D:	lda     _buffer+3
	and     #$08
	beq     L002F
;
; while (*ptr++ != 0);
;
	.dbg	line, "gunzip65.c", 135
	ldy     #$0D
L002E:	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	ldy     #$00
	lda     (ptr1),y
	jsr     boolne
	php
	ldy     #$0C
	clc
	lda     #$01
	adc     (sp),y
	sta     (sp),y
	iny
	txa
	adc     (sp),y
	sta     (sp),y
	plp
	bne     L002E
;
; if (buffer[3] & FCOMMENT)
;
	.dbg	line, "gunzip65.c", 136
L002F:	lda     _buffer+3
	and     #$10
	beq     L0031
;
; while (*ptr++ != 0);
;
	.dbg	line, "gunzip65.c", 137
	ldy     #$0D
L0030:	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	ldy     #$00
	lda     (ptr1),y
	jsr     boolne
	php
	ldy     #$0C
	clc
	lda     #$01
	adc     (sp),y
	sta     (sp),y
	iny
	txa
	adc     (sp),y
	sta     (sp),y
	plp
	bne     L0030
;
; if (buffer[3] & FHCRC)
;
	.dbg	line, "gunzip65.c", 138
L0031:	lda     _buffer+3
	and     #$02
	beq     L0020
;
; ptr += 2;
;
	.dbg	line, "gunzip65.c", 139
	ldy     #$0C
	clc
	lda     #$02
	adc     (sp),y
	sta     (sp),y
	iny
	lda     #$00
	adc     (sp),y
	sta     (sp),y
;
; complen -= (ptr - buffer) + 8;
;
	.dbg	line, "gunzip65.c", 145
L0020:	ldy     #$0D
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	sec
	sbc     #<(_buffer)
	pha
	txa
	sbc     #>(_buffer)
	tax
	pla
	clc
	adc     #$08
	bcc     L0021
	inx
L0021:	ldy     #$0E
	jsr     subeqysp
;
; ptr2 = buffer + sizeof(buffer) - complen;
;
	.dbg	line, "gunzip65.c", 155
	lda     #<(_buffer+26000)
	sec
	ldy     #$0E
	sbc     (sp),y
	pha
	lda     #>(_buffer+26000)
	iny
	sbc     (sp),y
	tax
	pla
	ldy     #$02
	jsr     staxysp
;
; memmove(ptr2, ptr, complen);
;
	.dbg	line, "gunzip65.c", 157
	jsr     decsp4
	ldy     #$07
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	ldy     #$02
	sta     (sp),y
	iny
	txa
	sta     (sp),y
	ldy     #$11
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	ldy     #$00
	sta     (sp),y
	iny
	txa
	sta     (sp),y
	ldy     #$13
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     _memmove
;
; puts("Inflating...");
;
	.dbg	line, "gunzip65.c", 160
	lda     #<(S0004)
	ldx     #>(S0004)
	jsr     _puts
;
; unclen2 = inflatemem(buffer, ptr2);
;
	.dbg	line, "gunzip65.c", 161
	lda     #<(_buffer)
	ldx     #>(_buffer)
	jsr     pushax
	ldy     #$05
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     _inflatemem
	jsr     stax0sp
;
; if (unclen2 != (unsigned) unclen) {
;
	.dbg	line, "gunzip65.c", 164
	ldy     #$04
	cmp     (sp),y
	bne     L0032
	txa
	iny
	cmp     (sp),y
	beq     L0022
;
; puts("Uncompressed size does not match");
;
	.dbg	line, "gunzip65.c", 165
L0032:	lda     #<(S0005)
	ldx     #>(S0005)
	jsr     _puts
;
; return 0;
;
	.dbg	line, "gunzip65.c", 166
	ldx     #$00
	txa
	jmp     L0001
;
; puts("Calculating CRC...");
;
	.dbg	line, "gunzip65.c", 170
L0022:	lda     #<(S0006)
	ldx     #>(S0006)
	jsr     _puts
;
; if (crc32(crc32(0L, Z_NULL, 0), buffer, unclen2) != crc) {
;
	.dbg	line, "gunzip65.c", 171
	ldy     #$0C
	jsr     subysp
	ldx     #$00
	ldy     #$02
	txa
	sta     (sp),y
	iny
	sta     (sp),y
	iny
	sta     (sp),y
	iny
	sta     (sp),y
	tay
	sta     (sp),y
	iny
	sta     (sp),y
	jsr     _crc32
	ldy     #$02
	jsr     steaxysp
	lda     #<(_buffer)
	ldy     #$00
	sta     (sp),y
	iny
	lda     #>(_buffer)
	sta     (sp),y
	ldy     #$07
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     _crc32
	jsr     pusheax
	ldy     #$0F
	jsr     ldeaxysp
	jsr     tosneeax
	beq     L0023
;
; puts("CRC mismatch");
;
	.dbg	line, "gunzip65.c", 172
	lda     #<(S0007)
	ldx     #>(S0007)
	jsr     _puts
;
; return 0;
;
	.dbg	line, "gunzip65.c", 173
	ldx     #$00
	txa
	jmp     L0001
;
; return unclen2;
;
	.dbg	line, "gunzip65.c", 177
L0023:	ldy     #$01
	lda     (sp),y
	tax
	dey
	lda     (sp),y
;
; }
;
	.dbg	line, "gunzip65.c", 178
L0001:	ldy     #$10
	jmp     addysp

	.dbg	line
.endproc

; ---------------------------------------------------------------
; char *__near__ get_fname (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_get_fname: near

	.dbg	func, "get_fname", "00", extern, "_get_fname"
	.dbg	sym, "len", "00", auto, -2

.segment	"CODE"

;
; fgets(filename, sizeof(filename), stdin);
;
	.dbg	line, "gunzip65.c", 187
	jsr     decsp6
	lda     #<(M0001)
	ldy     #$02
	sta     (sp),y
	iny
	lda     #>(M0001)
	sta     (sp),y
	lda     #$64
	ldy     #$00
	sta     (sp),y
	iny
	lda     #$00
	sta     (sp),y
	lda     _stdin
	ldx     _stdin+1
	jsr     _fgets
;
; len = strlen(filename);
;
	.dbg	line, "gunzip65.c", 188
	ldy     #$FF
L0002:	iny
	ldx     M0001,y
	bne     L0002
	tya
	jsr     stax0sp
;
; if (len >= 1 && filename[len - 1] == '\n')
;
	.dbg	line, "gunzip65.c", 189
	cmp     #$00
	beq     L0003
	ldy     #$01
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	sec
	sbc     #$01
	bcs     L0006
	dex
L0006:	sta     ptr1
	txa
	clc
	adc     #>(M0001)
	sta     ptr1+1
	ldy     #<(M0001)
	lda     (ptr1),y
	cmp     #$0D
	bne     L0003
;
; filename[len - 1] = '\0';
;
	.dbg	line, "gunzip65.c", 190
	ldy     #$01
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	sec
	sbc     #$01
	bcs     L0009
	dex
L0009:	clc
	adc     #<(M0001)
	sta     ptr1
	txa
	adc     #>(M0001)
	sta     ptr1+1
	tya
	sta     (ptr1),y
;
; return filename;
;
	.dbg	line, "gunzip65.c", 191
L0003:	lda     #<(M0001)
	ldx     #>(M0001)
;
; }
;
	.dbg	line, "gunzip65.c", 192
	jmp     incsp2

	.dbg	line
.segment	"BSS"

M0001:
	.res	100,$00

.endproc

; ---------------------------------------------------------------
; int __near__ main (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_main: near

	.dbg	func, "main", "00", extern, "_main"
	.dbg	sym, "fp", "00", auto, -2
	.dbg	sym, "length", "00", auto, -4

.segment	"CODE"

;
; if (doesclrscrafterexit()) {
;
	.dbg	line, "gunzip65.c", 201
	jsr     decsp4
	jsr     _doesclrscrafterexit
	tax
	beq     L0002
;
; atexit((void (*)) getchar);
;
	.dbg	line, "gunzip65.c", 202
	lda     #<(_getchar)
	ldx     #>(_getchar)
	jsr     _atexit
;
; puts("GZIP file name:");
;
	.dbg	line, "gunzip65.c", 207
L0002:	lda     #<(S0008)
	ldx     #>(S0008)
	jsr     _puts
;
; fp = fopen(get_fname(), "rb");
;
	.dbg	line, "gunzip65.c", 208
	jsr     _get_fname
	jsr     pushax
	lda     #<(S0009)
	ldx     #>(S0009)
	jsr     _fopen
	ldy     #$02
	jsr     staxysp
;
; if (!fp) {
;
	.dbg	line, "gunzip65.c", 209
	ldy     #$03
	lda     (sp),y
	dey
	ora     (sp),y
	bne     L0003
;
; puts("Can't open GZIP file");
;
	.dbg	line, "gunzip65.c", 210
	lda     #<(S000A)
	ldx     #>(S000A)
	jsr     _puts
;
; return 1;
;
	.dbg	line, "gunzip65.c", 211
	ldx     #$00
	lda     #$01
	jmp     incsp4
;
; length = fread(buffer, 1, sizeof(buffer), fp);
;
	.dbg	line, "gunzip65.c", 213
L0003:	jsr     decsp6
	lda     #<(_buffer)
	ldy     #$04
	sta     (sp),y
	iny
	lda     #>(_buffer)
	sta     (sp),y
	lda     #$01
	ldy     #$02
	sta     (sp),y
	iny
	lda     #$00
	sta     (sp),y
	lda     #$90
	ldy     #$00
	sta     (sp),y
	iny
	lda     #$65
	sta     (sp),y
	ldy     #$09
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     _fread
	jsr     stax0sp
;
; fclose(fp);
;
	.dbg	line, "gunzip65.c", 214
	ldy     #$03
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     _fclose
;
; if (length == sizeof(buffer)) {
;
	.dbg	line, "gunzip65.c", 215
	ldy     #$01
	lda     (sp),y
	cmp     #$65
	bne     L000C
	dey
	lda     (sp),y
	cmp     #$90
	bne     L0004
;
; puts("File is too long");
;
	.dbg	line, "gunzip65.c", 216
	lda     #<(S000B)
	ldx     #>(S000B)
	jsr     _puts
;
; return 1;
;
	.dbg	line, "gunzip65.c", 217
	ldx     #$00
	lda     #$01
	jmp     incsp4
;
; length = uncompress_buffer(length);
;
	.dbg	line, "gunzip65.c", 221
L0004:	iny
L000C:	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     _uncompress_buffer
	jsr     stax0sp
;
; if (length == 0)
;
	.dbg	line, "gunzip65.c", 222
	cpx     #$00
	bne     L0006
	cmp     #$00
	bne     L0006
;
; return 1;
;
	.dbg	line, "gunzip65.c", 223
	lda     #$01
	jmp     incsp4
;
; puts("Uncompressed file name:");
;
	.dbg	line, "gunzip65.c", 226
L0006:	lda     #<(S000C)
	ldx     #>(S000C)
	jsr     _puts
;
; fp = fopen(get_fname(), "wb");
;
	.dbg	line, "gunzip65.c", 227
	jsr     _get_fname
	jsr     pushax
	lda     #<(S000D)
	ldx     #>(S000D)
	jsr     _fopen
	ldy     #$02
	jsr     staxysp
;
; if (!fp) {
;
	.dbg	line, "gunzip65.c", 228
	ldy     #$03
	lda     (sp),y
	dey
	ora     (sp),y
	bne     L0008
;
; puts("Can't create output file");
;
	.dbg	line, "gunzip65.c", 229
	lda     #<(S000E)
	ldx     #>(S000E)
	jsr     _puts
;
; return 1;
;
	.dbg	line, "gunzip65.c", 230
	ldx     #$00
	lda     #$01
	jmp     incsp4
;
; if (fwrite(buffer, 1, length, fp) != length) {
;
	.dbg	line, "gunzip65.c", 232
L0008:	jsr     decsp6
	lda     #<(_buffer)
	ldy     #$04
	sta     (sp),y
	iny
	lda     #>(_buffer)
	sta     (sp),y
	lda     #$01
	ldy     #$02
	sta     (sp),y
	iny
	lda     #$00
	sta     (sp),y
	ldy     #$07
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	ldy     #$00
	sta     (sp),y
	iny
	txa
	sta     (sp),y
	ldy     #$09
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     _fwrite
	ldy     #$00
	cmp     (sp),y
	bne     L000B
	txa
	iny
	cmp     (sp),y
	beq     L0009
;
; puts("Error while writing output file");
;
	.dbg	line, "gunzip65.c", 233
L000B:	lda     #<(S000F)
	ldx     #>(S000F)
	jsr     _puts
;
; return 1;
;
	.dbg	line, "gunzip65.c", 234
	ldx     #$00
	lda     #$01
	jmp     incsp4
;
; fclose(fp);
;
	.dbg	line, "gunzip65.c", 236
L0009:	ldy     #$03
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     _fclose
;
; puts("Ok.");
;
	.dbg	line, "gunzip65.c", 238
	lda     #<(S0010)
	ldx     #>(S0010)
	jsr     _puts
;
; return 0;
;
	.dbg	line, "gunzip65.c", 239
	ldx     #$00
	txa
;
; }
;
	.dbg	line, "gunzip65.c", 240
	jmp     incsp4

	.dbg	line
.endproc

