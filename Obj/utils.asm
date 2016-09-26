	.386p
	ifdef ??version
	if ??version GT 500H
	.mmx
	endif
	endif
	model flat
	ifndef	??version
	?debug	macro
	endm
	endif
	?debug	S "E:\prottoss\projects\ucGoZilla\Win\1st_boot\Sources\utils.cpp"
	?debug	T "E:\prottoss\projects\ucGoZilla\Win\1st_boot\Sources\utils.cpp"
_TEXT	segment dword public use32 'CODE'
_TEXT	ends
_DATA	segment dword public use32 'DATA'
_DATA	ends
_BSS	segment dword public use32 'BSS'
_BSS	ends
$$BSYMS	segment byte public use32 'DEBSYM'
$$BSYMS	ends
$$BTYPES	segment byte public use32 'DEBTYP'
$$BTYPES	ends
$$BNAMES	segment byte public use32 'DEBNAM'
$$BNAMES	ends
$$BROWSE	segment byte public use32 'DEBSYM'
$$BROWSE	ends
$$BROWFILE	segment byte public use32 'DEBSYM'
$$BROWFILE	ends
DGROUP	group	_BSS,_DATA
_TEXT	segment dword public use32 'CODE'
@FW_GetPtr$qqsi	segment virtual
@@FW_GetPtr$qqsi	proc	near
?live16385@0:
	?debug	T "E:\prottoss\projects\ucGoZilla\Win\1st_boot\Sources\firmware.h"
	?debug L 19
	push ebp
	mov ebp,esp
	?debug L 24
@1:
	mov eax,dword ptr [ebp+8]
	dec eax
	je        short @5
	dec eax
	je        short @4
	jmp short @2
	?debug L 27
@5:
	mov eax,offset _fw_avr500v2
	jmp short @6
	?debug L 29
@4:
	mov eax,offset _fw_avrice2
	jmp short @6
	?debug L 31
@2:
	xor eax,eax
	?debug L 32
@7:
@6:
	pop ebp
	ret 4
	?debug L 0
@@FW_GetPtr$qqsi	endp
@FW_GetPtr$qqsi	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	db	2
	db	0
	db	0
	db	0
	dw	62
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch1
	dd	?patch2
	dd	?patch3
	df	@@FW_GetPtr$qqsi
	dw	0
	dw	4096
	dw	0
	dw	1
	dw	0
	dw	0
	dw	0
	db	15
	db	64
	db	70
	db	87
	db	95
	db	71
	db	101
	db	116
	db	80
	db	116
	db	114
	db	36
	db	113
	db	113
	db	115
	db	105
	dw	18
	dw	512
	dw	8
	dw	0
	dw	116
	dw	0
	dw	2
	dw	0
	dw	0
	dw	0
?patch1	equ	@7-@@FW_GetPtr$qqsi+4
?patch2	equ	0
?patch3	equ	@7-@@FW_GetPtr$qqsi
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@FW_GetSize$qqsi	segment virtual
@@FW_GetSize$qqsi	proc	near
?live16386@0:
	?debug L 48
	push ebp
	mov ebp,esp
	?debug L 50
@8:
	mov eax,dword ptr [ebp+8]
	dec eax
	je        short @12
	dec eax
	je        short @11
	jmp short @9
	?debug L 53
@12:
	call @@FW_GetSize_avr500v2$qqsv
	jmp short @13
	?debug L 55
@11:
	call @@FW_GetSize_avrice2$qqsv
	jmp short @13
	?debug L 57
@9:
	xor eax,eax
	?debug L 58
@14:
@13:
	pop ebp
	ret 4
	?debug L 0
@@FW_GetSize$qqsi	endp
@FW_GetSize$qqsi	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	63
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch4
	dd	?patch5
	dd	?patch6
	df	@@FW_GetSize$qqsi
	dw	0
	dw	4098
	dw	0
	dw	3
	dw	0
	dw	0
	dw	0
	db	16
	db	64
	db	70
	db	87
	db	95
	db	71
	db	101
	db	116
	db	83
	db	105
	db	122
	db	101
	db	36
	db	113
	db	113
	db	115
	db	105
	dw	18
	dw	512
	dw	8
	dw	0
	dw	116
	dw	0
	dw	4
	dw	0
	dw	0
	dw	0
?patch4	equ	@14-@@FW_GetSize$qqsi+4
?patch5	equ	0
?patch6	equ	@14-@@FW_GetSize$qqsi
	dw	2
	dw	6
$$BSYMS	ends
_BSS	segment dword public use32 'BSS'
_g_MailBox	label	byte
	db	272	dup(?)
_BSS	ends
_TEXT	segment dword public use32 'CODE'
@ShowResult$qqs8__IO_RES	segment virtual
@@ShowResult$qqs8__IO_RES	proc	near
?live16387@0:
	?debug	T "E:\prottoss\projects\ucGoZilla\Win\1st_boot\Sources\utils.cpp"
	?debug L 40
	push ebp
	mov ebp,esp
	?debug L 42
@15:
	mov eax,dword ptr [ebp+8]
	cmp eax,23
	ja        @16
	jmp dword ptr [@42+4*eax]
@42:
	dd @41
	dd @40
	dd @39
	dd @38
	dd @37
	dd @36
	dd @35
	dd @34
	dd @33
	dd @32
	dd @31
	dd @30
	dd @29
	dd @28
	dd @27
	dd @26
	dd @25
	dd @24
	dd @23
	dd @22
	dd @21
	dd @20
	dd @19
	dd @18
	?debug L 45
@41:
	push offset s@
	call @_printf
	pop ecx
	?debug L 46
	jmp @43
	?debug L 48
@36:
	push offset s@+3
	call @_printf
	pop ecx
	?debug L 49
	jmp @43
	?debug L 51
@35:
	push offset s@+45
	call @_printf
	pop ecx
	?debug L 52
	jmp @43
	?debug L 54
@34:
	push offset s@+105
	call @_printf
	pop ecx
	?debug L 55
	jmp @43
	?debug L 57
@33:
	push offset s@+137
	call @_printf
	pop ecx
	?debug L 58
	jmp @43
	?debug L 60
@32:
	push offset s@+182
	call @_printf
	pop ecx
	?debug L 61
	jmp @43
	?debug L 63
@31:
	push offset s@+234
	call @_printf
	pop ecx
	?debug L 64
	jmp @43
	?debug L 66
@30:
	push offset s@+286
	call @_printf
	pop ecx
	?debug L 67
	jmp @43
	?debug L 69
@29:
	push offset s@+317
	call @_printf
	pop ecx
	?debug L 70
	jmp @43
	?debug L 72
@28:
	push offset s@+361
	call @_printf
	pop ecx
	?debug L 73
	jmp @43
	?debug L 75
@27:
	push offset s@+412
	call @_printf
	pop ecx
	?debug L 76
	jmp @43
	?debug L 78
@38:
	push offset s@+463
	call @_printf
	pop ecx
	?debug L 79
	jmp @43
	?debug L 81
@37:
	push offset s@+476
	call @_printf
	pop ecx
	?debug L 82
	jmp @43
	?debug L 84
@26:
	push offset s@+492
	call @_printf
	pop ecx
	?debug L 85
	jmp @43
	?debug L 87
@25:
	push offset s@+505
	call @_printf
	pop ecx
	?debug L 88
	jmp @43
	?debug L 90
@24:
	push offset s@+518
	call @_printf
	pop ecx
	?debug L 91
	jmp short @43
	?debug L 93
@23:
	push offset s@+532
	call @_printf
	pop ecx
	?debug L 94
	jmp short @43
	?debug L 96
@40:
	push offset s@+552
	call @_printf
	pop ecx
	?debug L 97
	jmp short @43
	?debug L 99
@39:
	push offset s@+569
	call @_printf
	pop ecx
	?debug L 100
	jmp short @43
	?debug L 102
@22:
	push offset s@+584
	call @_printf
	pop ecx
	?debug L 103
	jmp short @44
	?debug L 105
@21:
	push offset s@+617
	call @_printf
	pop ecx
	?debug L 106
	jmp short @43
	?debug L 108
@20:
	push offset s@+640
	call @_printf
	pop ecx
	?debug L 109
	jmp short @43
	?debug L 111
@19:
	push offset s@+663
	call @_printf
	pop ecx
	?debug L 112
	jmp short @43
	?debug L 114
@18:
	push offset s@+678
	call @_printf
	pop ecx
	?debug L 115
	jmp short @43
	?debug L 117
@16:
	push offset s@+710
	call @_printf
	pop ecx
	?debug L 118
	?debug L 120
@43:
	push offset s@+724
	call @_printf
	pop ecx
	?debug L 121
@45:
@44:
	pop ebp
	ret 4
	?debug L 0
@@ShowResult$qqs8__IO_RES	endp
@ShowResult$qqs8__IO_RES	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	71
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch7
	dd	?patch8
	dd	?patch9
	df	@@ShowResult$qqs8__IO_RES
	dw	0
	dw	4100
	dw	0
	dw	30
	dw	0
	dw	0
	dw	0
	db	24
	db	64
	db	83
	db	104
	db	111
	db	119
	db	82
	db	101
	db	115
	db	117
	db	108
	db	116
	db	36
	db	113
	db	113
	db	115
	db	56
	db	95
	db	95
	db	73
	db	79
	db	95
	db	82
	db	69
	db	83
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4101
	dw	0
	dw	31
	dw	0
	dw	0
	dw	0
?patch7	equ	@45-@@ShowResult$qqs8__IO_RES+4
?patch8	equ	0
?patch9	equ	@45-@@ShowResult$qqs8__IO_RES
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@CheckCPU$qqsuip14CHIP_MEM_SIZES	segment virtual
@@CheckCPU$qqsuip14CHIP_MEM_SIZES	proc	near
?live16388@0:
	?debug L 126
	push ebp
	mov ebp,esp
	push ecx
	?debug L 130
@46:
	mov eax,dword ptr [ebp+8]
	and eax,224
	mov dword ptr [ebp-4],eax
	?debug L 131
	cmp dword ptr [ebp-4],64
	je        short @47
	?debug L 132
	mov eax,21
	jmp short @48
	?debug L 134
@47:
	mov edx,dword ptr [ebp+8]
	and edx,267386880
	mov dword ptr [ebp-4],edx
	?debug L 135
	cmp dword ptr [ebp-4],117440512
	je        short @49
	?debug L 136
	mov eax,22
	jmp short @48
	?debug L 138
@49:
	mov edx,dword ptr [ebp+12]
	cmp dword ptr [edx],64
	jae       short @50
	?debug L 139
	mov eax,23
	jmp short @48
	?debug L 140
@50:
	xor eax,eax
	?debug L 141
@51:
@48:
	pop ecx
	pop ebp
	ret 8
	?debug L 0
@@CheckCPU$qqsuip14CHIP_MEM_SIZES	endp
@CheckCPU$qqsuip14CHIP_MEM_SIZES	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	79
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch10
	dd	?patch11
	dd	?patch12
	df	@@CheckCPU$qqsuip14CHIP_MEM_SIZES
	dw	0
	dw	4104
	dw	0
	dw	36
	dw	0
	dw	0
	dw	0
	db	32
	db	64
	db	67
	db	104
	db	101
	db	99
	db	107
	db	67
	db	80
	db	85
	db	36
	db	113
	db	113
	db	115
	db	117
	db	105
	db	112
	db	49
	db	52
	db	67
	db	72
	db	73
	db	80
	db	95
	db	77
	db	69
	db	77
	db	95
	db	83
	db	73
	db	90
	db	69
	db	83
	dw	18
	dw	512
	dw	8
	dw	0
	dw	117
	dw	0
	dw	37
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	4105
	dw	0
	dw	38
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65532
	dw	65535
	dw	117
	dw	0
	dw	39
	dw	0
	dw	0
	dw	0
