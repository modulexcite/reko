;;; Segment Image base (0800:0000)

fn0800_0000()
	mov	dx,09DB
	mov	cs:[01F8],dx
	mov	ah,30
	int	21
	mov	bp,[0002]
	mov	bx,[002C]
	mov	ds,dx
	mov	[0092],ax
	mov	[0090],es
	mov	[008C],bx
	mov	[00AC],bp
	mov	word ptr [0096],FFFF
	call	0162
	les	di,[008A]
	mov	ax,di
	mov	bx,ax
	mov	cx,7FFF

l0800_0039:
	cmp	word ptr es:[di],3738
	jnz	0059

l0800_0040:
	mov	dx,es:[di+02]
	cmp	dl,3D
	jnz	0059

l0800_0049:
	and	dh,DF
	inc	word ptr [0096]
	cmp	dh,59
	jnz	0059

l0800_0055:
	inc	word ptr [0096]

l0800_0059:
	repne	
	scasb	

l0800_005B:
	jcxz	00BE

l0800_005D:
	inc	bx
	cmp	es:[di],al
	jnz	0039

l0800_0063:
	or	ch,80
	neg	cx
	mov	[008A],cx
	mov	cx,0001
	shl	bx,cl
	add	bx,08
	and	bx,F8
	mov	[008E],bx
	mov	dx,ds
	sub	bp,dx
	mov	di,[023C]
	cmp	di,0200
	jnc	0090

l0800_0089:
	mov	di,0200
	mov	[023C],di

l0800_0090:
	add	di,062E
	jc	00BE

l0800_0096:
	add	di,[023A]
	jc	00BE

l0800_009C:
	mov	cl,04
	shr	di,cl
	inc	di
	cmp	bp,di
	jc	00BE

l0800_00A5:
	cmp	word ptr [023C],00
	jz	00B3

l0800_00AC:
	cmp	word ptr [023A],00
	jnz	00C1

l0800_00B3:
	mov	di,1000
	cmp	bp,di
	ja	00C1

l0800_00BA:
	mov	di,bp
	jmp	00C1

l0800_00BE:
	jmp	01E2

l0800_00C1:
	mov	bx,di
	add	bx,dx
	mov	[00A4],bx
	mov	[00A8],bx
	mov	ax,[0090]
	sub	bx,ax
	mov	es,ax
	mov	ah,4A
	push	di
	int	21
	pop	di
	shl	di,cl
	cli	
	mov	ss,dx
	mov	sp,di
	sti	
	xor	ax,ax
	mov	es,cs:[01F8]
	mov	di,05E8
	mov	cx,062E
	sub	cx,di

l0800_00F1:
	rep	
	stosb	

l0800_00F3:
	push	cs
	call	word ptr [05DA]
	call	0336
	call	0421
	mov	ah,00
	int	1A
	mov	[0098],dx
	mov	[009A],cx
	call	word ptr [05DE]
	push	word ptr [0088]
	push	word ptr [0086]
	push	word ptr [0084]
	call	0265
	push	ax
	call	0301

fn0800_0121()
	mov	ds,cs:[01F8]
	call	01A5
	push	cs
	call	word ptr [05DC]
	xor	ax,ax
	mov	si,ax
	mov	cx,002F
	nop	
	cld	

l0800_0137:
	add	al,[si]
	adc	ah,00
	inc	si
	loop	0137

l0800_013F:
	sub	ax,0D37
	nop	
	jz	014F

l0800_0145:
	mov	cx,0019
	nop	
	mov	dx,002F
	call	01DA

l0800_014F:
	mov	bp,sp
	mov	ah,4C
	mov	al,[bp+02]
	int	21
0800:0158                         B9 0E 00 90 BA 48 00 E9         .....H..
0800:0160 87 00                                           ..             

fn0800_0162()
	push	ds
	mov	ax,3500
	int	21
	mov	[0074],bx
	mov	[0076],es
	mov	ax,3504
	int	21
	mov	[0078],bx
	mov	[007A],es
	mov	ax,3505
	int	21
	mov	[007C],bx
	mov	[007E],es
	mov	ax,3506
	int	21
	mov	[0080],bx
	mov	[0082],es
	mov	ax,2500
	mov	dx,cs
	mov	ds,dx
	mov	dx,0158
	int	21
	pop	ds
	ret	

fn0800_01A5()
	push	ds
	mov	ax,2500
	lds	dx,[0074]
	int	21
	pop	ds
	push	ds
	mov	ax,2504
	lds	dx,[0078]
	int	21
	pop	ds
	push	ds
	mov	ax,2505
	lds	dx,[007C]
	int	21
	pop	ds
	push	ds
	mov	ax,2506
	lds	dx,[0080]
	int	21
	pop	ds
	ret	
0800:01D2       C7 06 96 00 00 00 CB C3                     ........     

fn0800_01DA()
	mov	ah,40
	mov	bx,0002
	int	21
	ret	

l0800_01E2:
	mov	cx,001E
	nop	
	mov	dx,0056
	mov	ds,cs:[01F8]
	call	01DA
	mov	ax,0003
	push	ax
	call	0121
	add	[bx+si],al

fn0800_01FA()
	push	bp
	mov	bp,sp
	pop	bp
	ret	

fn0800_01FF()
	push	bp
	mov	bp,sp
	call	01FA
	call	01FA
	call	01FA
	call	01FA
	call	01FA
	call	01FA
	call	01FA
	call	01FA
	call	01FA
	call	01FA
	pop	bp
	ret	

fn0800_0222()
	push	bp
	mov	bp,sp
	call	01FF
	call	01FF
	call	01FF
	call	01FF
	call	01FF
	call	01FF
	call	01FF
	call	01FF
	call	01FF
	call	01FF
	pop	bp
	ret	

fn0800_0245()
	push	bp
	mov	bp,sp
	call	0222
	call	0222
	call	0222
	call	0222
	call	0222
	call	0222
	call	0222
	call	0222
	call	0222
	pop	bp
	ret	

fn0800_0265()
	push	bp
	mov	bp,sp
	sub	sp,08
	mov	ax,0194
	push	ax
	call	0E4B
	pop	cx
	lea	ax,[bp-04]
	push	ax
	mov	ax,01B0
	push	ax
	call	16D4
	pop	cx
	pop	cx
	push	word ptr [bp-02]
	push	word ptr [bp-04]
	mov	ax,01B4
	push	ax
	call	0E4B
	add	sp,06
	mov	word ptr [bp-06],0000
	mov	word ptr [bp-08],0001
	jmp	02A7

l0800_029C:
	call	0245
	add	word ptr [bp-08],01
	adc	word ptr [bp-06],00

l0800_02A7:
	mov	dx,[bp-06]
	mov	ax,[bp-08]
	cmp	dx,[bp-02]
	jl	029C

l0800_02B2:
	jg	02B9

l0800_02B4:
	cmp	ax,[bp-04]
	jbe	029C

l0800_02B9:
	mov	ax,01CE
	push	ax
	call	0E4B
	pop	cx
	mov	sp,bp
	pop	bp
	ret	
0800:02C5                55 8B EC 56 8B 76 04 0B F6 7C 14      U..V.v...|.
0800:02D0 83 FE 58 76 03 BE 57 00 89 36 D8 01 8A 84 DA 01 ..Xv..W..6......
0800:02E0 98 96 EB 0D F7 DE 83 FE 23 77 EA C7 06 D8 01 FF ........#w......
0800:02F0 FF 8B C6 A3 94 00 B8 FF FF EB 00 5E 5D C2 02 00 ...........^]...
0800:0300 C3                                              .              

fn0800_0301()
	push	bp
	mov	bp,sp
	jmp	0310

l0800_0306:
	mov	bx,[023E]
	shl	bx,01
	call	word ptr [bx+05E8]

l0800_0310:
	mov	ax,[023E]
	dec	word ptr [023E]
	or	ax,ax
	jnz	0306

l0800_031B:
	call	word ptr [0234]
	call	word ptr [0236]
	call	word ptr [0238]
	push	word ptr [bp+04]
	call	0121
	pop	cx
	pop	bp
	ret	
0800:0330 00 00 00 00 00 00                               ......         

fn0800_0336()
	pop	word ptr cs:[0330]
	mov	cs:[0332],ds
	cld	
	mov	es,[0090]
	mov	si,0080
	xor	ah,ah
	lodsb	
	inc	ax
	mov	bp,es
	xchg	si,dx
	xchg	ax,bx
	mov	si,[008A]
	add	si,02
	mov	cx,0001
	cmp	byte ptr [0092],03
	jc	0374

l0800_0363:
	mov	es,[008C]
	mov	di,si
	mov	cl,7F
	xor	al,al

l0800_036D:
	repne	
	scasb	

l0800_036F:
	jcxz	03E7

l0800_0371:
	xor	cl,7F

l0800_0374:
	sub	sp,02
	mov	ax,0001
	add	ax,bx
	add	ax,cx
	and	ax,FFFE
	mov	di,sp
	sub	di,ax
	jc	03E7

l0800_0387:
	mov	sp,di
	mov	ax,es
	mov	ds,ax
	mov	ax,ss
	mov	es,ax
	push	cx
	dec	cx

l0800_0393:
	rep	
	movsb	

l0800_0395:
	xor	al,al
	stosb	
	mov	ds,bp
	xchg	dx,si
	xchg	cx,bx
	mov	ax,bx
	mov	dx,ax
	inc	bx

l0800_03A3:
	call	03BF
	ja	03AF

l0800_03A8:
	jc	03EA

l0800_03AA:
	call	03BF
	ja	03A8

l0800_03AF:
	cmp	al,20
	jz	03BB

l0800_03B3:
	cmp	al,0D
	jz	03BB

l0800_03B7:
	cmp	al,09
	jnz	03A3

l0800_03BB:
	xor	al,al
	jmp	03A3

fn0800_03BF()
	or	ax,ax
	jz	03CA

l0800_03C3:
	inc	dx
	stosb	
	or	al,al
	jnz	03CA

l0800_03C9:
	inc	bx

l0800_03CA:
	xchg	al,ah
	xor	al,al
	stc	
	jcxz	03E6

l0800_03D1:
	lodsb	
	dec	cx
	sub	al,22
	jz	03E6

l0800_03D7:
	add	al,22
	cmp	al,5C
	jnz	03E4

l0800_03DD:
	cmp	byte ptr [si],22
	jnz	03E4

l0800_03E2:
	lodsb	
	dec	cx

l0800_03E4:
	or	si,si

