﻿; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	C:\DUII\Simulation\GUI\Widget\RADIO_CreateIndirect.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	_RADIO_CreateIndirect
EXTRN	_RADIO_CreateEx:PROC
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT rtc$TMZ
; File c:\duii\simulation\gui\widget\radio_createindirect.c
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu /ZI
rtc$IMZ	ENDS
;	COMDAT _RADIO_CreateIndirect
_TEXT	SEGMENT
_Spacing$ = -32						; size = 4
_NumItems$ = -20					; size = 4
_hThis$ = -8						; size = 4
_pCreateInfo$ = 8					; size = 4
_hWinParent$ = 12					; size = 4
_x0$ = 16						; size = 4
_y0$ = 20						; size = 4
_cb$ = 24						; size = 4
_RADIO_CreateIndirect PROC				; COMDAT
; Line 38
	push	ebp
	mov	ebp, esp
	sub	esp, 228				; 000000e4H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-228]
	mov	ecx, 57					; 00000039H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 40
	mov	eax, DWORD PTR _pCreateInfo$[ebp]
	mov	ecx, DWORD PTR [eax+20]
	and	ecx, 255				; 000000ffH
	mov	DWORD PTR _NumItems$[ebp], ecx
; Line 41
	mov	eax, DWORD PTR _pCreateInfo$[ebp]
	mov	ecx, DWORD PTR [eax+20]
	sar	ecx, 8
	and	ecx, 255				; 000000ffH
	mov	DWORD PTR _Spacing$[ebp], ecx
; Line 42
	mov	eax, DWORD PTR _cb$[ebp]
	mov	DWORD PTR _cb$[ebp], eax
; Line 44
	mov	eax, DWORD PTR _Spacing$[ebp]
	push	eax
	mov	ecx, DWORD PTR _NumItems$[ebp]
	push	ecx
	mov	edx, DWORD PTR _pCreateInfo$[ebp]
	movsx	eax, WORD PTR [edx+8]
	push	eax
	push	0
	mov	ecx, DWORD PTR _pCreateInfo$[ebp]
	movzx	edx, WORD PTR [ecx+18]
	push	edx
	mov	eax, DWORD PTR _hWinParent$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pCreateInfo$[ebp]
	movsx	edx, WORD PTR [ecx+16]
	push	edx
	mov	eax, DWORD PTR _pCreateInfo$[ebp]
	movsx	ecx, WORD PTR [eax+14]
	push	ecx
	mov	edx, DWORD PTR _pCreateInfo$[ebp]
	movsx	eax, WORD PTR [edx+12]
	add	eax, DWORD PTR _y0$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pCreateInfo$[ebp]
	movsx	edx, WORD PTR [ecx+10]
	add	edx, DWORD PTR _x0$[ebp]
	push	edx
	call	_RADIO_CreateEx
	add	esp, 40					; 00000028H
	mov	DWORD PTR _hThis$[ebp], eax
; Line 45
	mov	eax, DWORD PTR _hThis$[ebp]
; Line 46
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 228				; 000000e4H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_RADIO_CreateIndirect ENDP
_TEXT	ENDS
END