?patch10	equ	@51-@@CheckCPU$qqsuip14CHIP_MEM_SIZES+5
?patch11	equ	0
?patch12	equ	@51-@@CheckCPU$qqsuip14CHIP_MEM_SIZES
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@WriteMemBlock$qqsuipucii	segment virtual
@@WriteMemBlock$qqsuipucii	proc	near
?live16389@0:
	?debug L 146
	push ebp
	mov ebp,esp
	add esp,-24
	?debug L 148
@52:
	mov eax,dword ptr [ebp+16]
	test eax,eax
	jns       short @53
	add eax,15
@53:
	sar eax,4
	mov dword ptr [ebp-4],eax
	?debug L 149
	xor edx,edx
	mov dword ptr [ebp-12],edx
	?debug L 152
	xor ecx,ecx
	mov dword ptr [ebp-8],ecx
	mov eax,dword ptr [ebp-8]
	cmp eax,dword ptr [ebp+16]
	jge       @55
	?debug L 154
@54:
	mov edx,dword ptr [ebp+12]
	mov ecx,dword ptr [ebp-8]
	mov al,byte ptr [edx+ecx]
	mov byte ptr [ebp-13],al
	?debug L 156
@56:
	mov dl,byte ptr [ebp-13]
	push edx
	push dword ptr [ebp+8]
	call @@cmdWriteByte$qqsuiuc
	mov dword ptr [ebp-20],eax
	cmp dword ptr [ebp-20],0
	je        short @57
	mov eax,dword ptr [ebp-20]
	jmp short @58
	?debug L 157
@57:
@59:
@60:
	lea edx,dword ptr [ebp-14]
	push edx
	push dword ptr [ebp+8]
	call @@cmdReadByte$qqsuipuc
	mov dword ptr [ebp-24],eax
	cmp dword ptr [ebp-24],0
	je        short @61
	mov eax,dword ptr [ebp-24]
	jmp short @58
	?debug L 158
@61:
@62:
	mov dl,byte ptr [ebp-13]
	cmp dl,byte ptr [ebp-14]
	je        short @63
	?debug L 160
	xor ecx,ecx
	mov cl,byte ptr [ebp-14]
	push ecx
	xor eax,eax
	mov al,byte ptr [ebp-13]
	push eax
	push dword ptr [ebp+8]
	push offset s@+728
	call @_printf
	add esp,16
	?debug L 161
	mov eax,18
	jmp short @58
	?debug L 163
@63:
	inc dword ptr [ebp+8]
	?debug L 166
	cmp dword ptr [ebp+20],0
	je        short @64
	?debug L 168
	inc dword ptr [ebp-12]
	?debug L 169
	mov edx,dword ptr [ebp-12]
	cmp edx,dword ptr [ebp-4]
	jl        short @65
	?debug L 171
	xor ecx,ecx
	mov dword ptr [ebp-12],ecx
	?debug L 172
	push offset s@+779
	call @_printf
	pop ecx
@65:
@64:
	inc dword ptr [ebp-8]
	mov eax,dword ptr [ebp-8]
	cmp eax,dword ptr [ebp+16]
	jl        @54
	?debug L 177
@55:
	xor eax,eax
	?debug L 178
@67:
@58:
	mov esp,ebp
	pop ebp
	ret 16
	?debug L 0
@@WriteMemBlock$qqsuipucii	endp
@WriteMemBlock$qqsuipucii	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	72
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch13
	dd	?patch14
	dd	?patch15
	df	@@WriteMemBlock$qqsuipucii
	dw	0
	dw	4109
	dw	0
	dw	40
	dw	0
	dw	0
	dw	0
	db	25
	db	64
	db	87
	db	114
	db	105
	db	116
	db	101
	db	77
	db	101
	db	109
	db	66
	db	108
	db	111
	db	99
	db	107
	db	36
	db	113
	db	113
	db	115
	db	117
	db	105
	db	112
	db	117
	db	99
	db	105
	db	105
	dw	18
	dw	512
	dw	8
	dw	0
	dw	117
	dw	0
	dw	41
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	1056
	dw	0
	dw	42
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	16
	dw	0
	dw	116
	dw	0
	dw	43
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	20
	dw	0
	dw	116
	dw	0
	dw	44
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65522
	dw	65535
	dw	32
	dw	0
	dw	45
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65523
	dw	65535
	dw	32
	dw	0
	dw	46
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65524
	dw	65535
	dw	116
	dw	0
	dw	47
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65528
	dw	65535
	dw	116
	dw	0
	dw	48
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65532
	dw	65535
	dw	116
	dw	0
	dw	49
	dw	0
	dw	0
	dw	0
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch16
	df	@56
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65516
	dw	65535
	dw	4101
	dw	0
	dw	50
	dw	0
	dw	0
	dw	0
?patch16	equ	@59-@56
	dw	2
	dw	6
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch17
	df	@60
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65512
	dw	65535
	dw	4101
	dw	0
	dw	51
	dw	0
	dw	0
	dw	0
?patch17	equ	@62-@60
	dw	2
	dw	6
?patch13	equ	@67-@@WriteMemBlock$qqsuipucii+6
?patch14	equ	0
?patch15	equ	@67-@@WriteMemBlock$qqsuipucii
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@WriteFirmware$qqspucii	segment virtual
@@WriteFirmware$qqspucii	proc	near
?live16390@0:
	?debug L 183
	push ebp
	mov ebp,esp
	add esp,-36
	?debug L 185
@68:
	mov dword ptr [ebp-4],1048576
	?debug L 188
	mov dword ptr [ebp-20],offset _g_MailBox
	?debug L 191
	xor eax,eax
	mov dword ptr [ebp-12],eax
	?debug L 192
	call @_wherey
	mov dword ptr [ebp-24],eax
	?debug L 194
	cmp dword ptr [ebp+12],0
	jle       @70
	?debug L 197
@69:
	push 0
	push 272
	push dword ptr [ebp-20]
	call @_memset
	add esp,12
	?debug L 198
	mov edx,dword ptr [ebp-20]
	mov dword ptr [edx+4],2
	?debug L 199
	mov ecx,dword ptr [ebp-4]
	mov eax,dword ptr [ebp-20]
	mov dword ptr [eax+8],ecx
	?debug L 200
	mov edx,dword ptr [ebp+16]
	mov ecx,dword ptr [ebp-20]
	mov dword ptr [ecx+12],edx
	?debug L 201
	mov eax,dword ptr [ebp+16]
	cmp eax,dword ptr [ebp+12]
	jg        short @71
	?debug L 202
	push dword ptr [ebp+16]
	push dword ptr [ebp+8]
	mov edx,dword ptr [ebp-20]
	add edx,16
	push edx
	call @_memcpy
	add esp,12
	jmp short @72
	?debug L 204
@71:
	push dword ptr [ebp+12]
	push dword ptr [ebp+8]
	mov ecx,dword ptr [ebp-20]
	add ecx,16
	push ecx
	call @_memcpy
	add esp,12
	?debug L 205
@72:
	xor eax,eax
	mov dword ptr [ebp-16],eax
	?debug L 207
	push dword ptr [ebp-24]
	push 0
	call @_gotoxy
	add esp,8
	?debug L 208
	push offset s@+781
	call @_printf
	pop ecx
	?debug L 209
	push dword ptr [ebp-24]
	push 0
	call @_gotoxy
	add esp,8
	?debug L 210
	push dword ptr [ebp-12]
	push offset s@+838
	call @_printf
	add esp,8
	?debug L 213
@73:
	push 0
	push 272
	push dword ptr [ebp-20]
	push 2105348
	call @@WriteMemBlock$qqsuipucii
	mov dword ptr [ebp-28],eax
	cmp dword ptr [ebp-28],0
	je        short @74
	mov eax,dword ptr [ebp-28]
	jmp @75
	?debug L 216
@74:
@76:
@77:
	push 2105344
	call @@cmdGo$qqsui
	mov dword ptr [ebp-32],eax
	cmp dword ptr [ebp-32],0
	je        short @78
	mov eax,dword ptr [ebp-32]
	jmp short @75
	?debug L 219
@78:
@79:
@80:
	lea edx,dword ptr [ebp-16]
	push edx
	push 2105348
	call @@cmdReadWord$qqsuipui
	mov dword ptr [ebp-36],eax
	cmp dword ptr [ebp-36],0
	je        short @81
	mov eax,dword ptr [ebp-36]
	jmp short @75
	?debug L 220
@81:
@82:
	cmp dword ptr [ebp-16],0
	je        short @83
	?debug L 221
	mov eax,20
	jmp short @75
	?debug L 223
@83:
	push offset s@+860
	call @_printf
	pop ecx
	?debug L 226
	mov edx,dword ptr [ebp+16]
	add dword ptr [ebp-4],edx
	?debug L 227
	mov ecx,dword ptr [ebp+16]
	sub dword ptr [ebp+12],ecx
	?debug L 228
	mov eax,dword ptr [ebp+16]
	add dword ptr [ebp+8],eax
	?debug L 229
	inc dword ptr [ebp-12]
	?debug L 194
	cmp dword ptr [ebp+12],0
	jg        @69
	?debug L 232
@70:
	push dword ptr [ebp-24]
	push 0
	call @_gotoxy
	add esp,8
	?debug L 233
	push offset s@+865
	call @_printf
	pop ecx
	?debug L 234
	push dword ptr [ebp-24]
	push 0
	call @_gotoxy
	add esp,8
	?debug L 235
	xor eax,eax
	?debug L 236
@84:
@75:
	mov esp,ebp
	pop ebp
	ret 12
	?debug L 0
@@WriteFirmware$qqspucii	endp
@WriteFirmware$qqspucii	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	70
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch18
	dd	?patch19
	dd	?patch20
	df	@@WriteFirmware$qqspucii
	dw	0
	dw	4111
	dw	0
	dw	52
	dw	0
	dw	0
	dw	0
	db	23
	db	64
	db	87
	db	114
	db	105
	db	116
	db	101
	db	70
	db	105
	db	114
	db	109
	db	119
	db	97
	db	114
	db	101
	db	36
	db	113
	db	113
	db	115
	db	112
	db	117
	db	99
	db	105
	db	105
	dw	18
	dw	512
	dw	8
	dw	0
	dw	1056
	dw	0
	dw	53
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	116
	dw	0
	dw	54
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	16
	dw	0
	dw	116
	dw	0
	dw	55
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65512
	dw	65535
	dw	116
	dw	0
	dw	62
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65516
	dw	65535
	dw	4113
	dw	0
	dw	63
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65520
	dw	65535
	dw	117
	dw	0
	dw	64
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65524
	dw	65535
	dw	116
	dw	0
	dw	65
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65528
	dw	65535
	dw	116
	dw	0
	dw	66
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65532
	dw	65535
	dw	117
	dw	0
	dw	67
	dw	0
	dw	0
	dw	0
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch21
	df	@73
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65508
	dw	65535
	dw	4101
	dw	0
	dw	68
	dw	0
	dw	0
	dw	0
?patch21	equ	@76-@73
	dw	2
	dw	6
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch22
	df	@77
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65504
	dw	65535
	dw	4101
	dw	0
	dw	69
	dw	0
	dw	0
	dw	0
?patch22	equ	@79-@77
	dw	2
	dw	6
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch23
	df	@80
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65500
	dw	65535
	dw	4101
	dw	0
	dw	70
	dw	0
	dw	0
	dw	0
?patch23	equ	@82-@80
	dw	2
	dw	6