l0800_03E6:
	ret	

l0800_03E7:
	jmp	01E2

l0800_03EA:
	pop	cx
	add	cx,dx
	mov	ds,cs:[0332]
	mov	[0084],bx
	inc	bx
	add	bx,bx
	mov	si,sp
	mov	bp,sp
	sub	bp,bx
	jc	03E7

l0800_0401:
	mov	sp,bp
	mov	[0086],bp

l0800_0407:
	jcxz	0417

l0800_0409:
	mov	[bp+00],si
	add	bp,02

l0800_040F:
	lodsb	
	or	al,al
	loopne	040F

l0800_0415:
	jz	0407

l0800_0417:
	xor	ax,ax
	mov	[bp+00],ax
	jmp	word ptr cs:[0330]

fn0800_0421()
	mov	cx,[008A]
	push	cx
	call	0570
	pop	cx
	mov	di,ax
	or	ax,ax
	jz	0454

l0800_0430:
	push	ds
	push	ds
	pop	es
	mov	ds,[008C]
	xor	si,si
	cld	

l0800_043A:
	rep	
	movsb	

l0800_043C:
	pop	ds
	mov	di,ax
	push	es
	push	word ptr [008E]
	call	0570
	add	sp,02
	mov	bx,ax
	pop	es
	mov	[0088],ax
	or	ax,ax
	jnz	0457

l0800_0454:
	jmp	01E2

l0800_0457:
	xor	ax,ax
	mov	cx,FFFF

l0800_045C:
	mov	[bx],di
	add	bx,02

l0800_0461:
	repne	
	scasb	

l0800_0463:
	cmp	es:[di],al
	jnz	045C

l0800_0468:
	mov	[bx],ax
	ret	
0800:046B                                  55 8B EC 83 3E            U...>
0800:0470 3E 02 20 75 05 B8 01 00 EB 15 8B 46 04 8B 1E 3E >. u.......F...>
0800:0480 02 D1 E3 89 87 E8 05 FF 06 3E 02 33 C0 EB 00 5D .........>.3...]
0800:0490 C3                                              .              

fn0800_0491()
	push	bp
	mov	bp,sp
	push	si
	push	di
	mov	di,[bp+04]
	mov	ax,[di+06]
	mov	[062A],ax
	cmp	ax,di
	jnz	04AB

l0800_04A3:
	mov	word ptr [062A],0000
	jmp	04BB

l0800_04AB:
	mov	si,[di+04]
	mov	bx,[062A]
	mov	[bx+04],si
	mov	ax,[062A]
	mov	[si+06],ax

l0800_04BB:
	pop	di
	pop	si
	pop	bp
	ret	

fn0800_04BF()
	push	bp
	mov	bp,sp
	push	si
	push	di
	mov	di,[bp+04]
	mov	ax,[bp+06]
	sub	[di],ax
	mov	si,[di]
	add	si,di
	mov	ax,[bp+06]
	inc	ax
	mov	[si],ax
	mov	[si+02],di
	mov	ax,[0628]
	cmp	ax,di
	jnz	04E6

l0800_04E0:
	mov	[0628],si
	jmp	04EE

l0800_04E6:
	mov	di,si
	add	di,[bp+06]
	mov	[di+02],si

l0800_04EE:
	mov	ax,si
	add	ax,0004
	jmp	04F5

l0800_04F5:
	pop	di
	pop	si
	pop	bp
	ret	

fn0800_04F9()
	push	bp
	mov	bp,sp
	push	si
	mov	ax,[bp+04]
	xor	dx,dx
	and	ax,FFFF
	and	dx,0000
	push	dx
	push	ax
	call	0607
	pop	cx
	pop	cx
	mov	si,ax
	cmp	si,FF
	jnz	051B

l0800_0517:
	xor	ax,ax
	jmp	0533

l0800_051B:
	mov	ax,[0628]
	mov	[si+02],ax
	mov	ax,[bp+04]
	inc	ax
	mov	[si],ax
	mov	[0628],si
	mov	ax,[0628]
	add	ax,0004
	jmp	0533

l0800_0533:
	pop	si
	pop	bp
	ret	

fn0800_0536()
	push	bp
	mov	bp,sp
	push	si
	mov	ax,[bp+04]
	xor	dx,dx
	and	ax,FFFF
	and	dx,0000
	push	dx
	push	ax
	call	0607
	pop	cx
	pop	cx
	mov	si,ax
	cmp	si,FF
	jnz	0558

l0800_0554:
	xor	ax,ax
	jmp	056D

l0800_0558:
	mov	[062C],si
	mov	[0628],si
	mov	ax,[bp+04]
	inc	ax
	mov	[si],ax
	mov	ax,si
	add	ax,0004
	jmp	056D

l0800_056D:
	pop	si
	pop	bp
	ret	

fn0800_0570()
	push	bp
	mov	bp,sp
	push	si
	push	di
	mov	di,[bp+04]
	or	di,di
	jz	0581

l0800_057C:
	cmp	di,F4
	jbe	0585

l0800_0581:
	xor	ax,ax
	jmp	05DF

l0800_0585:
	mov	ax,di
	add	ax,000B
	and	ax,FFF8
	mov	di,ax
	cmp	word ptr [062C],00
	jnz	059D

l0800_0596:
	push	di
	call	0536
	pop	cx
	jmp	05DF

l0800_059D:
	mov	si,[062A]
	mov	ax,si
	or	ax,ax
	jz	05D8

l0800_05A7:
	mov	ax,[si]
	mov	dx,di
	add	dx,28
	cmp	ax,dx
	jc	05BB

l0800_05B2:
	push	di
	push	si
	call	04BF
	pop	cx
	pop	cx
	jmp	05DF

l0800_05BB:
	mov	ax,[si]
	cmp	ax,di
	jc	05CF

l0800_05C1:
	push	si
	call	0491
	pop	cx
	inc	word ptr [si]
	mov	ax,si
	add	ax,0004
	jmp	05DF

l0800_05CF:
	mov	si,[si+06]
	cmp	si,[062A]
	jnz	05A7

l0800_05D8:
	push	di
	call	04F9
	pop	cx
	jmp	05DF

l0800_05DF:
	pop	di
	pop	si
	pop	bp
	ret	
0800:05E3          55 8B EC 8B 46 04 8B D4 81 EA 00 01 3B    U...F.......;
0800:05F0 C2 73 07 A3 9E 00 33 C0 EB 0B C7 06 94 00 08 00 .s....3.........
0800:0600 B8 FF FF EB 00 5D C3                            .....].        

fn0800_0607()
	push	bp
	mov	bp,sp
	mov	ax,[bp+04]
	mov	dx,[bp+06]
	add	ax,[009E]
	adc	dx,00
	mov	cx,ax
	add	cx,0100
	adc	dx,00
	or	dx,dx
	jnz	062E

l0800_0624:
	cmp	cx,sp
	jnc	062E

l0800_0628:
	xchg	[009E],ax
	jmp	0639

l0800_062E:
	mov	word ptr [0094],0008
	mov	ax,FFFF
	jmp	0639

l0800_0639:
	pop	bp
	ret	
