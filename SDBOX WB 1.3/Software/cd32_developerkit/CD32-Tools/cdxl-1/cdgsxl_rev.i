VERSION		EQU	1
REVISION	EQU	50
DATE	MACRO
		dc.b	'15.10.93'
	ENDM
VERS	MACRO
		dc.b	'cdgsxl 1.50'
	ENDM
VSTRING	MACRO
		dc.b	'cdgsxl 1.50 (15.10.93)',13,10,0
	ENDM
VERSTAG	MACRO
		dc.b	0,'$VER: cdgsxl 1.50 (15.10.93)',0
	ENDM