?patch18	equ	@84-@@WriteFirmware$qqspucii+6
?patch19	equ	0
?patch20	equ	@84-@@WriteFirmware$qqspucii
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@SelectFirmware$qqsppucpui	segment virtual
@@SelectFirmware$qqsppucpui	proc	near
?live16391@0:
	?debug L 241
	push ebp
	mov ebp,esp
	add esp,-8
	?debug L 243
@85:
	mov byte ptr [ebp-2],0
	?debug L 246
	push offset s@+921
	call @_printf
	pop ecx
	?debug L 247
	push offset s@+924
	call @_printf
	pop ecx
	?debug L 248
	push offset s@+945
	call @_printf
	pop ecx
	?debug L 249
	push offset s@+970
	call @_printf
	pop ecx
	?debug L 250
	push offset s@+999
	call @_printf
	pop ecx
	?debug L 251
	push offset s@+1030
	call @_printf
	pop ecx
	?debug L 254
	call @_wherey
	mov dword ptr [ebp-8],eax
	?debug L 255
	cmp byte ptr [ebp-2],0
	jne       short @87
	?debug L 257
@86:
	call @_getch
	mov byte ptr [ebp-1],al
	?debug L 258
	push dword ptr [ebp-8]
	push 0
	call @_gotoxy
	add esp,8
	?debug L 259
	mov al,byte ptr [ebp-1]
	sub al,48
	je        short @92
	dec al
	je        short @91
	dec al
	je        short @90
	jmp short @88
	?debug L 262
@92:
	xor eax,eax
	jmp short @93
	?debug L 264
@91:
	mov byte ptr [ebp-2],1
	?debug L 265
	jmp short @94
	?debug L 267
@90:
	mov byte ptr [ebp-2],2
	?debug L 268
	?debug L 255
@88:
@94:
	cmp byte ptr [ebp-2],0
	je        short @86
	?debug L 272
@87:
	xor edx,edx
	mov dl,byte ptr [ebp-2]
	push edx
	call @@FW_GetPtr$qqsi
	mov ecx,dword ptr [ebp+8]
	mov dword ptr [ecx],eax
	?debug L 273
	xor eax,eax
	mov al,byte ptr [ebp-2]
	push eax
	call @@FW_GetSize$qqsi
	mov edx,dword ptr [ebp+12]
	mov dword ptr [edx],eax
	?debug L 274
	mov eax,1
	?debug L 275
@95:
@93:
	pop ecx
	pop ecx
	pop ebp
	ret 8
	?debug L 0
@@SelectFirmware$qqsppucpui	endp
@SelectFirmware$qqsppucpui	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	73
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch24
	dd	?patch25
	dd	?patch26
	df	@@SelectFirmware$qqsppucpui
	dw	0
	dw	4117
	dw	0
	dw	71
	dw	0
	dw	0
	dw	0
	db	26
	db	64
	db	83
	db	101
	db	108
	db	101
	db	99
	db	116
	db	70
	db	105
	db	114
	db	109
	db	119
	db	97
	db	114
	db	101
	db	36
	db	113
	db	113
	db	115
	db	112
	db	112
	db	117
	db	99
	db	112
	db	117
	db	105
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4118
	dw	0
	dw	72
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	1141
	dw	0
	dw	73
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65528
	dw	65535
	dw	116
	dw	0
	dw	74
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65534
	dw	65535
	dw	32
	dw	0
	dw	75
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65535
	dw	65535
	dw	32
	dw	0
	dw	76
	dw	0
	dw	0
	dw	0
?patch24	equ	@95-@@SelectFirmware$qqsppucpui+6
?patch25	equ	0
?patch26	equ	@95-@@SelectFirmware$qqsppucpui
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@UserWait$qqsv	segment virtual
@@UserWait$qqsv	proc	near
?live16392@0:
	?debug L 280
	push ebp
	mov ebp,esp
	add esp,-8
	?debug L 285
@96:
	call @_wherey
	mov dword ptr [ebp-8],eax
	?debug L 288
@97:
	call @_getch
	mov byte ptr [ebp-1],al
	?debug L 289
	push dword ptr [ebp-8]
	push 0
	call @_gotoxy
	add esp,8
	?debug L 291
	cmp byte ptr [ebp-1],121
	je        short @99
	cmp byte ptr [ebp-1],89
	jne       short @98
	?debug L 292
@99:
	mov eax,1
	jmp short @100
	?debug L 293
@98:
	cmp byte ptr [ebp-1],110
	je        short @102
	cmp byte ptr [ebp-1],78
	jne       short @97
	?debug L 294
@102:
	xor eax,eax
	?debug L 286
	?debug L 296
@104:
@100:
	pop ecx
	pop ecx
	pop ebp
	ret 
	?debug L 0
@@UserWait$qqsv	endp
@UserWait$qqsv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	61
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch27
	dd	?patch28
	dd	?patch29
	df	@@UserWait$qqsv
	dw	0
	dw	4120
	dw	0
	dw	77
	dw	0
	dw	0
	dw	0
	db	14
	db	64
	db	85
	db	115
	db	101
	db	114
	db	87
	db	97
	db	105
	db	116
	db	36
	db	113
	db	113
	db	115
	db	118
	dw	18
	dw	512
	dw	65528
	dw	65535
	dw	116
	dw	0
	dw	78
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65535
	dw	65535
	dw	32
	dw	0
	dw	79
	dw	0
	dw	0
	dw	0
?patch27	equ	@104-@@UserWait$qqsv+4
?patch28	equ	0
?patch29	equ	@104-@@UserWait$qqsv
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
s@	label	byte
	;	s@+0:
	db	"OK",0
	;	s@+3:
	db	"Failed SetupDiGetClassDevs(...) operation",0
	;	s@+45:
	db	"Failed memory allocate for PSP_INTERFACE_DEVICE_DETAIL_DATA"
	db	0
	;	s@+105:
	db	"Failed WriteFile(...) operation",0
	;	s@+137:
	db	"Failed create sync event for write operation",0
	;	s@+182:
	db	"Failed GetOverlappedResult(...) for write operation",0
	;	s@+234:
	db	"Failed WaitForSingleObject(...) for write operation",0
	;	s@+286:
	db	"Failed ReadFile(...) operation",0
	;	s@+317:
	db	"Failed create sync event for read operation",0
	;	s@+361:
	db	"Failed GetOverlappedResult(...) for read operation",0
	;	s@+412:
	db	"Failed WaitForSingleObject(...) for read operation",0
	;	s@+463:
	db	"Bad responce",0
	;	s@+476:
	db	"Responce to big",0
	;	s@+492:
	db	"Bad argument",0
	;	s@+505:
	db	"Read timeout",0
	;	s@+518:
	db	"Write timeout",0
	;	s@+532:
	db	"Verification failed",0
	;	s@+552:
	db	"Device not found",0
	;	s@+569:
	db	"Failed to open",0
	;	s@+584:
	db	"Timeout...My be inited before?",13,10,0
	;	s@+617:
	db	"MCU flash write failed",0
	;	s@+640:
	db	"MCU architecture wrong",0
	;	s@+663:
	db	"MCU type wrong",0
	;	s@+678:
	db	"MCU Flash memory size too small",0
	;	s@+710:
	db	"Unknown error",0
	;	s@+724:
	db	"!",13,10,0,13,10
	;	s@+730:
	db	"    At address 0x%08X: got 0x%08X, read 0x%08X",13,10,0
	;	s@+779:
	db	"#",0
	;	s@+781:
	db	"                                                       ",13
	db	0
	;	s@+838:
	db	"    Send block %03d  ",0
	;	s@+860:
	db	"  OK",0
	;	s@+865:
	db	"                                                       ",0
	db	13,10,0
	;	s@+924:
	db	"- Select firmware:",13,10,0,9
	;	s@+946:
	db	"0",9
	;	s@+948:
	db	"- exit from program",13,10,0,9
	;	s@+971:
	db	"1",9
	;	s@+973:
	db	"- AVR STK500v2 emulator",13,10,0,9
	;	s@+1000:
	db	"2",9
	;	s@+1002:
	db	"- AVR JTAGICEmk2 emulator",13,10,0,13,10,0
	align	4
_DATA	ends
_TEXT	segment dword public use32 'CODE'
_TEXT	ends
 extrn _fw_avrice2:byte
 extrn _fw_avr500v2:byte
@@FW_GetSize_avrice2$qqsv equ @FW_GetSize_avrice2$qqsv
 extrn @FW_GetSize_avrice2$qqsv:near
@@FW_GetSize_avr500v2$qqsv equ @FW_GetSize_avr500v2$qqsv
 extrn @FW_GetSize_avr500v2$qqsv:near
	public	_g_MailBox
@_printf equ _printf
 extrn _printf:near
@@cmdWriteByte$qqsuiuc equ @cmdWriteByte$qqsuiuc
 extrn @cmdWriteByte$qqsuiuc:near
@@cmdReadByte$qqsuipuc equ @cmdReadByte$qqsuipuc
 extrn @cmdReadByte$qqsuipuc:near
@_wherey equ _wherey
 extrn _wherey:near
@_memset equ _memset
 extrn _memset:near
@_memcpy equ _memcpy
 extrn _memcpy:near
@_gotoxy equ _gotoxy
 extrn _gotoxy:near
@@cmdGo$qqsui equ @cmdGo$qqsui
 extrn @cmdGo$qqsui:near
@@cmdReadWord$qqsuipui equ @cmdReadWord$qqsuipui
 extrn @cmdReadWord$qqsuipui:near
@_getch equ _getch
 extrn _getch:near
 ?debug C 9F757569642E6C6962
 ?debug C 9F757569642E6C6962
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	22
	dw	514
	df	_g_MailBox
	dw	0
	dw	4114
	dw	0
	dw	80
	dw	0
	dw	0
	dw	0
	dw	?patch30
	dw	37
	dw	81
	dw	0
	dw	0
	dw	0
	dw	0