0800:063B                                  55 8B EC FF 76            U...v
0800:0640 04 E8 9F FF 59 EB 00 5D C3 55 8B EC 8B 46 04 99 ....Y..].U...F..
0800:0650 52 50 E8 B2 FF 8B E5 EB 00 5D C3 55 8B EC 83 EC RP.......].U....
0800:0660 02 56 57 8B 5E 04 8B 37 8B C6 89 46 FE 8B 5E 04 .VW.^..7...F..^.
0800:0670 F7 47 02 40 00 74 04 8B C6 EB 1F 8B 5E 04 8B 7F .G.@.t......^...
0800:0680 0A EB 0B 8B DF 47 80 3F 0A 75 03 FF 46 FE 8B C6 .....G.?.u..F...
0800:0690 4E 0B C0 75 EE 8B 46 FE EB 00 5F 5E 8B E5 5D C2 N..u..F..._^..].
0800:06A0 02 00 55 8B EC 56 8B 76 04 56 E8 20 07 59 0B C0 ..U..V.v.V. .Y..
0800:06B0 74 05 B8 FF FF EB 4C 83 7E 0A 01 75 10 83 3C 00 t.....L.~..u..<.
0800:06C0 7E 0B 56 E8 95 FF 99 29 46 06 19 56 08 81 64 02 ~.V....)F..V..d.
0800:06D0 5F FE C7 04 00 00 8B 44 08 89 44 0A FF 76 0A FF _......D..D..v..
0800:06E0 76 08 FF 76 06 8A 44 04 98 50 E8 3B 05 83 C4 08 v..v..D..P.;....
0800:06F0 83 FA FF 75 0A 3D FF FF 75 05 B8 FF FF EB 02 33 ...u.=..u......3
0800:0700 C0 EB 00 5E 5D C3 55 8B EC 83 EC 04 56 8B 76 04 ...^].U.....V.v.
0800:0710 56 E8 B9 06 59 0B C0 74 08 BA FF FF B8 FF FF EB V...Y..t........
0800:0720 35 8A 44 04 98 50 E8 25 16 59 89 56 FE 89 46 FC 5.D..P.%.Y.V..F.
0800:0730 83 3C 00 7E 19 8B 56 FE 8B 46 FC 52 50 56 E8 1A .<.~..V..F.RPV..
0800:0740 FF 99 8B D8 8B CA 58 5A 2B C3 1B D1 EB 06 8B 56 ......XZ+......V
0800:0750 FE 8B 46 FC EB 00 5E 8B E5 5D C3 56 57 BF 14 00 ..F...^..].VW...
0800:0760 BE 42 03 EB 13 8B 44 02 25 00 03 3D 00 03 75 05 .B....D.%..=..u.
0800:0770 56 E8 59 06 59 83 C6 10 8B C7 4F 0B C0 75 E6 5F V.Y.Y.....O..u._
0800:0780 5E C3 55 8B EC 56 8B 76 04 F7 44 02 00 02 74 03 ^.U..V.v..D...t.
0800:0790 E8 C8 FF FF 74 06 8B 44 08 89 44 0A 50 8A 44 04 ....t..D..D.P.D.
0800:07A0 98 50 E8 52 02 83 C4 06 89 04 0B C0 7E 0B 81 64 .P.R........~..d
0800:07B0 02 DF FF 33 C0 EB 23 EB 1C 83 3C 00 75 0E 8B 44 ...3..#...<.u..D
0800:07C0 02 25 7F FE 0D 20 00 89 44 02 EB 09 C7 04 00 00 .%... ..D.......
0800:07D0 81 4C 02 10 00 B8 FF FF EB 00 5E 5D C2 02 00 55 .L........^]...U
0800:07E0 8B EC 56 8B 76 04 FF 04 56 E8 06 00 59 EB 00 5E ..V.v...V...Y..^
0800:07F0 5D C3 55 8B EC 83 EC 02 56 8B 76 04 FF 0C 7C 0E ].U.....V.v...|.
0800:0800 FF 44 0A 8B 5C 0A 8A 47 FF B4 00 E9 D4 00 FF 04 .D..\..G........
0800:0810 7C 07 F7 44 02 10 01 74 0B 81 4C 02 10 00 B8 FF |..D...t..L.....
0800:0820 FF E9 BE 00 81 4C 02 80 00 83 7C 06 00 74 13 56 .....L....|..t.V
0800:0830 E8 4F FF 0B C0 74 06 B8 FF FF E9 A5 00 EB BD E9 .O...t..........
0800:0840 A0 00 83 3E AA 04 00 75 38 B8 42 03 3B C6 75 31 ...>...u8.B.;.u1
0800:0850 8A 44 04 98 50 E8 9A 00 59 0B C0 75 05 81 64 02 .D..P...Y..u..d.
0800:0860 FF FD B8 00 02 50 F7 44 02 00 02 74 05 B8 01 00 .....P.D...t....
0800:0870 EB 02 33 C0 50 33 C0 50 56 E8 88 00 83 C4 08 EB ..3.P3.PV.......
0800:0880 A3 F7 44 02 00 02 74 03 E8 D0 FE B8 01 00 50 8D ..D...t.......P.
0800:0890 46 FF 50 8A 44 04 98 50 E8 18 02 83 C4 06 3D 01 F.P.D..P......=.
0800:08A0 00 74 26 8A 44 04 98 50 E8 B4 04 59 3D 01 00 74 .t&.D..P...Y=..t
0800:08B0 07 81 4C 02 10 00 EB 0C 8B 44 02 25 7F FE 0D 20 ..L......D.%... 
0800:08C0 00 89 44 02 B8 FF FF EB 19 80 7E FF 0D 75 07 F7 ..D.......~..u..
0800:08D0 44 02 40 00 74 AB 81 64 02 DF FF 8A 46 FF B4 00 D.@.t..d....F...
0800:08E0 EB 00 5E 8B E5 5D C3 B8 42 03 50 E8 04 FF 59 EB ..^..]..B.P...Y.
0800:08F0 00 C3 55 8B EC B8 00 44 8B 5E 04 CD 21 8B C2 25 ..U....D.^..!..%
0800:0900 80 00 5D C3 55 8B EC 56 57 8B 7E 0A 8B 76 04 8B ..].U..VW.~..v..
0800:0910 44 0E 3B C6 75 0C 83 7E 08 02 7F 06 81 FF FF 7F D.;.u..~........
0800:0920 76 06 B8 FF FF E9 AA 00 83 3E AC 04 00 75 0F B8 v........>...u..
0800:0930 52 03 3B C6 75 08 C7 06 AC 04 01 00 EB 14 83 3E R.;.u..........>
0800:0940 AA 04 00 75 0D B8 42 03 3B C6 75 06 C7 06 AA 04 ...u..B.;.u.....
0800:0950 01 00 83 3C 00 74 0F B8 01 00 50 33 C0 50 50 56 ...<.t....P3.PPV
0800:0960 E8 3F FD 83 C4 08 F7 44 02 04 00 74 07 FF 74 08 .?.....D...t..t.
0800:0970 E8 3A 0D 59 81 64 02 F3 FF C7 44 06 00 00 8B C6 .:.Y.d....D.....
0800:0980 05 05 00 89 44 08 89 44 0A 83 7E 08 02 74 3F 0B ....D..D..~..t?.
0800:0990 FF 76 3B C7 06 34 02 D6 09 83 7E 06 00 75 18 57 .v;..4....~..u.W
0800:09A0 E8 CD FB 59 89 46 06 0B C0 74 07 81 4C 02 04 00 ...Y.F...t..L...
0800:09B0 EB 05 B8 FF FF EB 1B 8B 46 06 89 44 0A 89 44 08 ........F..D..D.
0800:09C0 89 7C 06 83 7E 08 01 75 05 81 4C 02 08 00 33 C0 .|..~..u..L...3.
0800:09D0 EB 00 5F 5E 5D C3 56 57 BF 04 00 BE 42 03 EB 10 .._^].VW....B...
0800:09E0 F7 44 02 03 00 74 05 56 E8 E2 03 59 4F 83 C6 10 .D...t.V...YO...
0800:09F0 0B FF 75 EC 5F 5E C3 55 8B EC 83 EC 04 56 57 8B ..u._^.U.....VW.
0800:0A00 46 08 40 3D 02 00 72 0D 8B 5E 04 D1 E3 F7 87 82 F.@=..r..^......
0800:0A10 04 00 02 74 05 33 C0 E9 93 00 FF 76 08 FF 76 06 ...t.3.....v..v.
0800:0A20 FF 76 04 E8 8D 00 83 C4 06 89 46 FC 8B 46 FC 40 .v........F..F.@
0800:0A30 3D 02 00 72 0D 8B 5E 04 D1 E3 F7 87 82 04 00 80 =..r..^.........
0800:0A40 74 06 8B 46 FC EB 66 90 8B 4E FC 8B 76 06 1E 07 t..F..f..N..v...
0800:0A50 8B FE 8B DE FC AC 3C 1A 74 2D 3C 0D 74 05 AA E2 ......<.t-<.t...
0800:0A60 F4 EB 1C E2 F0 06 53 B8 01 00 50 8D 46 FF 50 FF ......S...P.F.P.
0800:0A70 76 04 E8 3E 00 83 C4 06 5B 07 FC 8A 46 FF AA 3B v..>....[...F..;
0800:0A80 FB 75 02 EB 95 EB 20 53 B8 02 00 50 F7 D9 1B C0 .u.... S...P....
0800:0A90 50 51 FF 76 04 E8 90 01 83 C4 08 8B 5E 04 D1 E3 PQ.v........^...
0800:0AA0 81 8F 82 04 00 02 5B 8B C7 2B C3 EB 00 5F 5E 8B ......[..+..._^.
0800:0AB0 E5 5D C3 55 8B EC B4 3F 8B 5E 04 8B 4E 08 8B 56 .].U...?.^..N..V
0800:0AC0 06 CD 21 72 02 EB 06 50 E8 FA F7 EB 00 5D C3 55 ..!r...P.....].U
0800:0AD0 8B EC 81 EC 8A 00 56 57 8B 46 08 40 3D 02 00 73 ......VW.F.@=..s
0800:0AE0 05 33 C0 E9 F6 00 8B 5E 04 D1 E3 F7 87 82 04 00 .3.....^........
0800:0AF0 80 74 12 FF 76 08 FF 76 06 FF 76 04 E8 E3 00 83 .t..v..v..v.....
0800:0B00 C4 06 E9 D7 00 8B 5E 04 D1 E3 81 A7 82 04 FF FD ......^.........
0800:0B10 8B 46 06 89 86 7C FF 8B 46 08 89 86 78 FF 8D B6 .F...|..F...x...
0800:0B20 7E FF EB 6D FF 8E 78 FF 8B 9E 7C FF FF 86 7C FF ~..m..x...|...|.
0800:0B30 8A 07 88 86 7B FF 3C 0A 75 04 C6 04 0D 46 8A 86 ....{.<.u....F..
0800:0B40 7B FF 88 04 46 8D 86 7E FF 8B D6 2B D0 81 FA 80 {...F..~...+....
0800:0B50 00 7C 3E 8D 86 7E FF 8B FE 2B F8 57 8D 86 7E FF .|>..~...+.W..~.
0800:0B60 50 FF 76 04 E8 7B 00 83 C4 06 89 86 76 FF 3B C7 P.v..{......v.;.
0800:0B70 74 1B 83 BE 76 FF 00 73 05 B8 FF FF EB 0D 8B 46 t...v..s.......F
0800:0B80 08 2B 86 78 FF 03 86 76 FF 2B C7 EB 4F 8D B6 7E .+.x...v.+..O..~
0800:0B90 FF 83 BE 78 FF 00 74 03 E9 89 FF 8D 86 7E FF 8B ...x..t......~..
0800:0BA0 FE 2B F8 8B C7 0B C0 76 2E 57 8D 86 7E FF 50 FF .+.....v.W..~.P.
0800:0BB0 76 04 E8 2D 00 83 C4 06 89 86 76 FF 3B C7 74 17 v..-......v.;.t.
0800:0BC0 83 BE 76 FF 00 73 05 B8 FF FF EB 09 8B 46 08 03 ..v..s.......F..
0800:0BD0 86 76 FF 2B C7 EB 05 8B 46 08 EB 00 5F 5E 8B E5 .v.+....F..._^..
0800:0BE0 5D C3 55 8B EC 8B 5E 04 D1 E3 F7 87 82 04 00 08 ].U...^.........
0800:0BF0 74 10 B8 02 00 50 33 C0 50 50 FF 76 04 E8 28 00 t....P3.PP.v..(.
0800:0C00 8B E5 B4 40 8B 5E 04 8B 4E 08 8B 56 06 CD 21 72 ...@.^..N..V..!r
0800:0C10 0F 50 8B 5E 04 D1 E3 81 8F 82 04 00 10 58 EB 06 .P.^.........X..
0800:0C20 50 E8 A1 F6 EB 00 5D C3 55 8B EC 8B 5E 04 D1 E3 P.....].U...^...
0800:0C30 81 A7 82 04 FF FD B4 42 8A 46 0A 8B 5E 04 8B 4E .......B.F..^..N
0800:0C40 08 8B 56 06 CD 21 72 02 EB 07 50 E8 77 F6 99 EB ..V..!r...P.w...
0800:0C50 00 5D C3 55 8B EC 83 EC 22 56 57 06 8B 7E 0A 1E .].U...."VW..~..
0800:0C60 07 8B 5E 08 83 FB 24 77 58 80 FB 02 72 53 8B 46 ..^...$wX...rS.F
0800:0C70 0C 8B 4E 0E 0B C9 7D 11 80 7E 06 00 74 0B C6 05 ..N...}..~..t...
0800:0C80 2D 47 F7 D9 F7 D8 83 D9 00 8D 76 DE E3 0F 91 2B -G........v....+
0800:0C90 D2 F7 F3 91 F7 F3 88 14 46 E3 09 EB F1 2B D2 F7 ........F....+..
0800:0CA0 F3 88 14 46 0B C0 75 F5 8D 4E DE F7 D9 03 CE FC ...F..u..N......
0800:0CB0 4E 8A 04 2C 0A 73 04 04 3A EB 03 02 46 04 AA E2 N..,.s..:...F...
0800:0CC0 EF B0 00 AA 07 8B 46 0A EB 00 5F 5E 8B E5 5D C2 ......F..._^..].
0800:0CD0 0C 00 55 8B EC 83 7E 08 0A 75 06 8B 46 04 99 EB ..U...~..u..F...
0800:0CE0 05 8B 46 04 33 D2 52 50 FF 76 06 FF 76 08 B0 01 ..F.3.RP.v..v...
0800:0CF0 50 B0 61 50 E8 5C FF EB 00 5D C3 55 8B EC FF 76 P.aP.\...].U...v
0800:0D00 06 FF 76 04 FF 76 08 FF 76 0A B0 00 50 B0 61 50 ..v..v..v...P.aP
0800:0D10 E8 40 FF EB 00 5D C3 55 8B EC FF 76 06 FF 76 04 .@...].U...v..v.
0800:0D20 FF 76 08 FF 76 0A 83 7E 0A 0A 75 05 B8 01 00 EB .v..v..~..u.....
0800:0D30 02 33 C0 50 B0 61 50 E8 19 FF EB 00 5D C3 BA AE .3.P.aP.....]...
0800:0D40 04 EB 03 BA B3 04 B9 05 00 90 B4 40 BB 02 00 CD ...........@....
0800:0D50 21 B9 27 00 90 BA B8 04 B4 40 CD 21 E9 83 F4 55 !.'......@.!...U
0800:0D60 8B EC 83 EC 04 8B 5E 04 D1 E3 F7 87 82 04 00 02 ......^.........
0800:0D70 74 06 B8 01 00 EB 52 90 B8 00 44 8B 5E 04 CD 21 t.....R...D.^..!
0800:0D80 72 41 F6 C2 80 75 38 B8 01 42 33 C9 33 D2 CD 21 rA...u8..B3.3..!
0800:0D90 72 31 52 50 B8 02 42 33 C9 33 D2 CD 21 89 46 FC r1RP..B3.3..!.F.
0800:0DA0 89 56 FE 5A 59 72 1C B8 00 42 CD 21 72 15 3B 56 .V.ZYr...B.!r.;V
0800:0DB0 FE 72 0C 77 05 3B 46 FC 72 05 B8 01 00 EB 0A 33 .r.w.;F.r......3
0800:0DC0 C0 EB 06 50 E8 FE F4 EB 00 8B E5 5D C3 55 8B EC ...P.......].U..
0800:0DD0 56 57 8B 76 04 8B 44 0E 3B C6 74 05 B8 FF FF EB VW.v..D.;.t.....
0800:0DE0 66 83 3C 00 7C 2D F7 44 02 08 00 75 0C 8B 44 0A f.<.|-.D...u..D.
0800:0DF0 8B D6 83 C2 05 3B C2 75 16 C7 04 00 00 8B 44 0A .....;.u......D.
0800:0E00 8B D6 83 C2 05 3B C2 75 06 8B 44 08 89 44 0A 33 .....;.u..D..D.3
0800:0E10 C0 EB 34 8B 7C 06 03 3C 47 29 3C 57 8B 44 08 89 ..4.|..<G)<W.D..
0800:0E20 44 0A 50 8A 44 04 98 50 E8 A4 FC 83 C4 06 3B C7 D.P.D..P......;.
0800:0E30 74 11 F7 44 02 00 02 75 0A 81 4C 02 10 00 B8 FF t..D...u..L.....
0800:0E40 FF EB 04 33 C0 EB 00 5F 5E 5D C3                ...3..._^].    