?patch30	equ	12
	dw	16
	dw	4
	dw	117
	dw	0
	dw	0
	dw	82
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	116
	dw	0
	dw	0
	dw	83
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	113
	dw	0
	dw	0
	dw	84
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	113
	dw	0
	dw	0
	dw	85
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	86
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	34
	dw	0
	dw	0
	dw	87
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	33
	dw	0
	dw	0
	dw	88
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	32
	dw	0
	dw	0
	dw	89
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1056
	dw	0
	dw	0
	dw	90
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	34
	dw	0
	dw	0
	dw	91
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	116
	dw	0
	dw	0
	dw	92
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	32
	dw	0
	dw	0
	dw	93
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	33
	dw	0
	dw	0
	dw	94
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	64
	dw	0
	dw	0
	dw	95
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1056
	dw	0
	dw	0
	dw	96
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1056
	dw	0
	dw	0
	dw	97
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	98
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	4141
	dw	0
	dw	0
	dw	99
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	116
	dw	0
	dw	0
	dw	100
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	117
	dw	0
	dw	0
	dw	101
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1141
	dw	0
	dw	0
	dw	102
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	34
	dw	0
	dw	0
	dw	103
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	16
	dw	0
	dw	0
	dw	104
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	17
	dw	0
	dw	0
	dw	105
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	116
	dw	0
	dw	0
	dw	106
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	118
	dw	0
	dw	0
	dw	107
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	32
	dw	0
	dw	0
	dw	108
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1056
	dw	0
	dw	0
	dw	109
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	33
	dw	0
	dw	0
	dw	110
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	117
	dw	0
	dw	0
	dw	111
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1141
	dw	0
	dw	0
	dw	112
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	119
	dw	0
	dw	0
	dw	113
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	116
	dw	0
	dw	0
	dw	114
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	117
	dw	0
	dw	0
	dw	115
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1141
	dw	0
	dw	0
	dw	116
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	117
	dw	0
	dw	0
	dw	117
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1141
	dw	0
	dw	0
	dw	118
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	116
	dw	0
	dw	0
	dw	119
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	117
	dw	0
	dw	0
	dw	120
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1141
	dw	0
	dw	0
	dw	121
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	18
	dw	0
	dw	0
	dw	122
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	34
	dw	0
	dw	0
	dw	123
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	33
	dw	0
	dw	0
	dw	124
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	17
	dw	0
	dw	0
	dw	125
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	18
	dw	0
	dw	0
	dw	126
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	34
	dw	0
	dw	0
	dw	127
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	34
	dw	0
	dw	0
	dw	128
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	18
	dw	0
	dw	0
	dw	129
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	34
	dw	0
	dw	0
	dw	130
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	118
	dw	0
	dw	0
	dw	131
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	119
	dw	0
	dw	0
	dw	132
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	119
	dw	0
	dw	0
	dw	133
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	34
	dw	0
	dw	0
	dw	134
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	135
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	136
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	112
	dw	0
	dw	0
	dw	137
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	17
	dw	0
	dw	0
	dw	138
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	18
	dw	0
	dw	0
	dw	139
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	113
	dw	0
	dw	0
	dw	140
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	4129
	dw	0
	dw	0
	dw	141
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	4129
	dw	0
	dw	0
	dw	142
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	4129
	dw	0
	dw	0
	dw	143
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	4129
	dw	0
	dw	0
	dw	144
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	112
	dw	0
	dw	0
	dw	145
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	32
	dw	0
	dw	0
	dw	146
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1056
	dw	0
	dw	0
	dw	147
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	4129
	dw	0
	dw	0
	dw	148
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	4129
	dw	0
	dw	0
	dw	149
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	4129
	dw	0
	dw	0
	dw	150
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	4129
	dw	0
	dw	0
	dw	151
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	152
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	32
	dw	0
	dw	0
	dw	153
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	33
	dw	0
	dw	0
	dw	154
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	34
	dw	0
	dw	0
	dw	155
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	18
	dw	0
	dw	0
	dw	156
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	112
	dw	0
	dw	0
	dw	157
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	34
	dw	0
	dw	0
	dw	158
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	33
	dw	0
	dw	0
	dw	159
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	118
	dw	0
	dw	0
	dw	160
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	119
	dw	0
	dw	0
	dw	161
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	118
	dw	0
	dw	0
	dw	162
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	119
	dw	0
	dw	0
	dw	163
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	32
	dw	0
	dw	0
	dw	164
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1056
	dw	0
	dw	0
	dw	165
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	34
	dw	0
	dw	0
	dw	166
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	167
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	168
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	169
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	34
	dw	0
	dw	0
	dw	170
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	33
	dw	0
	dw	0
	dw	171
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	32
	dw	0
	dw	0
	dw	172
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1056
	dw	0
	dw	0
	dw	173
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	34
	dw	0
	dw	0
	dw	174
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	34
	dw	0
	dw	0
	dw	175
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	117
	dw	0
	dw	0
	dw	176
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	18
	dw	0
	dw	0
	dw	177
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	18
	dw	0
	dw	0
	dw	178
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	179
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	180
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	33
	dw	0
	dw	0
	dw	181
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	182
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	183
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	184
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	185
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	186
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	187
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	188
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	189
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	190
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	191
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	192
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	193
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	194
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	195
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	196
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	197
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	198
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	199
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	200
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	201
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	202
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	203
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	204
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	205
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	206
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	207
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	208
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	209
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	210
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	211
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	212
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	116
	dw	0
	dw	0
	dw	213
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	214
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	34
	dw	0
	dw	0
	dw	215
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	18
	dw	0
	dw	0
	dw	216
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	18
	dw	0
	dw	0
	dw	217
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	18
	dw	0
	dw	0
	dw	218
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	18
	dw	0
	dw	0
	dw	219
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	32
	dw	0
	dw	0
	dw	220
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	33
	dw	0
	dw	0
	dw	221
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	222
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	3
	dw	0
	dw	0
	dw	223
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	3
	dw	0
	dw	0
	dw	224
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	3
	dw	0
	dw	0
	dw	225
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	226
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	227
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	228
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	229
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	34
	dw	0
	dw	0
	dw	230
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	34
	dw	0
	dw	0
	dw	231
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	34
	dw	0
	dw	0
	dw	232
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	34
	dw	0
	dw	0
	dw	233
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	34
	dw	0
	dw	0
	dw	234
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	18
	dw	0
	dw	0
	dw	235
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	34
	dw	0
	dw	0
	dw	236
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	34
	dw	0
	dw	0
	dw	237
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	34
	dw	0
	dw	0
	dw	238
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	239
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	240
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	241
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	242
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	117
	dw	0
	dw	0
	dw	243
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	117
	dw	0
	dw	0
	dw	244
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1141
	dw	0
	dw	0
	dw	245
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	246
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	247
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	248
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	249
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	250
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	251
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	252
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	253
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	254
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	255
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	34
	dw	0
	dw	0
	dw	256
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	257
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	34
	dw	0
	dw	0
	dw	258
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	117
	dw	0
	dw	0
	dw	259
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	260
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	18
	dw	0
	dw	0
	dw	261
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	262
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	263
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	264
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	265
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	266
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	267
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	268
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	269
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	33
	dw	0
	dw	0
	dw	270
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	33
	dw	0
	dw	0
	dw	271
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	32
	dw	0
	dw	0
	dw	272
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	33
	dw	0
	dw	0
	dw	273
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	117
	dw	0
	dw	0
	dw	274
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	34
	dw	0
	dw	0
	dw	275
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	117
	dw	0
	dw	0
	dw	276
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	117
	dw	0
	dw	0
	dw	277
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	34
	dw	0
	dw	0
	dw	278
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	34
	dw	0
	dw	0
	dw	279
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	34
	dw	0
	dw	0
	dw	280
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	281
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	282
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	283
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	284
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	285
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	286
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	287
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	288
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	32
	dw	0
	dw	0
	dw	289
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	32
	dw	0
	dw	0
	dw	290
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	32
	dw	0
	dw	0
	dw	291
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	292
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	34
	dw	0
	dw	0
	dw	293
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1056
	dw	0
	dw	0
	dw	294
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	34
	dw	0
	dw	0
	dw	295
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	296
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	297
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	113
	dw	0
	dw	0
	dw	298
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	65
	dw	0
	dw	0
	dw	299
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	18
	dw	0
	dw	0
	dw	300
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	301
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	33
	dw	0
	dw	0
	dw	302
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	303
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	65
	dw	0
	dw	0
	dw	304
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	17
	dw	0
	dw	0
	dw	305
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	33
	dw	0
	dw	0
	dw	306
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	34
	dw	0
	dw	0
	dw	307
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	33
	dw	0
	dw	0
	dw	308
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	33
	dw	0
	dw	0
	dw	309
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	34
	dw	0
	dw	0
	dw	310
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	34
	dw	0
	dw	0
	dw	311
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	34
	dw	0
	dw	0
	dw	312
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	34
	dw	0
	dw	0
	dw	313
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	314
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	18
	dw	0
	dw	0
	dw	315
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	18
	dw	0
	dw	0
	dw	316
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	34
	dw	0
	dw	0
	dw	317
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	33
	dw	0
	dw	0
	dw	318
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	33
	dw	0
	dw	0
	dw	319
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	33
	dw	0
	dw	0
	dw	320
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	321
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	322
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	323
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	324
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	1027
	dw	0
	dw	0
	dw	325
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	18
	dw	0
	dw	0
	dw	326
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	4114
	dw	0
	dw	1
	dw	327
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	4114
	dw	0
	dw	0
	dw	328
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	4113
	dw	0
	dw	0
	dw	329
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	4101
	dw	0
	dw	1
	dw	330
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	4101
	dw	0
	dw	0
	dw	331
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	4106
	dw	0
	dw	1
	dw	332
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	4106
	dw	0
	dw	0
	dw	333
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	4105
	dw	0
	dw	0
	dw	334
	dw	0
	dw	0
	dw	0
	dw	?patch31
	dw	38
	dw	360
	dw	335
	dw	0
	dw	336
	dw	0
	dw	337
	dw	0
	dw	338
	dw	0
	dw	339
	dw	0
	dw	340
	dw	0
	dw	341
	dw	0
	dw	342
	dw	0
	dw	343
	dw	0
	dw	344
	dw	0
	dw	345
	dw	0
	dw	346
	dw	0
	dw	347
	dw	0
	dw	348
	dw	0
	dw	349
	dw	0
	dw	350
	dw	0
	dw	351
	dw	0
	dw	352
	dw	0
	dw	353
	dw	0
	dw	354
	dw	0
	dw	355
	dw	0
	dw	356
	dw	0
	dw	357
	dw	0
	dw	358
	dw	0
	dw	359
	dw	0
	dw	360
	dw	0
	dw	361
	dw	0
	dw	362
	dw	0
	dw	363
	dw	0
	dw	364
	dw	0
	dw	365
	dw	0
	dw	366
	dw	0
	dw	367
	dw	0
	dw	368
	dw	0
	dw	369
	dw	0
	dw	370
	dw	0
	dw	371
	dw	0
	dw	372
	dw	0
	dw	373
	dw	0
	dw	374
	dw	0
	dw	375
	dw	0
	dw	376
	dw	0
	dw	377
	dw	0
	dw	378
	dw	0
	dw	379
	dw	0
	dw	380
	dw	0
	dw	381
	dw	0
	dw	382
	dw	0
	dw	383
	dw	0
	dw	384
	dw	0
	dw	385
	dw	0
	dw	386
	dw	0
	dw	387
	dw	0
	dw	388
	dw	0
	dw	389
	dw	0
	dw	390
	dw	0
	dw	391
	dw	0
	dw	392
	dw	0
	dw	393
	dw	0
	dw	394
	dw	0
	dw	395
	dw	0
	dw	396
	dw	0
	dw	397
	dw	0
	dw	398
	dw	0
	dw	399
	dw	0
	dw	400
	dw	0
	dw	401
	dw	0
	dw	402
	dw	0
	dw	403
	dw	0
	dw	404
	dw	0
	dw	405
	dw	0
	dw	406
	dw	0
	dw	407
	dw	0
	dw	408
	dw	0
	dw	409
	dw	0
	dw	410
	dw	0
	dw	411
	dw	0
	dw	412
	dw	0
	dw	413
	dw	0
	dw	414
	dw	0
	dw	415
	dw	0
	dw	416
	dw	0
	dw	417
	dw	0
	dw	418
	dw	0
	dw	419
	dw	0
	dw	420
	dw	0
	dw	421
	dw	0
	dw	422
	dw	0
	dw	423
	dw	0
	dw	424
	dw	0
	dw	425
	dw	0
	dw	426
	dw	0
	dw	427
	dw	0
	dw	428
	dw	0
	dw	429
	dw	0
	dw	430
	dw	0
	dw	431
	dw	0
	dw	432
	dw	0
	dw	433
	dw	0
	dw	434
	dw	0
	dw	435
	dw	0
	dw	436
	dw	0
	dw	437
	dw	0
	dw	438
	dw	0
	dw	439
	dw	0
	dw	440
	dw	0
	dw	441
	dw	0
	dw	442
	dw	0
	dw	443
	dw	0
	dw	444
	dw	0
	dw	445
	dw	0
	dw	446
	dw	0
	dw	447
	dw	0
	dw	448
	dw	0
	dw	449
	dw	0
	dw	450
	dw	0
	dw	451
	dw	0
	dw	452
	dw	0
	dw	453
	dw	0
	dw	454
	dw	0
	dw	455
	dw	0
	dw	456
	dw	0
	dw	457
	dw	0
	dw	458
	dw	0
	dw	459
	dw	0
	dw	460
	dw	0
	dw	461
	dw	0
	dw	462
	dw	0
	dw	463
	dw	0
	dw	464
	dw	0
	dw	465
	dw	0
	dw	466
	dw	0
	dw	467
	dw	0
	dw	468
	dw	0
	dw	469
	dw	0
	dw	470
	dw	0
	dw	471
	dw	0
	dw	472
	dw	0
	dw	473
	dw	0
	dw	474
	dw	0
	dw	475
	dw	0
	dw	476
	dw	0
	dw	477
	dw	0
	dw	478
	dw	0
	dw	479
	dw	0
	dw	480
	dw	0
	dw	481
	dw	0
	dw	482
	dw	0
	dw	483
	dw	0
	dw	484
	dw	0
	dw	485
	dw	0
	dw	486
	dw	0
	dw	487
	dw	0
	dw	488
	dw	0
	dw	489
	dw	0
	dw	490
	dw	0
	dw	491
	dw	0
	dw	492
	dw	0
	dw	493
	dw	0
	dw	494
	dw	0
	dw	495
	dw	0
	dw	496
	dw	0
	dw	497
	dw	0
	dw	498
	dw	0
	dw	499
	dw	0
	dw	500
	dw	0
	dw	501
	dw	0
	dw	502
	dw	0
	dw	503
	dw	0
	dw	504
	dw	0
	dw	505
	dw	0
	dw	506
	dw	0
	dw	507
	dw	0
	dw	508
	dw	0
	dw	509
	dw	0
	dw	510
	dw	0
	dw	511
	dw	0
	dw	512
	dw	0
	dw	513
	dw	0
	dw	514
	dw	0
	dw	515
	dw	0
	dw	516
	dw	0
	dw	517
	dw	0
	dw	518
	dw	0
	dw	519
	dw	0
	dw	520
	dw	0
	dw	521
	dw	0
	dw	522
	dw	0
	dw	523
	dw	0
	dw	524
	dw	0
	dw	525
	dw	0
	dw	526
	dw	0
	dw	527
	dw	0
	dw	528
	dw	0
	dw	529
	dw	0
	dw	530
	dw	0
	dw	531
	dw	0
	dw	532
	dw	0
	dw	533
	dw	0
	dw	534
	dw	0
	dw	535
	dw	0
	dw	536
	dw	0
	dw	537
	dw	0
	dw	538
	dw	0
	dw	539
	dw	0
	dw	540
	dw	0
	dw	541
	dw	0
	dw	542
	dw	0
	dw	543
	dw	0
	dw	544
	dw	0
	dw	545
	dw	0
	dw	546
	dw	0
	dw	547
	dw	0
	dw	548
	dw	0
	dw	549
	dw	0
	dw	550
	dw	0
	dw	551
	dw	0
	dw	552
	dw	0
	dw	553
	dw	0
	dw	554
	dw	0
	dw	555
	dw	0
	dw	556
	dw	0
	dw	557
	dw	0
	dw	558
	dw	0
	dw	559
	dw	0
	dw	560
	dw	0
	dw	561
	dw	0
	dw	562
	dw	0
	dw	563
	dw	0
	dw	564
	dw	0
	dw	565
	dw	0
	dw	566
	dw	0
	dw	567
	dw	0
	dw	568
	dw	0
	dw	569
	dw	0
	dw	570
	dw	0
	dw	571
	dw	0
	dw	572
	dw	0
	dw	573
	dw	0
	dw	574
	dw	0
	dw	575
	dw	0
	dw	576
	dw	0
	dw	577
	dw	0
	dw	578
	dw	0
	dw	579
	dw	0
	dw	580
	dw	0
	dw	581
	dw	0
	dw	582
	dw	0
	dw	583
	dw	0
	dw	584
	dw	0
	dw	585
	dw	0
	dw	586
	dw	0
	dw	587
	dw	0
	dw	588
	dw	0
	dw	589
	dw	0
	dw	590
	dw	0
	dw	591
	dw	0
	dw	592
	dw	0
	dw	593
	dw	0
	dw	594
	dw	0
	dw	595
	dw	0
	dw	596
	dw	0
	dw	597
	dw	0
	dw	598
	dw	0
	dw	599
	dw	0
	dw	600
	dw	0
	dw	601
	dw	0
	dw	602
	dw	0
	dw	603
	dw	0
	dw	604
	dw	0
	dw	605
	dw	0
	dw	606
	dw	0
	dw	607
	dw	0
	dw	608
	dw	0
	dw	609
	dw	0
	dw	610
	dw	0
	dw	611
	dw	0
	dw	612
	dw	0
	dw	613
	dw	0
	dw	614
	dw	0
	dw	615
	dw	0
	dw	616
	dw	0
	dw	617
	dw	0
	dw	618
	dw	0
	dw	619
	dw	0
	dw	620
	dw	0
	dw	621
	dw	0
	dw	622
	dw	0
	dw	623
	dw	0
	dw	624
	dw	0
	dw	625
	dw	0
	dw	626
	dw	0
	dw	627
	dw	0
	dw	628
	dw	0
	dw	629
	dw	0
	dw	630
	dw	0
	dw	631
	dw	0
	dw	632
	dw	0
	dw	633
	dw	0
	dw	634
	dw	0
	dw	635
	dw	0
	dw	636
	dw	0
	dw	637
	dw	0
	dw	638
	dw	0
	dw	639
	dw	0
	dw	640
	dw	0
	dw	641
	dw	0
	dw	642
	dw	0
	dw	643
	dw	0
	dw	644
	dw	0
	dw	645
	dw	0
	dw	646
	dw	0
	dw	647
	dw	0
	dw	648
	dw	0
	dw	649
	dw	0
	dw	650
	dw	0
	dw	651
	dw	0
	dw	652
	dw	0
	dw	653
	dw	0
	dw	654
	dw	0
	dw	655
	dw	0
	dw	656
	dw	0
	dw	657
	dw	0
	dw	658
	dw	0
	dw	659
	dw	0
	dw	660
	dw	0
	dw	661
	dw	0
	dw	662
	dw	0
	dw	663
	dw	0
	dw	664
	dw	0
	dw	665
	dw	0
	dw	666
	dw	0
	dw	667
	dw	0
	dw	668
	dw	0
	dw	669
	dw	0
	dw	670
	dw	0
	dw	671
	dw	0
	dw	672
	dw	0
	dw	673
	dw	0
	dw	674
	dw	0
	dw	675
	dw	0
	dw	676
	dw	0
	dw	677
	dw	0
	dw	678
	dw	0
	dw	679
	dw	0
	dw	680
	dw	0
	dw	681
	dw	0
	dw	682
	dw	0
	dw	683
	dw	0
	dw	684
	dw	0
	dw	685
	dw	0
	dw	686
	dw	0
	dw	687
	dw	0
	dw	688
	dw	0
	dw	689
	dw	0
	dw	690
	dw	0
	dw	691
	dw	0
	dw	692
	dw	0
	dw	693
	dw	0
	dw	694
	dw	0