fn0800_0E4B()
	push	bp
	mov	bp,sp
	mov	ax,0F81
	push	ax
	mov	ax,0352
	push	ax
	push	word ptr [bp+04]
	lea	ax,[bp+06]
	push	ax
	call	1073
	jmp	0E62

l0800_0E62:
	pop	bp
	ret	
0800:0E64             55 8B EC 8B 5E 06 FF 0F FF 76 06 8A     U...^....v..
0800:0E70 46 04 98 50 E8 06 00 8B E5 EB 00 5D C3 55 8B EC F..P.......].U..
0800:0E80 83 EC 02 56 8B 76 06 8A 46 04 88 46 FF FF 04 7D ...V.v..F..F...}
0800:0E90 36 8A 46 FF FF 44 0A 8B 5C 0A 88 47 FF F7 44 02 6.F..D..\..G..D.
0800:0EA0 08 00 74 1B 80 7E FF 0A 74 06 80 7E FF 0D 75 0F ..t..~..t..~..u.
0800:0EB0 56 E8 19 FF 59 0B C0 74 06 B8 FF FF E9 A7 00 8A V...Y..t........
0800:0EC0 46 FF B4 00 E9 9F 00 FF 0C F7 44 02 90 00 75 07 F.........D...u.
0800:0ED0 F7 44 02 02 00 75 0B 81 4C 02 10 00 B8 FF FF E9 .D...u..L.......
0800:0EE0 84 00 81 4C 02 00 01 83 7C 06 00 74 24 83 3C 00 ...L....|..t$.<.
0800:0EF0 74 10 56 E8 D7 FE 59 0B C0 74 05 B8 FF FF EB 66 t.V...Y..t.....f
0800:0F00 EB 0A 8B 44 06 BA FF FF 2B D0 89 14 E9 7E FF EB ...D....+....~..
0800:0F10 55 80 7E FF 0A 75 1F F7 44 02 40 00 75 18 B8 01 U.~..u..D.@.u...
0800:0F20 00 50 B8 E0 04 50 8A 44 04 98 50 E8 B4 FC 83 C4 .P...P.D..P.....
0800:0F30 06 3D 01 00 75 18 B8 01 00 50 8D 46 04 50 8A 44 .=..u....P.F.P.D
0800:0F40 04 98 50 E8 9C FC 83 C4 06 3D 01 00 74 11 F7 44 ..P......=..t..D
0800:0F50 02 00 02 75 0A 81 4C 02 10 00 B8 FF FF EB 07 8A ...u..L.........
0800:0F60 46 FF B4 00 EB 00 5E 8B E5 5D C3 55 8B EC 56 8B F.....^..].U..V.
0800:0F70 76 04 B8 52 03 50 56 E8 03 FF 59 59 EB 00 5E 5D v..R.PV...YY..^]
0800:0F80 C3 55 8B EC 83 EC 02 56 57 8B 76 04 8B 7E 06 89 .U.....VW.v..~..
0800:0F90 7E FE F7 44 02 08 00 74 26 EB 1A 56 8B 5E 08 FF ~..D...t&..V.^..
0800:0FA0 46 08 8A 07 98 50 E8 D4 FE 59 59 3D FF FF 75 05 F....P...YY=..u.
0800:0FB0 33 C0 E9 87 00 8B C7 4F 0B C0 75 DF E9 78 00 F7 3......O..u..x..
0800:0FC0 44 02 40 00 74 38 83 7C 06 00 74 32 8B 44 06 3B D.@.t8.|..t2.D.;
0800:0FD0 C7 73 2B 83 3C 00 74 0D 56 E8 F1 FD 59 0B C0 74 .s+.<.t.V...Y..t
0800:0FE0 04 33 C0 EB 57 57 FF 76 08 8A 44 04 98 50 E8 F1 .3..WW.v..D..P..
0800:0FF0 FB 83 C4 06 3B C7 73 04 33 C0 EB 40 EB 39 EB 30 ....;.s.3..@.9.0
0800:1000 FF 04 7D 15 8B 5E 08 FF 46 08 8A 07 FF 44 0A 8B ..}..^..F....D..
0800:1010 5C 0A 88 47 FF B4 00 EB 0E 56 8B 5E 08 FF 46 08 \..G.....V.^..F.
0800:1020 FF 37 E8 3F FE 59 59 3D FF FF 75 04 33 C0 EB 0C .7.?.YY=..u.3...
0800:1030 8B C7 4F 0B C0 75 C9 8B 46 FE EB 00 5F 5E 8B E5 ..O..u..F..._^..
0800:1040 5D C2 06 00 FF 26 E0 05 55 8B EC 8B 56 04 B9 04 ]....&..U...V...
0800:1050 0F BB E9 04 FC 8A C6 D2 E8 D7 AA 8A C6 22 C5 D7 ............."..
0800:1060 AA 8A C2 D2 E8 D7 AA 8A C2 22 C5 D7 AA EB 00 5D .........".....]
0800:1070 C2 02 00                                        ...            

fn0800_1073()
	push	bp
	mov	bp,sp
	sub	sp,0098
	push	si
	push	di
	mov	word ptr [bp-58],0000
	mov	byte ptr [bp-55],50
	mov	word ptr [bp-02],0000
	jmp	10CD
0800:108C                                     57 B9 FF FF             W...
0800:1090 32 C0 F2 AE F7 D1 49 5F C3                      2.....I_.      

fn0800_1099()
	mov	[di],al
	inc	di
	dec	byte ptr [bp-55]
	jle	10CC

fn0800_10A1()
	push	bx
	push	cx
	push	dx
	push	es
	lea	ax,[bp-54]
	sub	di,ax
	lea	ax,[bp-54]
	push	ax
	push	di
	push	word ptr [bp+08]
	call	word ptr [bp+0A]
	or	ax,ax
	jnz	10BE

l0800_10B9:
	mov	word ptr [bp-02],0001

l0800_10BE:
	mov	byte ptr [bp-55],50
	add	[bp-58],di
	lea	di,[bp-54]
	pop	es
	pop	dx
	pop	cx
	pop	bx

l0800_10CC:
	ret	

l0800_10CD:
	push	es
	cld	
	lea	di,[bp-54]
	mov	[bp+FF6A],di
	mov	di,[bp+FF6A]
	mov	si,[bp+06]

l0800_10DD:
	lodsb	
	or	al,al
	jz	10F3

l0800_10E2:
	cmp	al,25
	jz	10F6

l0800_10E6:
	mov	[di],al
	inc	di
	dec	byte ptr [bp-55]
	jg	10DD

l0800_10EE:
	call	10A1
	jmp	10DD

l0800_10F3:
	jmp	1572

l0800_10F6:
	mov	[bp+FF76],si
	lodsb	
	cmp	al,25
	jz	10E6

l0800_10FF:
	mov	[bp+FF6A],di
	xor	cx,cx
	mov	[bp+FF74],cx
	mov	[bp+FF68],cx
	mov	[bp+FF73],cl
	mov	word ptr [bp+FF6E],FFFF
	mov	word ptr [bp+FF70],FFFF
	jmp	1120

l0800_111F:
	lodsb	

l0800_1120:
	xor	ah,ah
	mov	dx,ax
	mov	bx,ax
	sub	bl,20
	cmp	bl,60
	jnc	1175

l0800_112E:
	mov	bl,[bx+04F9]
	mov	ax,bx
	cmp	ax,0017
	jbe	113C

l0800_1139:
	jmp	1560

l0800_113C:
	mov	bx,ax
	shl	bx,01
	jmp	word ptr cs:[bx+1145]
Code vector at 0800:1145 (48 bytes)
	0800:1190
0800:1145                90 11 78 11 D1 11 84 11 F6 11 00      ..x........
0800:1150 12 42 12 4C 12 5C 12 B7 11 91 12 6C 12 70 12 74 .B.L.\.....l.p.t
0800:1160 12 16 13 C8 13 69 13 89 13 33 15 60 15 60 15 60 .....i...3.`.`.`
0800:1170 15 A3 11 AD 11                                  .....          

l0800_1175:
	jmp	1560
0800:1178                         80 FD 00 77 F8 83 8E 68         ...w...h
0800:1180 FF 01 EB 9B 80 FD 00 77 EC 83 8E 68 FF 02 EB 8F .......w...h....

l0800_1190:
	cmp	ch,00
	ja	1175

l0800_1195:
	cmp	byte ptr [bp+FF73],2B
	jz	11A0

l0800_119C:
	mov	[bp+FF73],dl

l0800_11A0:
	jmp	111F
0800:11A3          83 A6 68 FF DF B5 05 E9 72 FF 83 8E 68    ..h.....r...h
0800:11B0 FF 20 B5 05 E9 68 FF 80 FD 00 77 44 F7 86 68 FF . ...h....wD..h.
0800:11C0 02 00 75 21 83 8E 68 FF 08 B5 01 E9 51 FF E9 8F ..u!..h.....Q...
0800:11D0 03 8B 7E 04 8B 05 83 46 04 02 80 FD 02 73 09 89 ..~....F.....s..
0800:11E0 86 6E FF B5 03 E9 37 FF 80 FD 04 75 E1 89 86 70 .n....7....u...p
0800:11F0 FF FE C5 E9 29 FF 80 FD 04 73 D3 B5 04 E9 1F FF ....)....s......
0800:1200 92 2C 30 98 80 FD 02 77 1B B5 02 87 86 6E FF 0B .,0....w.....n..
0800:1210 C0 7C D2 D1 E0 8B D0 D1 E0 D1 E0 03 C2 01 86 6E .|.............n
0800:1220 FF E9 FB FE 80 FD 04 75 A5 87 86 70 FF 0B C0 7C .......u...p...|
0800:1230 B4 D1 E0 8B D0 D1 E0 D1 E0 03 C2 01 86 70 FF E9 .............p..
0800:1240 DD FE 83 8E 68 FF 10 B5 05 E9 D3 FE 81 8E 68 FF ....h.........h.
0800:1250 00 01 83 A6 68 FF EF B5 05 E9 C3 FE 83 A6 68 FF ....h.........h.
0800:1260 EF 81 8E 68 FF 80 00 B5 05 E9 B3 FE B7 08 EB 0A ...h............
0800:1270 B7 0A EB 0B B7 10 B3 E9 02 DA C6 86 73 FF 00 C6 ............s...
0800:1280 86 6D FF 00 88 96 6C FF 8B 7E 04 8B 05 33 D2 EB .m....l..~...3..
0800:1290 11 B7 0A C6 86 6D FF 01 88 96 6C FF 8B 7E 04 8B .....m....l..~..
0800:12A0 05 99 47 47 89 76 06 F7 86 68 FF 10 00 74 04 8B ..GG.v...h...t..
0800:12B0 15 47 47 89 7E 04 8D BE 79 FF 0B C0 75 33 0B D2 .GG.~...y...u3..
0800:12C0 75 2F 83 BE 70 FF 00 75 2D 8B BE 6A FF 8B 8E 6E u/..p..u-..j...n
0800:12D0 FF E3 1B 83 F9 FF 74 16 8B 86 68 FF 25 08 00 74 ......t...h.%..t
0800:12E0 04 B2 30 EB 02 B2 20 8A C2 E8 AD FD E2 F9 E9 E9 ..0... .........
0800:12F0 FD 83 8E 68 FF 04 52 50 57 8A C7 98 50 8A 86 6D ...h..RPW...P..m
0800:1300 FF 50 53 E8 4D F9 16 07 8B 96 70 FF 0B D2 7F 03 .PS.M.....p.....
0800:1310 E9 14 01 E9 21 01 88 96 6C FF 89 76 06 8D BE 78 ....!...l..v...x
0800:1320 FF 8B 5E 04 FF 37 43 43 89 5E 04 F7 86 68 FF 20 ..^..7CC.^...h. 
0800:1330 00 74 0F FF 37 43 43 89 5E 04 16 07 E8 09 FD B0 .t..7CC.^.......
0800:1340 3A AA 16 07 E8 01 FD C6 05 00 C6 86 6D FF 00 83 :...........m...
0800:1350 A6 68 FF FB 8D 8E 78 FF 2B F9 87 CF 8B 96 70 FF .h....x.+.....p.
0800:1360 3B D1 7F 02 8B D1 E9 BE 00 89 76 06 88 96 6C FF ;.........v...l.
0800:1370 8B 7E 04 8B 05 83 46 04 02 16 07 8D BE 79 FF 32 .~....F......y.2
0800:1380 E4 89 05 B9 01 00 E9 DF 00 89 76 06 88 96 6C FF ..........v...l.
0800:1390 8B 7E 04 F7 86 68 FF 20 00 75 0C 8B 3D 83 46 04 .~...h. .u..=.F.
0800:13A0 02 1E 07 0B FF EB 0A C4 3D 83 46 04 04 8C C0 0B ........=.F.....
0800:13B0 C7 75 05 1E 07 BF E2 04 E8 D1 FC 3B 8E 70 FF 76 .u.........;.p.v
0800:13C0 04 8B 8E 70 FF E9 A0 00 89 76 06 88 96 6C FF 8B ...p.....v...l..
0800:13D0 7E 04 8B 8E 70 FF 0B C9 7D 03 B9 06 00 57 51 8D ~...p...}....WQ.
0800:13E0 9E 79 FF 53 52 B8 01 00 23 86 68 FF 50 8B 86 68 .y.SR...#.h.P..h
0800:13F0 FF A9 80 00 74 0A B8 02 00 C7 46 FC 04 00 EB 17 ....t.....F.....
0800:1400 A9 00 01 74 0A B8 08 00 C7 46 FC 0A 00 EB 08 C7 ...t.....F......
0800:1410 46 FC 08 00 B8 06 00 50 E8 29 FC 8B 46 FC 01 46 F......P.)..F..F
0800:1420 04 16 07 8D BE 79 FF F7 86 68 FF 08 00 74 1A 8B .....y...h...t..
0800:1430 96 6E FF 0B D2 7E 12 E8 52 FC 26 80 3D 2D 75 01 .n...~..R.&.=-u.
0800:1440 49 2B D1 7E 04 89 96 74 FF 8A 86 73 FF 0A C0 74 I+.~...t...s...t
0800:1450 14 26 80 3D 2D 74 0E 83 AE 74 FF 01 83 96 74 FF .&.=-t...t....t.
0800:1460 00 4F 26 88 05 E8 24 FC 8B F7 8B BE 6A FF 8B 9E .O&...$.....j...
0800:1470 6E FF B8 05 00 23 86 68 FF 3D 05 00 75 16 8A A6 n....#.h.=..u...
0800:1480 6C FF 80 FC 6F 75 10 83 BE 74 FF 00 7F 06 C7 86 l...ou...t......
0800:1490 74 FF 01 00 EB 1F 90 80 FC 78 74 05 80 FC 58 75 t........xt...Xu
0800:14A0 14 83 8E 68 FF 40 4B 4B 83 AE 74 FF 02 7D 06 C7 ...h.@KK..t..}..
0800:14B0 86 74 FF 00 00 03 8E 74 FF F7 86 68 FF 02 00 75 .t.....t...h...u
0800:14C0 0C EB 06 B0 20 E8 D1 FB 4B 3B D9 7F F6 F7 86 68 .... ...K;.....h
0800:14D0 FF 40 00 74 0C B0 30 E8 BF FB 8A 86 6C FF E8 B8 .@.t..0.....l...
0800:14E0 FB 8B 96 74 FF 0B D2 7E 27 2B CA 2B DA 26 8A 04 ...t...~'+.+.&..
0800:14F0 3C 2D 74 08 3C 20 74 04 3C 2B 75 07 26 AC E8 98 <-t.< t.<+u.&...
0800:1500 FB 49 4B 87 CA E3 07 B0 30 E8 8D FB E2 F9 87 CA .IK.....0.......
0800:1510 E3 11 2B D9 26 AC 88 05 47 FE 4E AB 7F 03 E8 80 ..+.&...G.N.....
0800:1520 FB E2 F1 0B DB 7E 09 8B CB B0 20 E8 6B FB E2 F9 .....~.... .k...
0800:1530 E9 A7 FB 89 76 06 8B 7E 04 F7 86 68 FF 20 00 75 ....v..~...h. .u
0800:1540 0A 8B 3D 83 46 04 02 1E 07 EB 06 C4 3D 83 46 04 ..=.F.......=.F.
0800:1550 04 B8 50 00 2A 46 AB 03 46 A8 26 89 05 E9 76 FB ..P.*F..F.&...v.

l0800_1560:
	mov	si,[bp+FF76]
	mov	di,[bp+FF6A]
	mov	al,25

l0800_156A:
	call	1099
	lodsb	
	or	al,al
	jnz	156A

l0800_1572:
	cmp	byte ptr [bp-55],50
	jge	157B

l0800_1578:
	call	10A1

l0800_157B:
	pop	es
	cmp	word ptr [bp-02],00
	jz	1589

l0800_1582:
	mov	ax,FFFF
	jmp	158E
0800:1587                      EB 05                             ..      

l0800_1589:
	mov	ax,[bp-58]
	jmp	158E

l0800_158E:
	pop	di
	pop	si
	mov	sp,bp
	pop	bp
	ret	0008
0800:1596                   55 8B EC 56 57 8B 76 04 83 3E       U..VW.v..>
0800:15A0 2A 06 00 74 1C 8B 1E 2A 06 8B 7F 06 8B 1E 2A 06 *..t...*......*.
0800:15B0 89 77 06 89 75 04 89 7C 06 A1 2A 06 89 44 04 EB .w..u..|..*..D..
0800:15C0 0A 89 36 2A 06 89 74 04 89 74 06 5F 5E 5D C3 55 ..6*..t..t._^].U
0800:15D0 8B EC 83 EC 02 56 57 8B 76 06 8B 7E 04 8B 04 01 .....VW.v..~....
0800:15E0 05 A1 28 06 3B C6 75 06 89 3E 28 06 EB 0D 8B 04 ..(.;.u..>(.....
0800:15F0 03 C6 89 46 FE 8B 5E FE 89 7F 02 56 E8 92 EE 59 ...F..^....V...Y
0800:1600 5F 5E 8B E5 5D C3 56 A1 2C 06 3B 06 28 06 75 12 _^..].V.,.;.(.u.
0800:1610 FF 36 2C 06 E8 24 F0 59 33 C0 A3 28 06 A3 2C 06 .6,..$.Y3..(..,.
0800:1620 EB 3B 8B 1E 28 06 8B 77 02 F7 04 01 00 75 22 56 .;..(..w.....u"V
0800:1630 E8 5E EE 59 3B 36 2C 06 75 0A 33 C0 A3 28 06 A3 .^.Y;6,.u.3..(..
0800:1640 2C 06 EB 06 8B 44 02 A3 28 06 56 E8 ED EF 59 EB ,....D..(.V...Y.
0800:1650 0C FF 36 28 06 E8 E3 EF 59 89 36 28 06 5E C3 55 ..6(....Y.6(.^.U
0800:1660 8B EC 83 EC 02 56 57 8B 76 04 FF 0C 8B 04 03 C6 .....VW.v.......
0800:1670 89 46 FE 8B 7C 02 F7 05 01 00 75 14 3B 36 2C 06 .F..|.....u.;6,.
0800:1680 74 0E 8B 04 01 05 8B 5E FE 89 7F 02 8B F7 EB 05 t......^........
0800:1690 56 E8 02 FF 59 8B 5E FE F7 07 01 00 75 09 FF 76 V...Y.^.....u..v
0800:16A0 FE 56 E8 2A FF 59 59 5F 5E 8B E5 5D C3 55 8B EC .V.*.YY_^..].U..
0800:16B0 56 8B 76 04 0B F6 75 02 EB 17 8B C6 05 FC FF 8B V.v...u.........
0800:16C0 F0 3B 36 28 06 75 05 E8 3C FF EB 05 56 E8 8F FF .;6(.u..<...V...
0800:16D0 59 5E 5D C3                                     Y^].           

fn0800_16D4()
	push	bp
	mov	bp,sp
	lea	ax,[bp+06]
	push	ax
	push	word ptr [bp+04]
	mov	ax,0342
	push	ax
	mov	ax,1D65
	push	ax
	mov	ax,07F2
	push	ax
	call	16F3
	mov	sp,bp
	jmp	16F1

l0800_16F1:
	pop	bp
	ret	

fn0800_16F3()
	push	bp
	mov	bp,sp
	sub	sp,2A
	push	si
	push	di
	mov	word ptr [bp-28],0000
	mov	word ptr [bp-26],0000
	jmp	1721
0800:1707                      90 8B 7E 0C F6 46 D7 20 74        ..~..F. t
0800:1710 07 C4 3D 83 46 0C 04 C3 8B 3D 1E 07 83 46 0C 02 ..=.F....=...F..
0800:1720 C3                                              .              

l0800_1721:
	push	es
	cld	
	mov	si,[bp+0A]

l0800_1726:
	lodsb	
	or	al,al
	jz	1788

l0800_172B:
	cmp	al,25
	jz	178B

l0800_172F:
	cbw	
	xchg	ax,di
	inc	word ptr [bp-26]
	push	word ptr [bp+08]
	call	word ptr [bp+04]
	pop	cx
	or	ax,ax
	jl	1764

l0800_173F:
	or	di,di
	js	1775

l0800_1743:
	cmp	byte ptr [di+055A],01
	jnz	1775

l0800_174A:
	xchg	ax,bx
	or	bl,bl
	js	1767

l0800_174F:
	cmp	byte ptr [bx+055A],01
	jnz	1767

l0800_1756:
	inc	word ptr [bp-26]
	push	word ptr [bp+08]
	call	word ptr [bp+04]
	pop	cx
	or	ax,ax
	jg	174A

l0800_1764:
	jmp	1AEB

l0800_1767:
	push	word ptr [bp+08]
	push	bx
	call	word ptr [bp+06]
	pop	cx
	pop	cx
	dec	word ptr [bp-26]
	jmp	1726

l0800_1775:
	cmp	ax,di
	jz	1726

l0800_1779:
	push	word ptr [bp+08]
	push	ax
	call	word ptr [bp+06]
	pop	cx
	pop	cx
	dec	word ptr [bp-26]
	jmp	1AFF

l0800_1788:
	jmp	1AFF

l0800_178B:
	mov	word ptr [bp-22],FFFF
	mov	byte ptr [bp-29],00
	lodsb	
	cbw	
	mov	[bp+0A],si
	xchg	ax,di
	or	di,di
	jl	17E6

l0800_179E:
	mov	bl,[di+055A]
	xor	bh,bh
	mov	ax,bx
	cmp	ax,0015
	jbe	17AE

l0800_17AB:
	jmp	1AEB

l0800_17AE:
	mov	bx,ax
	shl	bx,01
	jmp	word ptr cs:[bx+17B7]
Code vector at 0800:17B7 (47 bytes)
	0800:17E6
0800:17B7                      E6 17 E6 17 E6 17 E3 17 E9        .........
0800:17C0 17 EF 17 C8 19 37 18 37 18 41 18 08 19 03 18 0F .....7.7.A......
0800:17D0 18 09 18 32 18 6C 19 06 1A 24 18 3C 18 95 18 16 ...2.l...$.<....
0800:17E0 18 1D 18 E9 49 FF                               ....I.         

l0800_17E6:
	jmp	1AFF
0800:17E9                            80 4E D7 01 EB A5 83          .N.....
0800:17F0 EF 30 87 7E DE 0B FF 7C 9B B8 0A 00 F7 E7 01 46 .0.~...|.......F
0800:1800 DE EB 91 80 4E D7 08 EB 8B 80 4E D7 04 EB 85 80 ....N.....N.....
0800:1810 4E D7 02 E9 7E FF 80 66 D7 DF E9 77 FF 80 4E D7 N...~..f...w..N.
0800:1820 20 E9 70 FF 8B 46 DA 2B D2 F6 46 D7 01 74 4F E9  .p..F.+..F..tO.
0800:1830 62 FF BE 08 00 EB 0D BE 0A 00 EB 08 BE 10 00 EB b...............
0800:1840 03 BE 00 00 F7 C7 20 00 75 04 80 4E D7 04 8D 46 ...... .u..N...F
0800:1850 DC 50 8D 46 DA 50 8B 46 DE 25 FF 7F 50 8B C6 50 .P.F.P.F.%..P..P
0800:1860 FF 76 08 FF 76 06 FF 76 04 E8 60 03 83 C4 0E 83 .v..v..v..`.....
0800:1870 7E DC 00 7E 18 F6 46 D7 01 75 0F FF 46 D8 E8 87 ~..~..F..u..F...
0800:1880 FE AB F6 46 D7 04 74 02 92 AB E9 96 FE 7C 03 E9 ...F..t......|..
0800:1890 6D 02 E9 56 02 E8 00 00 E9 6B 02 FF 76 08 50 FF m..V.....k..v.P.
0800:18A0 56 06 59 59 FF 4E DA 81 66 DE FF 7F E8 00 00 E9 V.YY.N..f.......
0800:18B0 7A 02 52 3C 3A 74 15 0B C0 7E 0C FF 76 08 50 FF z.R<:t...~..v.P.
0800:18C0 56 06 59 59 FF 4E DA 5A 8C DB EB 1B E8 00 00 E9 V.YY.N.Z........
0800:18D0 5A 02 5B 0B C0 7E 10 52 53 FF 76 08 50 FF 56 06 Z.[..~.RS.v.P.V.
0800:18E0 59 59 FF 4E DA 5B 5A F6 46 D7 01 75 10 E8 18 FE YY.N.[Z.F..u....
0800:18F0 FF 46 D8 92 AB F6 46 D7 20 74 02 93 AB E9 23 FE .F....F. t....#.
0800:1900 7C 03 E9 FA 01 E9 E3 01 8D 46 DC 50 8D 46 DA 50 |........F.P.F.P
0800:1910 B8 FF 7F 23 46 DE 50 FF 76 08 FF 76 06 FF 76 04 ...#F.P.v..v..v.
0800:1920 E8 6F 02 83 C4 0C 83 7E DC 00 7E 38 F6 46 D7 01 .o.....~..~8.F..
0800:1930 74 03 EB 2A 90 E8 D0 FD FF 46 D8 F6 46 D7 04 74 t..*.....F..F..t
0800:1940 05 B8 04 00 EB 0D F6 46 D7 08 74 05 B8 08 00 EB .......F..t.....
0800:1950 02 33 C0 50 57 E8 3E 02 83 C4 04 E9 C5 FD E8 39 .3.PW.>........9
0800:1960 02 E9 BF FD E8 33 02 7C 9C E9 93 01 E8 00 00 E9 .....3.|........
0800:1970 94 01 F6 46 D7 01 75 06 E8 8D FD FF 46 D8 81 66 ...F..u.....F..f
0800:1980 DE FF 7F 74 29 F6 46 D7 01 75 01 AA FF 46 DA 06 ...t).F..u...F..
0800:1990 FF 76 08 FF 56 04 59 07 0B C0 7E 12 0A C0 78 09 .v..V.Y...~...x.
0800:19A0 93 80 BF 5A 05 01 93 7E 05 FF 4E DE 7F D7 06 FF ...Z...~..N.....
0800:19B0 76 08 50 FF 56 06 59 59 07 FF 4E DA F6 46 D7 01 v.P.V.YY..N..F..
0800:19C0 75 03 B0 00 AA E9 5B FD F6 46 D7 01 75 03 E8 37 u.....[..F..u..7
0800:19D0 FD 8B 76 DE 0B F6 7D 03 BE 01 00 74 1A FF 46 DA ..v...}....t..F.
0800:19E0 06 FF 76 08 FF 56 04 59 07 F6 46 D7 01 75 01 AA ..v..V.Y..F..u..
0800:19F0 0B C0 7C 0F 4E 7F E6 F6 46 D7 01 75 03 FF 46 D8 ..|.N...F..u..F.
0800:1A00 E9 20 FD E9 E5 00 2B C0 FC 16 07 8D 7E E0 B9 10 . ....+.....~...
0800:1A10 00 F3 AB AC 80 66 D7 EF 3C 5E 75 05 80 4E D7 10 .....f..<^u..N..
0800:1A20 AC B4 00 8A D0 8B F8 B1 03 D3 EF B9 07 01 22 CA ..............".
0800:1A30 D2 E5 08 6B E0 AC 3C 00 74 26 3C 5D 74 25 3C 2D ...k..<.t&<]t%<-
0800:1A40 75 E1 3A 14 77 DD 80 3C 5D 74 D8 AC 2A C2 74 E5 u.:.w..<]t..*.t.
0800:1A50 02 D0 D0 C5 83 D7 00 08 6B E0 FE C8 75 F4 EB D5 ........k...u...
0800:1A60 E9 9C 00 89 76 0A 81 66 DE FF 7F 8B 76 DE F6 46 ....v..f....v..F
0800:1A70 D7 01 75 03 E8 91 FC 4E 7C 50 FF 46 DA 06 FF 76 ..u....N|P.F...v
0800:1A80 08 FF 56 04 59 07 0B C0 7C 4F 96 8B DE B1 03 D3 ..V.Y...|O......
0800:1A90 EE B9 07 01 22 CB D2 E5 84 6A E0 96 93 74 08 F6 ...."....j...t..
0800:1AA0 46 D7 10 74 08 EB 0F F6 46 D7 10 74 09 F6 46 D7 F..t....F..t..F.
0800:1AB0 01 75 C4 AA EB C1 06 FF 76 08 50 FF 56 06 59 59 .u......v.P.V.YY
0800:1AC0 07 FF 4E DA 46 3B 76 DE 7D 09 F6 46 D7 01 75 06 ..N.F;v.}..F..u.
0800:1AD0 FF 46 D8 B0 00 AA E9 4A FC 46 3B 76 DE 7D 0C F6 .F.....J.F;v.}..
0800:1AE0 46 D7 01 75 06 B0 00 AA FF 46 D8                F..u.....F.    