?patch31	equ	1444
	dw	?patch32
	dw	1
	db	3
	db	1
	db	0
	db	24
	db	9
	db	66
	db	67
	db	67
	db	51
	db	50
	db	32
	db	53
	db	46
	db	54
?patch32	equ	16
$$BSYMS	ends
$$BTYPES	segment byte public use32 'DEBTYP'
	db 2,0,0,0,14,0,8,0,32,4,0,0,7,0,1,0
	db 1,16,0,0,8,0,1,2,1,0,116,0,0,0,14,0
	db 8,0,116,0,0,0,7,0,1,0,3,16,0,0,8,0
	db 1,2,1,0,116,0,0,0,14,0,8,0,3,0,0,0
	db 7,0,1,0,7,16,0,0,20,0,7,0,24,0,116,0
	db 0,0,6,16,0,0,0,0,0,0,5,0,0,0,128,1
	db 4,2,3,4,0,0,6,0,0,0,0,0,0,0,0,0
	db 242,241,3,4,0,0,7,0,0,0,0,0,0,0,1,0
	db 242,241,3,4,0,0,8,0,0,0,0,0,0,0,2,0
	db 242,241,3,4,0,0,9,0,0,0,0,0,0,0,3,0
	db 242,241,3,4,0,0,10,0,0,0,0,0,0,0,4,0
	db 242,241,3,4,0,0,11,0,0,0,0,0,0,0,5,0
	db 242,241,3,4,0,0,12,0,0,0,0,0,0,0,6,0
	db 242,241,3,4,0,0,13,0,0,0,0,0,0,0,7,0
	db 242,241,3,4,0,0,14,0,0,0,0,0,0,0,8,0
	db 242,241,3,4,0,0,15,0,0,0,0,0,0,0,9,0
	db 242,241,3,4,0,0,16,0,0,0,0,0,0,0,10,0
	db 242,241,3,4,0,0,17,0,0,0,0,0,0,0,11,0
	db 242,241,3,4,0,0,18,0,0,0,0,0,0,0,12,0
	db 242,241,3,4,0,0,19,0,0,0,0,0,0,0,13,0
	db 242,241,3,4,0,0,20,0,0,0,0,0,0,0,14,0
	db 242,241,3,4,0,0,21,0,0,0,0,0,0,0,15,0
	db 242,241,3,4,0,0,22,0,0,0,0,0,0,0,16,0
	db 242,241,3,4,0,0,23,0,0,0,0,0,0,0,17,0
	db 242,241,3,4,0,0,24,0,0,0,0,0,0,0,18,0
	db 242,241,3,4,0,0,25,0,0,0,0,0,0,0,19,0
	db 242,241,3,4,0,0,26,0,0,0,0,0,0,0,20,0
	db 242,241,3,4,0,0,27,0,0,0,0,0,0,0,21,0
	db 242,241,3,4,0,0,28,0,0,0,0,0,0,0,22,0
	db 242,241,3,4,0,0,29,0,0,0,0,0,0,0,23,0
	db 8,0,1,2,1,0,5,16,0,0,14,0,8,0,5,16
	db 0,0,7,0,2,0,12,16,0,0,8,0,2,0,10,0
	db 10,16,0,0,28,0,5,0,3,0,11,16,0,0,0,0
	db 0,0,0,0,0,0,0,0,0,0,0,0,32,0,0,0
	db 12,0,60,0,4,2,6,4,117,0,0,0,3,0,33,0
	db 0,0,0,0,0,0,0,0,242,241,6,4,117,0,0,0
	db 3,0,34,0,0,0,0,0,0,0,4,0,242,241,6,4
	db 117,0,0,0,3,0,35,0,0,0,0,0,0,0,8,0
	db 12,0,1,2,2,0,117,0,0,0,9,16,0,0,14,0
	db 8,0,5,16,0,0,7,0,4,0,14,16,0,0,20,0
	db 1,2,4,0,117,0,0,0,32,4,0,0,116,0,0,0
	db 116,0,0,0,14,0,8,0,5,16,0,0,7,0,3,0
	db 16,16,0,0,16,0,1,2,3,0,32,4,0,0,116,0
	db 0,0,116,0,0,0,8,0,2,0,10,0,18,16,0,0
	db 28,0,5,0,5,0,20,16,0,0,0,0,0,0,0,0
	db 0,0,0,0,0,0,0,0,56,0,0,0,16,1,18,0
	db 3,0,32,0,0,0,17,0,0,0,0,0,0,0,0,1
	db 0,1,100,0,4,2,6,4,117,0,0,0,3,0,57,0
	db 0,0,0,0,0,0,0,0,242,241,6,4,117,0,0,0
	db 3,0,58,0,0,0,0,0,0,0,4,0,242,241,6,4
	db 117,0,0,0,3,0,59,0,0,0,0,0,0,0,8,0
	db 242,241,6,4,117,0,0,0,3,0,60,0,0,0,0,0
	db 0,0,12,0,242,241,6,4,19,16,0,0,3,0,61,0
	db 0,0,0,0,0,0,16,0,14,0,8,0,116,0,0,0
	db 7,0,2,0,23,16,0,0,8,0,2,0,10,0,32,4
	db 0,0,12,0,1,2,2,0,22,16,0,0,117,4,0,0
	db 14,0,8,0,116,0,0,0,7,0,0,0,25,16,0,0
	db 4,0,1,2,0,0,18,0,3,0,32,0,0,0,17,0
	db 0,0,0,0,0,0,0,0,0,0,18,0,3,0,32,0
	db 0,0,17,0,0,0,0,0,0,0,0,0,0,0,14,0
	db 8,0,116,0,0,0,7,0,0,0,29,16,0,0,4,0
	db 1,2,0,0,14,0,8,0,116,0,0,0,7,0,0,0
	db 31,16,0,0,4,0,1,2,0,0,14,0,8,0,116,0
	db 0,0,64,0,2,0,35,16,0,0,8,0,2,0,10,0
	db 34,16,0,0,8,0,1,0,1,0,112,0,0,0,12,0
	db 1,2,2,0,33,16,0,0,0,0,0,0,14,0,8,0
	db 5,16,0,0,7,0,2,0,37,16,0,0,12,0,1,2
	db 2,0,117,0,0,0,32,0,0,0,14,0,8,0,5,16
	db 0,0,7,0,2,0,39,16,0,0,12,0,1,2,2,0
	db 117,0,0,0,32,4,0,0,14,0,8,0,116,0,0,0
	db 0,0,0,0,41,16,0,0,4,0,1,2,0,0,14,0
	db 8,0,3,4,0,0,0,0,3,0,43,16,0,0,16,0
	db 1,2,3,0,3,4,0,0,116,0,0,0,117,0,0,0
	db 14,0,8,0,3,4,0,0,0,0,3,0,47,16,0,0
	db 8,0,2,0,10,0,46,16,0,0,8,0,1,0,1,0
	db 3,0,0,0,16,0,1,2,3,0,3,4,0,0,45,16
	db 0,0,117,0,0,0,14,0,8,0,3,0,0,0,0,0
	db 2,0,49,16,0,0,12,0,1,2,2,0,116,0,0,0
	db 116,0,0,0,14,0,8,0,5,16,0,0,7,0,1,0
	db 51,16,0,0,8,0,1,2,1,0,117,0,0,0,14,0
	db 8,0,5,16,0,0,7,0,2,0,53,16,0,0,12,0
	db 1,2,2,0,117,0,0,0,117,4,0,0,14,0,8,0
	db 116,0,0,0,0,0,0,0,55,16,0,0,4,0,1,2
	db 0,0