l0800_1AEB:
	push	word ptr [bp+08]
	mov	ax,FFFF
	push	ax
	call	word ptr [bp+06]
	pop	cx
	pop	cx
	cmp	word ptr [bp-28],01
	sbb	word ptr [bp-28],00

l0800_1AFF:
	pop	es
	mov	ax,[bp-28]
	jmp	1B8C
0800:1B06                   FF 46 DA FF 76 08 FF 56 04 59       .F..v..V.Y
0800:1B10 0B C0 7E 13 0A C0 78 09 93 80 BF 5A 05 01 93 74 ..~...x....Z...t
0800:1B20 E5 59 83 C1 03 FF E1 74 F8 59 EB BF 2B D2 B9 04 .Y.....t.Y..+...
0800:1B30 00 FF 4E DE 7C 45 52 51 FF 46 DA FF 76 08 FF 56 ..N.|ERQ.F..v..V
0800:1B40 04 59 59 5A 0B C0 7E 35 FE C9 7C 31 8A E8 80 ED .YYZ..~5..|1....
0800:1B50 30 72 2A 80 FD 0A 72 17 80 ED 11 72 20 80 FD 06 0r*...r....r ...
0800:1B60 72 0A 80 ED 20 72 16 80 FD 06 73 11 80 C5 0A D1 r... r....s.....
0800:1B70 E2 D1 E2 D1 E2 D1 E2 02 D5 EB B6 2B C0 80 F9 04 ...........+....
0800:1B80 74 06 59 83 C1 03 FF E1 59 E9 5F FF             t.Y.....Y._.   

l0800_1B8C:
	pop	di
	pop	si
	mov	sp,bp
	pop	bp
	ret	
0800:1B92       FF 26 E2 05 FF 26 E4 05 FF 26 E6 05 53 80   .&...&...&..S.
0800:1BA0 EB 30 72 23 80 FB 09 76 12 80 FB 2A 77 05 80 EB .0r#...v...*w...
0800:1BB0 07 EB 03 80 EB 27 80 FB 09 76 0C 3A D9 73 08 83 .....'...v.:.s..
0800:1BC0 C4 02 F8 B7 00 EB 04 5B F9 EB FA C3 55 8B EC 83 .......[....U...
0800:1BD0 EC 06 56 57 C6 46 FB 00 C7 46 FC 00 00 C7 46 FE ..VW.F...F....F.
0800:1BE0 01 00 06 BF 41 02 FF 46 FC FF 76 08 FF 56 04 59 ....A..F..v..V.Y
0800:1BF0 0B C0 7C 66 98 93 F6 C3 80 75 05 F6 01 01 75 E6 ..|f.....u....u.
0800:1C00 93 FF 4E 0C 7C 5B 3C 2B 74 07 3C 2D 75 16 FE 46 ..N.|[<+t.<-u..F
0800:1C10 FB FF 4E 0C 7C 4B FF 46 FC FF 76 08 FF 56 04 59 ..N.|K.F..v..V.Y
0800:1C20 0B C0 7C 36 2B F6 8B FE 8B 4E 0A E3 4E 83 F9 24 ..|6+....N..N..$
0800:1C30 77 2F 80 F9 02 72 2A 3C 30 75 6C 80 F9 10 75 65 w/...r*<0ul...ue
0800:1C40 FF 4E 0C 7C 33 FF 46 FC FF 76 08 FF 56 04 59 3C .N.|3.F..v..V.Y<
0800:1C50 78 74 52 3C 58 74 4E EB 74 90 C7 46 FE FF FF EB xtR<XtN.t..F....
0800:1C60 05 C7 46 FE 00 00 FF 76 08 50 FF 56 06 59 59 FF ..F....v.P.V.YY.
0800:1C70 4E FC 2B C0 99 E9 A7 00 E9 94 00 3C 30 C7 46 0A N.+........<0.F.
0800:1C80 0A 00 75 23 FF 4E 0C 7C EF FF 46 FC FF 76 08 FF ..u#.N.|..F..v..
0800:1C90 56 04 59 C7 46 0A 08 00 3C 78 74 04 3C 58 75 2D V.Y.F...<xt.<Xu-
0800:1CA0 C7 46 0A 10 00 EB 17 8B 4E 0A 93 E8 F0 FE 93 72 .F......N......r
0800:1CB0 B0 96 EB 0A 96 F7 66 0A 03 F0 13 FA 75 2C FF 4E ......f.....u,.N
0800:1CC0 0C 7C 4C FF 46 FC FF 76 08 FF 56 04 59 8B 4E 0A .|L.F..v..V.Y.N.
0800:1CD0 93 E8 CA FE 93 73 DD EB 2A 96 F7 E1 97 87 CA F7 .....s..*.......
0800:1CE0 E2 03 F7 13 C1 97 12 D6 75 48 FF 4E 0C 7C 20 FF ........uH.N.| .
0800:1CF0 46 FC FF 76 08 FF 56 04 59 8B 4E 0A 93 E8 9E FE F..v..V.Y.N.....
0800:1D00 93 73 D6 FF 76 08 50 FF 56 06 59 59 FF 4E FC 8B .s..v.P.V.YY.N..
0800:1D10 D7 96 80 7E FB 00 74 07 F7 DA F7 D8 83 DA 00 8B ...~..t.........
0800:1D20 7E 0E 8B 5E FC 01 1D 8B 7E 10 8B 5E FE 89 1D 07 ~..^....~..^....
0800:1D30 EB 16 B8 FF FF BA FF 7F 02 46 FB 80 D4 00 83 D2 .........F......
0800:1D40 00 C7 46 FE 02 00 EB D7 5F 5E 8B E5 5D C3 55 8B ..F....._^..].U.
0800:1D50 EC B8 01 00 50 33 C0 50 50 FF 76 04 E8 C9 EE 8B ....P3.PP.v.....
0800:1D60 E5 EB 00 5D C3 55 8B EC 56 8B 76 06 83 7E 04 FF ...].U..V.v..~..
0800:1D70 74 35 FF 04 8B 04 3D 01 00 7E 11 8A 46 04 FF 4C t5....=..~..F..L
0800:1D80 0A 8B 5C 0A 88 07 B4 00 EB 22 EB 1B 83 3C 01 75 ..\......"...<.u
0800:1D90 14 8B C6 05 05 00 89 44 0A 8A 46 04 88 44 05 B4 .......D..F..D..
0800:1DA0 00 EB 09 EB 02 FF 0C B8 FF FF EB 00 5E 5D C3 00 ............^]..
;;; Segment 09DB (09DB:0000)
09DB:0000 00 00 00 00 54 75 72 62 6F 2D 43 20 2D 20 43 6F ....Turbo-C - Co
09DB:0010 70 79 72 69 67 68 74 20 28 63 29 20 31 39 38 38 pyright (c) 1988
09DB:0020 20 42 6F 72 6C 61 6E 64 20 49 6E 74 6C 2E 00 4E  Borland Intl..N
09DB:0030 75 6C 6C 20 70 6F 69 6E 74 65 72 20 61 73 73 69 ull pointer assi
09DB:0040 67 6E 6D 65 6E 74 0D 0A 44 69 76 69 64 65 20 65 gnment..Divide e
09DB:0050 72 72 6F 72 0D 0A 41 62 6E 6F 72 6D 61 6C 20 70 rror..Abnormal p
09DB:0060 72 6F 67 72 61 6D 20 74 65 72 6D 69 6E 61 74 69 rogram terminati
09DB:0070 6F 6E 0D 0A 00 00 00 00 00 00 00 00 00 00 00 00 on..............
09DB:0080 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
09DB:0090 00 00 00 00 00 00 00 00 00 00 00 00 2E 06 2E 06 ................
09DB:00A0 2E 06 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
09DB:00B0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
09DB:00C0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
09DB:00D0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
09DB:00E0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
09DB:00F0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
09DB:0100 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
09DB:0110 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
09DB:0120 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
09DB:0130 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
09DB:0140 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
09DB:0150 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
09DB:0160 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
09DB:0170 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
09DB:0180 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
09DB:0190 00 00 00 00 65 6E 74 65 72 20 6E 75 6D 62 65 72 ....enter number
09DB:01A0 20 6F 66 20 69 74 65 72 61 74 69 6F 6E 73 20 00  of iterations .
09DB:01B0 25 6C 64 00 65 78 65 63 75 74 69 6E 67 20 25 6C %ld.executing %l
09DB:01C0 64 20 69 74 65 72 61 74 69 6F 6E 73 0A 00 66 69 d iterations..fi
09DB:01D0 6E 69 73 68 65 64 0A 00 00 00 00 13 02 02 04 05 nished..........
09DB:01E0 06 08 08 08 14 15 05 13 FF 16 05 11 02 FF FF FF ................
09DB:01F0 FF FF FF FF FF FF FF FF FF FF 05 05 FF FF FF FF ................
09DB:0200 FF FF FF FF FF FF FF FF FF FF FF FF 0F FF 23 02 ..............#.
09DB:0210 FF 0F FF FF FF FF 13 FF FF 02 02 05 0F 02 FF FF ................
09DB:0220 FF 13 FF FF FF FF FF FF FF FF 23 FF FF FF FF 23 ..........#....#
09DB:0230 FF 13 FF 00 00 03 00 03 00 03 00 00 00 10 00 00 ................
09DB:0240 00 20 20 20 20 20 20 20 20 20 21 21 21 21 21 20 .         !!!!! 
09DB:0250 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20                 
09DB:0260 20 01 40 40 40 40 40 40 40 40 40 40 40 40 40 40  .@@@@@@@@@@@@@@
09DB:0270 40 02 02 02 02 02 02 02 02 02 02 40 40 40 40 40 @..........@@@@@
09DB:0280 40 40 14 14 14 14 14 14 04 04 04 04 04 04 04 04 @@..............
09DB:0290 04 04 04 04 04 04 04 04 04 04 04 04 40 40 40 40 ............@@@@
09DB:02A0 40 40 18 18 18 18 18 18 08 08 08 08 08 08 08 08 @@..............
09DB:02B0 08 08 08 08 08 08 08 08 08 08 08 08 40 40 40 40 ............@@@@
09DB:02C0 20 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ...............
09DB:02D0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
09DB:02E0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
09DB:02F0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
09DB:0300 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
09DB:0310 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
09DB:0320 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
09DB:0330 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
09DB:0340 00 00 00 00 09 02 00 00 00 00 00 00 00 00 00 00 ................
09DB:0350 42 03 00 00 0A 02 01 00 00 00 00 00 00 00 00 00 B...............
09DB:0360 52 03 00 00 02 02 02 00 00 00 00 00 00 00 00 00 R...............
09DB:0370 62 03 00 00 43 02 03 00 00 00 00 00 00 00 00 00 b...C...........
09DB:0380 72 03 00 00 42 02 04 00 00 00 00 00 00 00 00 00 r...B...........
09DB:0390 82 03 00 00 00 00 FF 00 00 00 00 00 00 00 00 00 ................
09DB:03A0 92 03 00 00 00 00 FF 00 00 00 00 00 00 00 00 00 ................
09DB:03B0 A2 03 00 00 00 00 FF 00 00 00 00 00 00 00 00 00 ................
09DB:03C0 B2 03 00 00 00 00 FF 00 00 00 00 00 00 00 00 00 ................
09DB:03D0 C2 03 00 00 00 00 FF 00 00 00 00 00 00 00 00 00 ................
09DB:03E0 D2 03 00 00 00 00 FF 00 00 00 00 00 00 00 00 00 ................
09DB:03F0 E2 03 00 00 00 00 FF 00 00 00 00 00 00 00 00 00 ................
09DB:0400 F2 03 00 00 00 00 FF 00 00 00 00 00 00 00 00 00 ................
09DB:0410 02 04 00 00 00 00 FF 00 00 00 00 00 00 00 00 00 ................
09DB:0420 12 04 00 00 00 00 FF 00 00 00 00 00 00 00 00 00 ................
09DB:0430 22 04 00 00 00 00 FF 00 00 00 00 00 00 00 00 00 "...............
09DB:0440 32 04 00 00 00 00 FF 00 00 00 00 00 00 00 00 00 2...............
09DB:0450 42 04 00 00 00 00 FF 00 00 00 00 00 00 00 00 00 B...............
09DB:0460 52 04 00 00 00 00 FF 00 00 00 00 00 00 00 00 00 R...............
09DB:0470 62 04 00 00 00 00 FF 00 00 00 00 00 00 00 00 00 b...............
09DB:0480 72 04 01 20 02 20 02 20 04 A0 02 A0 FF FF FF FF r.. . . ........
09DB:0490 FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF ................
09DB:04A0 FF FF FF FF FF FF FF FF FF FF 00 00 00 00 70 72 ..............pr
09DB:04B0 69 6E 74 20 73 63 61 6E 66 20 3A 20 66 6C 6F 61 int scanf : floa
09DB:04C0 74 69 6E 67 20 70 6F 69 6E 74 20 66 6F 72 6D 61 ting point forma
09DB:04D0 74 73 20 6E 6F 74 20 6C 69 6E 6B 65 64 0D 0A 00 ts not linked...
09DB:04E0 0D 00 28 6E 75 6C 6C 29 00 30 31 32 33 34 35 36 ..(null).0123456
09DB:04F0 37 38 39 41 42 43 44 45 46 00 14 14 01 14 15 14 789ABCDEF.......
09DB:0500 14 14 14 02 00 14 03 04 14 09 05 05 05 05 05 05 ................
09DB:0510 05 05 05 14 14 14 14 14 14 14 14 14 14 14 0F 17 ................
09DB:0520 0F 08 14 14 14 07 14 16 14 14 14 14 14 14 14 14 ................
09DB:0530 14 0D 14 14 14 14 14 14 14 14 14 14 10 0A 0F 0F ................
09DB:0540 0F 08 0A 14 14 06 14 12 0B 0E 14 14 11 14 0C 14 ................
09DB:0550 14 0D 14 14 14 14 14 14 14 00 00 02 02 02 02 02 ................
09DB:0560 02 02 02 01 01 01 01 01 02 02 02 02 02 02 02 02 ................
09DB:0570 02 02 02 02 02 02 02 02 02 02 01 02 02 02 02 03 ................
09DB:0580 02 02 02 02 04 02 02 02 02 02 05 05 05 05 05 05 ................
09DB:0590 05 05 05 05 02 02 02 02 02 02 02 02 02 02 07 0A ................
09DB:05A0 15 0A 0C 09 02 02 0B 02 14 0E 02 02 02 02 02 08 ................
09DB:05B0 02 02 12 02 02 10 02 10 02 02 02 02 02 06 07 0A ................
09DB:05C0 0A 0A 0C 09 02 02 0D 02 11 0E 13 02 02 0F 02 08 ................
09DB:05D0 02 02 12 02 02 02 02 02 02 02 D2 01 D2 01 D9 01 ................
09DB:05E0 3E 0D 43 0D 43 0D 43 0D 00 00 00 00 00 00 00 00 >.C.C.C.........
09DB:05F0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
09DB:0600 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
09DB:0610 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
09DB:0620 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
09DB:0630 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
09DB:0640 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
09DB:0650 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
09DB:0660 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
09DB:0670 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
09DB:0680 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
09DB:0690 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
09DB:06A0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
09DB:06B0 FB 52 08 02 4A 05 00 00 9E 00 1E 00 00 00 76 00 .R..J.........v.
09DB:06C0 6E 00 27 00 00 00 0A 00 0C 00 01 00 01 00 01 00 n.'.............
09DB:06D0 98 25 00 00 00 00 00 00 01 00 00 00 00 00 00 00 .%..............
09DB:06E0 01 00 00 00 00 00 00 00 01 02 00 00 00 21 01 00 .............!..
09DB:06F0 00 00 03 00 00 00 A5 01 00 00 00 04 00 00 00 E2 ................
09DB:0700 01 00 00 00 05 00 00 00 F8 01 00 00 00 06 00 1D ................
09DB:0710 00 FA 01 00 00 18 07 00 1D 00 FF 01 00 00 18 08 ................
09DB:0720 00 1D 00 22 02 00 00 18 09 00 1D 00 45 02 00 00 ..."........E...
09DB:0730 18 0A 00 1C 00 65 02 00 00 18 0B 00 00 00 C5 02 .....e..........
09DB:0740 00 00 00 0C 00 00 00 01 03 00 00 00 0D 00 00 00 ................
09DB:0750 36 03 00 00 00 0E 00 00 00 21 04 00 00 00 0F 00 6........!......
09DB:0760 00 00 6B 04 00 00 00 10 00 00 00 91 04 00 00 00 ..k.............
09DB:0770 11 00 00 00 70 05 00 00 00 12 00 00 00 E3 05 00 ....p...........
09DB:0780 00 00 13 00 00 00 07 06 00 00 00 14 00 00 00 3B ...............;
09DB:0790 06 00 00 00 15 00 00 00 49 06 00 00 00 16 00 00 ........I.......
09DB:07A0 00 A2 06 00 00 00 17 00 00 00 06 07 00 00 00 18 ................
09DB:07B0 00 00 00 DF 07 00 00 00 19 00 00 00 F2 07 00 00 ................
09DB:07C0 00 1A 00 00 00 E7 08 00 00 00 1B 00 00 00 F2 08 ................
09DB:07D0 00 00 00 1C 00 00 00 04 09 00 00 00 1D 00 00 00 ................
09DB:07E0 D6 09 00 00 00 1E 00 00 00 F7 09 00 00 00 1F 00 ................
09DB:07F0 00 00 B3 0A 00 00 00 20 00 00 00 CF 0A 00 00 00 ....... ........
09DB:0800 21 00 00 00 E2 0B 00 00 00 22 00 00 00 28 0C 00 !........"...(..
09DB:0810 00 00 23 00 00 00 53 0C 00 00 00 24 00 00 00 D2 ..#...S....$....
09DB:0820 0C 00 00 00 25 00 00 00 FB 0C 00 00 00 26 00 00 ....%........&..
09DB:0830 00 17 0D 00 00 00 27 00 00 00 5F 0D 00 00 00 28 ......'..._....(
09DB:0840 00 00 00 CD 0D 00 00 00 29 00 1A 00 4B 0E 00 00 ........)...K...