$$BTYPES	ends
$$BNAMES	segment byte public use32 'DEBNAM'
	db	9,'FW_GetPtr'
	db	1,'n'
	db	10,'FW_GetSize'
	db	1,'n'
	db	8,'__IO_RES'
	db	6,'RES_OK'
	db	9,'NOT_FOUND'
	db	9,'OPEN_FAIL'
	db	8,'RESP_BAD'
	db	11,'RESP_TO_BIG'
	db	24,'FAIL_SETUPDIGETCLASSDEVS'
	db	25,'FAIL_MALLOC_DEVDATADETAIL'
	db	23,'WR_FAIL_WRITE_OPERATION'
	db	19,'WR_FAIL_CREATE_SYNC'
	db	29,'WR_FAIL_GET_OVERLAPPED_RESULT'
	db	30,'WR_FAIL_WAIT_FOR_SINGLE_OBJECT'
	db	23,'RD_FAIL_WRITE_OPERATION'
	db	19,'RD_FAIL_CREATE_SYNC'
	db	29,'RD_FAIL_GET_OVERLAPPED_RESULT'
	db	30,'RD_FAIL_WAIT_FOR_SINGLE_OBJECT'
	db	7,'ARG_BAD'
	db	12,'READ_TIMEOUT'
	db	13,'WRITE_TIMEOUT'
	db	11,'VERYFY_FAIL'
	db	13,'SAM_INIT_FAIL'
	db	20,'SAM_WRITE_FLASH_FAIL'
	db	22,'WRONG_CPU_ARCHITECTURE'
	db	14,'WRONG_CPU_TYPE'
	db	26,'CPU_FLASH_MEMORY_TOO_SMALL'
	db	10,'ShowResult'
	db	3,'res'
	db	14,'CHIP_MEM_SIZES'
	db	10,'flash_size'
	db	15,'flash_page_size'
	db	9,'sram_size'
	db	8,'CheckCPU'
	db	2,'id'
	db	9,'mem_sizes'
	db	3,'val'
	db	13,'WriteMemBlock'
	db	4,'addr'
	db	3,'buf'
	db	3,'len'
	db	9,'show_pbar'
	db	6,'r_byte'
	db	6,'s_byte'
	db	1,'n'
	db	1,'i'
	db	8,'progress'
	db	3,'res'
	db	3,'res'
	db	13,'WriteFirmware'
	db	7,'fw_data'
	db	7,'fw_size'
	db	9,'page_size'
	db	10,'__MAIL_BOX'
	db	7,'ret_val'
	db	3,'cmd'
	db	9,'page_addr'
	db	9,'page_size'
	db	8,'page_buf'
	db	5,'y_pos'
	db	2,'mb'
	db	8,'boot_res'
	db	7,'b_count'
	db	1,'i'
	db	4,'addr'
	db	3,'res'
	db	3,'res'
	db	3,'res'
	db	14,'SelectFirmware'
	db	6,'fw_ptr'
	db	7,'fw_size'
	db	5,'y_pos'
	db	3,'idx'
	db	3,'key'
	db	8,'UserWait'
	db	5,'y_pos'
	db	3,'key'
	db	9,'g_MailBox'
	db	3,'std'
	db	11,'@std@size_t'
	db	14,'@std@ptrdiff_t'
	db	11,'@std@wint_t'
	db	13,'@std@wctype_t'
	db	12,'@std@va_list'
	db	5,'ULONG'
	db	6,'USHORT'
	db	5,'UCHAR'
	db	6,'PUCHAR'
	db	5,'DWORD'
	db	4,'BOOL'
	db	4,'BYTE'
	db	4,'WORD'
	db	5,'FLOAT'
	db	5,'PBYTE'
	db	6,'LPBYTE'
	db	6,'LPVOID'
	db	7,'LPCVOID'
	db	3,'INT'
	db	4,'UINT'
	db	5,'PUINT'
	db	14,'POINTER_64_INT'
	db	4,'INT8'
	db	5,'INT16'
	db	5,'INT32'
	db	5,'INT64'
	db	5,'UINT8'
	db	6,'PUINT8'
	db	6,'UINT16'
	db	6,'UINT32'
	db	7,'PUINT32'
	db	6,'UINT64'
	db	6,'LONG32'
	db	7,'ULONG32'
	db	8,'PULONG32'
	db	7,'DWORD32'
	db	8,'PDWORD32'
	db	7,'INT_PTR'
	db	8,'UINT_PTR'
	db	9,'PUINT_PTR'
	db	8,'LONG_PTR'
	db	9,'ULONG_PTR'
	db	9,'UHALF_PTR'
	db	8,'HALF_PTR'
	db	11,'SHANDLE_PTR'
	db	10,'HANDLE_PTR'
	db	6,'SIZE_T'
	db	7,'SSIZE_T'
	db	9,'DWORD_PTR'
	db	6,'LONG64'
	db	7,'ULONG64'
	db	7,'DWORD64'
	db	9,'KAFFINITY'
	db	5,'PVOID'
	db	7,'PVOID64'
	db	4,'CHAR'
	db	5,'SHORT'
	db	4,'LONG'
	db	5,'WCHAR'
	db	5,'LPCCH'
	db	4,'PCCH'
	db	6,'LPCSTR'
	db	5,'PCSTR'
	db	5,'TCHAR'
	db	5,'TBYTE'
	db	6,'PTBYTE'
	db	6,'PCTSTR'
	db	7,'LPCTSTR'
	db	7,'PCUTSTR'
	db	8,'LPCUTSTR'
	db	6,'HANDLE'
	db	5,'FCHAR'
	db	6,'FSHORT'
	db	5,'FLONG'
	db	7,'HRESULT'
	db	5,'CCHAR'
	db	4,'LCID'
	db	6,'LANGID'
	db	8,'LONGLONG'
	db	9,'ULONGLONG'
	db	3,'USN'
	db	9,'DWORDLONG'
	db	7,'BOOLEAN'
	db	8,'PBOOLEAN'
	db	10,'KSPIN_LOCK'
	db	13,'PACCESS_TOKEN'
	db	20,'PSECURITY_DESCRIPTOR'
	db	4,'PSID'
	db	11,'ACCESS_MASK'
	db	27,'SECURITY_DESCRIPTOR_CONTROL'
	db	30,'SECURITY_CONTEXT_TRACKING_MODE'
	db	31,'PSECURITY_CONTEXT_TRACKING_MODE'
	db	20,'SECURITY_INFORMATION'
	db	15,'EXECUTION_STATE'
	db	6,'WPARAM'
	db	6,'LPARAM'
	db	7,'LRESULT'
	db	4,'HWND'
	db	5,'HHOOK'
	db	4,'ATOM'
	db	7,'HGLOBAL'
	db	6,'HLOCAL'
	db	12,'GLOBALHANDLE'
	db	11,'LOCALHANDLE'
	db	7,'HGDIOBJ'
	db	4,'HKEY'
	db	6,'HACCEL'
	db	7,'HBITMAP'
	db	6,'HBRUSH'
	db	11,'HCOLORSPACE'
	db	3,'HDC'
	db	5,'HGLRC'
	db	5,'HDESK'
	db	12,'HENHMETAFILE'
	db	5,'HFONT'
	db	5,'HICON'
	db	5,'HMENU'
	db	9,'HMETAFILE'
	db	9,'HINSTANCE'
	db	7,'HMODULE'
	db	8,'HPALETTE'
	db	4,'HPEN'
	db	4,'HRGN'
	db	5,'HRSRC'
	db	4,'HSTR'
	db	5,'HTASK'
	db	7,'HWINSTA'
	db	3,'HKL'
	db	8,'HMONITOR'
	db	13,'HWINEVENTHOOK'
	db	5,'HUMPD'
	db	5,'HFILE'
	db	7,'HCURSOR'
	db	8,'COLORREF'
	db	9,'LCSCSTYPE'
	db	13,'LCSGAMUTMATCH'
	db	11,'FXPT16DOT16'
	db	10,'FXPT2DOT30'
	db	5,'BCHAR'
	db	7,'COLOR16'
	db	4,'HDWP'
	db	13,'MENUTEMPLATEA'
	db	13,'MENUTEMPLATEW'
	db	12,'MENUTEMPLATE'
	db	15,'LPMENUTEMPLATEA'
	db	15,'LPMENUTEMPLATEW'
	db	14,'LPMENUTEMPLATE'
	db	10,'HDEVNOTIFY'
	db	8,'HELPPOLY'
	db	6,'LGRPID'
	db	6,'LCTYPE'
	db	7,'CALTYPE'
	db	5,'CALID'
	db	5,'GEOID'
	db	7,'GEOTYPE'
	db	8,'GEOCLASS'
	db	6,'REGSAM'
	db	9,'HCONVLIST'
	db	5,'HCONV'
	db	3,'HSZ'
	db	8,'HDDEDATA'
	db	9,'MMVERSION'
	db	8,'MMRESULT'
	db	6,'LPUINT'
	db	5,'HDRVR'
	db	5,'HWAVE'
	db	7,'HWAVEIN'
	db	8,'HWAVEOUT'
	db	5,'HMIDI'
	db	7,'HMIDIIN'
	db	8,'HMIDIOUT'
	db	9,'HMIDISTRM'
	db	9,'HMIXEROBJ'
	db	6,'HMIXER'
	db	6,'FOURCC'
	db	5,'HMMIO'
	db	8,'MCIERROR'
	db	11,'MCIDEVICEID'
	db	12,'I_RPC_HANDLE'
	db	10,'RPC_STATUS'
	db	18,'RPC_BINDING_HANDLE'
	db	8,'handle_t'
	db	13,'RPC_IF_HANDLE'
	db	24,'RPC_AUTH_IDENTITY_HANDLE'
	db	16,'RPC_AUTHZ_HANDLE'
	db	11,'I_RPC_MUTEX'
	db	13,'RPC_NS_HANDLE'
	db	5,'HDROP'
	db	12,'FILEOP_FLAGS'
	db	15,'PRINTEROP_FLAGS'
	db	6,'u_char'
	db	7,'u_short'
	db	5,'u_int'
	db	6,'u_long'
	db	6,'SOCKET'
	db	6,'ALG_ID'
	db	10,'HCRYPTPROV'
	db	9,'HCRYPTKEY'
	db	10,'HCRYPTHASH'
	db	16,'HCRYPTOIDFUNCSET'
	db	17,'HCRYPTOIDFUNCADDR'
	db	9,'HCRYPTMSG'
	db	10,'HCERTSTORE'
	db	14,'HCERTSTOREPROV'
	db	20,'HCRYPTDEFAULTCONTEXT'
	db	11,'HCRYPTASYNC'
	db	16,'HCERTCHAINENGINE'
	db	4,'byte'
	db	7,'cs_byte'
	db	7,'boolean'
	db	12,'NDR_CCONTEXT'
	db	14,'error_status_t'
	db	10,'RPC_BUFPTR'
	db	10,'RPC_LENGTH'
	db	15,'PMIDL_XMIT_TYPE'
	db	20,'RPC_SS_THREAD_HANDLE'
	db	7,'OLECHAR'
	db	6,'DOUBLE'
	db	5,'SCODE'
	db	8,'HCONTEXT'
	db	10,'CLIPFORMAT'
	db	13,'HMETAFILEPICT'
	db	4,'DATE'
	db	12,'VARIANT_BOOL'
	db	7,'VARTYPE'
	db	6,'PROPID'
	db	16,'BAD_TRACK_NUMBER'
	db	5,'UWORD'
	db	12,'SCARDCONTEXT'
	db	11,'SCARDHANDLE'
	db	13,'RPCOLEDATAREP'
	db	11,'APARTMENTID'
	db	8,'HOLEMENU'
	db	6,'DISPID'
	db	8,'MEMBERID'
	db	8,'HREFTYPE'
	db	12,'PROPVAR_PAD1'
	db	12,'PROPVAR_PAD2'
	db	12,'PROPVAR_PAD3'
	db	9,'SC_HANDLE'
	db	21,'SERVICE_STATUS_HANDLE'
	db	7,'SC_LOCK'
	db	4,'HIMC'
	db	5,'HIMCC'
	db	11,'@std@fpos_t'
	db	10,'__MAIL_BOX'
	db	8,'MAIL_BOX'
	db	10,'P_MAIL_BOX'
	db	8,'__IO_RES'
	db	6,'IO_RES'
	db	16,'__CHIP_MEM_SIZES'
	db	14,'CHIP_MEM_SIZES'
	db	16,'P_CHIP_MEM_SIZES'
	db	6,'unlink'
	db	7,'tempnam'
	db	5,'sopen'
	db	5,'rmtmp'
	db	4,'putw'
	db	4,'getw'
	db	8,'fputchar'
	db	8,'flushall'
	db	6,'fileno'
	db	8,'fgetchar'
	db	6,'fdopen'
	db	9,'fcloseall'
	db	11,'_vsnwprintf'
	db	10,'_vsnprintf'
	db	10,'_snwprintf'
	db	9,'_snprintf'
	db	6,'wscanf'
	db	7,'wprintf'
	db	7,'vwscanf'
	db	8,'vwprintf'
	db	8,'vswscanf'
	db	9,'vswprintf'
	db	7,'vsscanf'
	db	8,'vsprintf'
	db	10,'vsnwprintf'
	db	9,'vsnprintf'
	db	6,'vscanf'
	db	7,'vprintf'
	db	8,'vfwscanf'
	db	9,'vfwprintf'
	db	7,'vfscanf'
	db	8,'vfprintf'
	db	7,'ungetwc'
	db	6,'ungetc'
	db	6,'tmpnam'
	db	7,'tmpfile'
	db	7,'swscanf'
	db	8,'swprintf'
	db	6,'sscanf'
	db	7,'sprintf'
	db	9,'snwprintf'
	db	8,'snprintf'
	db	7,'setvbuf'
	db	6,'setbuf'
	db	5,'scanf'
	db	6,'rewind'
	db	6,'rename'
	db	6,'remove'
	db	8,'putwchar'
	db	5,'putwc'
	db	4,'puts'
	db	7,'putchar'
	db	4,'putc'
	db	6,'printf'
	db	8,'getwchar'
	db	5,'getwc'
	db	4,'gets'
	db	7,'getchar'
	db	4,'getc'
	db	7,'fwscanf'
	db	6,'fwrite'
	db	8,'fwprintf'
	db	5,'ftell'
	db	7,'fsetpos'
	db	5,'fseek'
	db	6,'fscanf'
	db	7,'freopen'
	db	5,'fread'
	db	6,'fputws'
	db	6,'fputwc'
	db	5,'fputs'
	db	5,'fputc'
	db	7,'fprintf'
	db	5,'fopen'
	db	6,'fgetws'
	db	6,'fgetwc'
	db	5,'fgets'
	db	7,'fgetpos'
	db	5,'fgetc'
	db	6,'fflush'
	db	6,'ferror'
	db	4,'feof'
	db	6,'fclose'
	db	8,'clearerr'
	db	8,'_wunlink'
	db	8,'_wtmpnam'
	db	9,'_wtempnam'
	db	7,'_wsopen'
	db	8,'_wrename'
	db	8,'_wremove'
	db	7,'_wpopen'
	db	8,'_wfsopen'
	db	9,'_wfreopen'
	db	7,'_wfopen'
	db	8,'_wfdopen'
	db	7,'_unlink'
	db	8,'_tempnam'
	db	6,'_sopen'
	db	6,'_rmtmp'
	db	6,'_putws'
	db	5,'_putw'
	db	6,'_popen'
	db	7,'_pclose'
	db	6,'_getws'
	db	5,'_getw'
	db	7,'_fsopen'
	db	10,'_fputwchar'
	db	7,'_fputwc'
	db	9,'_fputchar'
	db	6,'_fputc'
	db	9,'_flushall'
	db	7,'_fileno'
	db	10,'_fgetwchar'
	db	7,'_fgetwc'
	db	9,'_fgetchar'
	db	6,'_fgetc'
	db	7,'_fdopen'
	db	10,'_fcloseall'
	db	11,'__getStream'
	db	5,'_rotr'
	db	5,'_rotl'
	db	6,'_crotr'
	db	6,'_lrotr'
	db	6,'_lrotl'
	db	6,'_crotl'
	db	3,'abs'
	db	6,'wctomb'
	db	7,'wcstoul'
	db	8,'wcstombs'
	db	6,'wcstol'
	db	6,'wcstod'
	db	5,'ultoa'
	db	4,'time'
	db	6,'system'
	db	4,'swab'
	db	7,'strtoul'
	db	6,'strtol'
	db	6,'strtod'
	db	5,'srand'
	db	7,'realloc'
	db	4,'rand'
	db	6,'putenv'
	db	6,'perror'
	db	6,'mbtowc'
	db	8,'mbstowcs'
	db	5,'mblen'
	db	17,'@std@randomize$qv'
	db	14,'@std@random$qi'
	db	4,'ltoa'
	db	4,'gcvt'
	db	4,'fcvt'
	db	4,'ecvt'
	db	6,'malloc'
	db	4,'ldiv'
	db	4,'labs'
	db	4,'itoa'
	db	6,'getenv'
	db	4,'free'
	db	4,'exit'
	db	3,'div'
	db	6,'calloc'
	db	4,'atol'
	db	4,'atoi'
	db	4,'atof'
	db	6,'atexit'
	db	5,'abort'
	db	6,'_wtold'
	db	5,'_wtol'
	db	5,'_wtoi'
	db	5,'_wtof'
	db	8,'_wsystem'
	db	11,'_wsplitpath'
	db	11,'_wsearchstr'
	db	11,'_wsearchenv'
	db	8,'_wputenv'
	db	8,'_wperror'
	db	10,'_wmakepath'
	db	8,'_wgetenv'
	db	10,'_wfullpath'
	db	8,'_wcstold'
	db	8,'_strtold'
	db	10,'_splitpath'
	db	10,'_searchstr'
	db	10,'_searchenv'
	db	9,'_makepath'
	db	7,'_wtoi64'
	db	8,'_ui64tow'
	db	8,'_ui64toa'
	db	7,'_i64tow'
	db	7,'_i64toa'
	db	7,'_atoi64'
	db	5,'_ltow'
	db	5,'_ltoa'
	db	6,'_lrand'
	db	5,'_itow'
	db	6,'_ultow'
	db	5,'_gcvt'
	db	5,'_fcvt'
	db	9,'_fullpath'
	db	5,'_exit'
	db	6,'_atold'
	db	5,'_ecvt'
	db	5,'qsort'
	db	7,'lsearch'
	db	5,'lfind'
	db	7,'bsearch'
	db	7,'wcsxfrm'
	db	6,'wcstok'
	db	6,'wcsstr'
	db	6,'wcsspn'
	db	7,'wcsrchr'
	db	7,'wcspcpy'
	db	7,'wcspbrk'
	db	7,'wcsncpy'
	db	7,'wcsncmp'
	db	7,'wcsncat'
	db	6,'wcslen'
	db	7,'wcscspn'
	db	6,'wcscpy'
	db	7,'wcscoll'
	db	6,'wcscmp'
	db	6,'wcschr'
	db	6,'wcscat'
	db	6,'strtok'
	db	18,'@std@strstr$qpxct1'
	db	18,'@std@strstr$qpcpxc'
	db	6,'strspn'
	db	19,'@std@strpbrk$qpxct1'
	db	19,'@std@strpbrk$qpcpxc'
	db	8,'strerror'
	db	7,'strcspn'
	db	18,'@std@strrchr$qpxci'
	db	17,'@std@strrchr$qpci'
	db	7,'strncpy'
	db	7,'strncmp'
	db	7,'strncat'
	db	6,'strlen'
	db	6,'strcpy'
	db	6,'strcmp'
	db	17,'@std@strchr$qpxci'
	db	16,'@std@strchr$qpci'
	db	6,'strcat'
	db	6,'strset'
	db	6,'stpcpy'
	db	7,'strnset'
	db	7,'_wcsset'
	db	7,'_wcsrev'
	db	8,'_wcspcpy'
	db	8,'_wcsnset'
	db	10,'_wcsnicoll'
	db	9,'_wcsnicmp'
	db	9,'_wcsncoll'
	db	9,'_wcsicoll'
	db	8,'_wcsicmp'
	db	7,'_wcsdup'
	db	10,'_strnicoll'
	db	9,'_strncoll'
	db	9,'_stricoll'
	db	9,'_strerror'
	db	9,'_lwcsxfrm'
	db	8,'_lwcsupr'
	db	11,'_lwcsnicoll'
	db	10,'_lwcsncoll'
	db	8,'_lwcslwr'
	db	10,'_lwcsicoll'
	db	9,'_lwcscoll'
	db	9,'_lstrxfrm'
	db	11,'_lstrnicoll'
	db	10,'_lstrncoll'
	db	10,'_lstricoll'
	db	9,'_lstrcoll'
	db	6,'strrev'
	db	8,'strnicmp'
	db	7,'stricmp'
	db	6,'strdup'
	db	7,'_stpcpy'
	db	8,'_lstrupr'
	db	8,'_lstrlwr'
	db	12,'_lwsetlocale'
	db	11,'_wsetlocale'
	db	12,'_llocaleconv'
	db	10,'localeconv'
	db	11,'_lsetlocale'
	db	10,'_ltowlower'
	db	10,'_ltowupper'
	db	8,'towupper'
	db	8,'towlower'
	db	9,'_ltoupper'
	db	7,'toupper'
	db	9,'_ltolower'
	db	7,'tolower'
	db	8,'iswascii'
	db	9,'iswxdigit'
	db	8,'iswupper'
	db	8,'iswspace'
	db	8,'iswpunct'
	db	8,'iswprint'
	db	8,'iswlower'
	db	8,'iswgraph'
	db	8,'iswdigit'
	db	8,'iswcntrl'
	db	8,'iswalpha'
	db	8,'iswalnum'
	db	7,'isascii'
	db	8,'isxdigit'
	db	7,'isupper'
	db	7,'isspace'
	db	7,'ispunct'
	db	7,'isprint'
	db	7,'islower'
	db	7,'isgraph'
	db	7,'isdigit'
	db	7,'iscntrl'
	db	7,'isalpha'
	db	7,'isalnum'
	db	6,'memset'
	db	6,'memcpy'
	db	6,'memcmp'
	db	19,'@std@memchr$qpxviui'
	db	18,'@std@memchr$qpviui'
	db	7,'memmove'
	db	7,'memicmp'
	db	7,'memccpy'
	db	8,'_wmemset'
	db	8,'_wmemcpy'
	db	21,'@std@_wmemchr$qpxviui'
	db	20,'@std@_wmemchr$qpviui'
	db	10,'__threadid'
	db	14,'@std@ptrdiff_t'
	db	11,'@std@size_t'
	db	11,'@std@wint_t'
	db	13,'@std@wctype_t'
	db	12,'@std@va_list'
	db	9,'_chartype'
	db	6,'_lower'
	db	6,'_upper'
	db	5,'lconv'
	db	5,'errno'
	db	9,'_doserrno'
	db	9,'_sys_nerr'
	db	12,'_sys_errlist'
	db	5,'_argc'
	db	5,'_argv'
	db	12,'__mb_cur_max'
	db	16,'_cmdline_escapes'
	db	8,'_environ'
	db	9,'_fileinfo'
	db	6,'_fmode'
	db	8,'_osmajor'
	db	8,'_osminor'
	db	7,'_osmode'
	db	10,'_osversion'
	db	9,'_wenviron'
	db	13,'@std@atexit_t'
	db	10,'@std@div_t'
	db	11,'@std@ldiv_t'
	db	9,'@std@FILE'
	db	18,'@std@_floatconvert'
	db	8,'_streams'
	db	11,'@std@fpos_t'
$$BNAMES	ends
	?debug	D "E:\prottoss\projects\ucGoZilla\Win\1st_boot\Sources\firmware.h" 15674 37872
	?debug	D "E:\prottoss\projects\ucGoZilla\Win\1st_boot\Sources\inout.h" 15695 45906
	?debug	D "E:\prottoss\projects\ucGoZilla\Win\1st_boot\Sources\samba.h" 15476 35707
	?debug	D "E:\prottoss\projects\ucGoZilla\Win\1st_boot\Sources\show.h" 15696 19442
	?debug	D "E:\prottoss\projects\ucGoZilla\Win\1st_boot\Sources\utils.h" 16043 24276
	?debug	D "E:\prottoss\projects\ucGoZilla\Win\1st_boot\Sources\config.h" 16062 47124
	?debug	D "c:\program files\borland\cbuilder6\include\conio.h" 11326 37898
	?debug	D "c:\program files\borland\cbuilder6\include\_nfile.h" 11326 37892
	?debug	D "c:\program files\borland\cbuilder6\include\stdio.h" 11326 37933
	?debug	D "c:\program files\borland\cbuilder6\include\imm.h" 11326 37907
	?debug	D "c:\program files\borland\cbuilder6\include\mcx.h" 11326 37910
	?debug	D "c:\program files\borland\cbuilder6\include\winsvc.h" 11326 37939
	?debug	D "c:\program files\borland\cbuilder6\include\stralign.h" 11326 37933
	?debug	D "c:\program files\borland\cbuilder6\include\commdlg.h" 11326 37898
	?debug	D "c:\program files\borland\cbuilder6\include\oleauto.h" 11326 37926
	?debug	D "c:\program files\borland\cbuilder6\include\propidl.h" 11326 37927
	?debug	D "c:\program files\borland\cbuilder6\include\oaidl.h" 11326 37917
	?debug	D "c:\program files\borland\cbuilder6\include\msxml.h" 11326 37915
	?debug	D "c:\program files\borland\cbuilder6\include\servprov.h" 11326 37930
	?debug	D "c:\program files\borland\cbuilder6\include\oleidl.h" 11326 37927
	?debug	D "c:\program files\borland\cbuilder6\include\urlmon.h" 11326 37935
	?debug	D "c:\program files\borland\cbuilder6\include\cguid.h" 11326 37897
	?debug	D "c:\program files\borland\cbuilder6\include\objidl.h" 11326 37926
	?debug	D "c:\program files\borland\cbuilder6\include\unknwn.h" 11326 37935
	?debug	D "c:\program files\borland\cbuilder6\include\errno.h" 11326 37904
	?debug	D "c:\program files\borland\cbuilder6\include\search.h" 11326 37930
	?debug	D "c:\program files\borland\cbuilder6\include\stdlib.h" 11326 37933
	?debug	D "c:\program files\borland\cbuilder6\include\objbase.h" 11326 37926
	?debug	D "c:\program files\borland\cbuilder6\include\ole2.h" 11326 37926
	?debug	D "c:\program files\borland\cbuilder6\include\prsht.h" 11326 37928
	?debug	D "c:\program files\borland\cbuilder6\include\winspool.h" 11326 37939
	?debug	D "c:\program files\borland\cbuilder6\include\winsmcrd.h" 11326 37939
	?debug	D "c:\program files\borland\cbuilder6\include\winioctl.h" 11326 37938
	?debug	D "c:\program files\borland\cbuilder6\include\rpcnsip.h" 11326 37929
	?debug	D "c:\program files\borland\cbuilder6\include\rpcndr.h" 11326 37929
	?debug	D "c:\program files\borland\cbuilder6\include\wtypes.h" 11326 37940
	?debug	D "c:\program files\borland\cbuilder6\include\winscard.h" 11326 37938
	?debug	D "c:\program files\borland\cbuilder6\include\winefs.h" 11326 37938
	?debug	D "c:\program files\borland\cbuilder6\include\wincrypt.h" 11326 37937
	?debug	D "c:\program files\borland\cbuilder6\include\winsock.h" 11326 37939
	?debug	D "c:\program files\borland\cbuilder6\include\winperf.h" 11326 37938
	?debug	D "c:\program files\borland\cbuilder6\include\shellapi.h" 11326 37930
	?debug	D "c:\program files\borland\cbuilder6\include\rpcasync.h" 11326 37929
	?debug	D "c:\program files\borland\cbuilder6\include\rpcnterr.h" 11326 37929
	?debug	D "c:\program files\borland\cbuilder6\include\rpcnsi.h" 11326 37929
	?debug	D "c:\program files\borland\cbuilder6\include\rpcdcep.h" 11326 37929
	?debug	D "c:\program files\borland\cbuilder6\include\rpcdce.h" 11326 37929
	?debug	D "c:\program files\borland\cbuilder6\include\rpc.h" 11326 37929
	?debug	D "c:\program files\borland\cbuilder6\include\nb30.h" 11326 37916
	?debug	D "c:\program files\borland\cbuilder6\include\mmsystem.h" 11326 37911
	?debug	D "c:\program files\borland\cbuilder6\include\lzexpand.h" 11326 37909
	?debug	D "c:\program files\borland\cbuilder6\include\dlgs.h" 11326 37901
	?debug	D "c:\program files\borland\cbuilder6\include\ddeml.h" 11326 37901
	?debug	D "c:\program files\borland\cbuilder6\include\dde.h" 11326 37901
	?debug	D "c:\program files\borland\cbuilder6\include\cderr.h" 11326 37896
	?debug	D "c:\program files\borland\cbuilder6\include\winnetwk.h" 11326 37938
	?debug	D "c:\program files\borland\cbuilder6\include\reason.h" 11326 37928
	?debug	D "c:\program files\borland\cbuilder6\include\winreg.h" 11326 37938
	?debug	D "c:\program files\borland\cbuilder6\include\winver.h" 11326 37939
	?debug	D "c:\program files\borland\cbuilder6\include\wincon.h" 11326 37937
	?debug	D "c:\program files\borland\cbuilder6\include\winnls.h" 11326 37938
	?debug	D "c:\program files\borland\cbuilder6\include\tvout.h" 11326 37935
	?debug	D "c:\program files\borland\cbuilder6\include\winuser.h" 11326 37939
	?debug	D "c:\program files\borland\cbuilder6\include\pshpack1.h" 11326 37928
	?debug	D "c:\program files\borland\cbuilder6\include\wingdi.h" 11326 37938
	?debug	D "c:\program files\borland\cbuilder6\include\winerror.h" 11326 37938
	?debug	D "c:\program files\borland\cbuilder6\include\winbase.h" 11326 37937
	?debug	D "c:\program files\borland\cbuilder6\include\pshpack8.h" 11326 37928
	?debug	D "c:\program files\borland\cbuilder6\include\pshpack2.h" 11326 37928
	?debug	D "c:\program files\borland\cbuilder6\include\poppack.h" 11326 37927
	?debug	D "c:\program files\borland\cbuilder6\include\pshpack4.h" 11326 37928
	?debug	D "c:\program files\borland\cbuilder6\include\_loc.h" 11326 37892
	?debug	D "c:\program files\borland\cbuilder6\include\oldstl/locale.h" 11326 37984
	?debug	D "c:\program files\borland\cbuilder6\include\_str.h" 11326 37892
	?debug	D "c:\program files\borland\cbuilder6\include\string.h" 11326 37933
	?debug	D "c:\program files\borland\cbuilder6\include\guiddef.h" 11326 37906
	?debug	D "c:\program files\borland\cbuilder6\include\basetsd.h" 11326 37895
	?debug	D "c:\program files\borland\cbuilder6\include\mbctype.h" 11326 37910
	?debug	D "c:\program files\borland\cbuilder6\include\ctype.h" 11326 37899
	?debug	D "c:\program files\borland\cbuilder6\include\winnt.h" 11326 37938
	?debug	D "c:\program files\borland\cbuilder6\include\windef.h" 11326 37937
	?debug	D "c:\program files\borland\cbuilder6\include\stdarg.h" 11326 37933
	?debug	D "c:\program files\borland\cbuilder6\include\excpt.h" 11326 37904
	?debug	D "c:\program files\borland\cbuilder6\include\_null.h" 11326 37892
	?debug	D "c:\program files\borland\cbuilder6\include\_defs.h" 11326 37892
	?debug	D "c:\program files\borland\cbuilder6\include\_stddef.h" 11326 37892
	?debug	D "c:\program files\borland\cbuilder6\include\mem.h" 11326 37910
	?debug	D "c:\program files\borland\cbuilder6\include\windows.h" 11326 37938
	?debug	D "E:\prottoss\projects\ucGoZilla\Win\1st_boot\Sources\utils.cpp" 16062 47159
	end
