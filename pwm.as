opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 10920"

opt pagewidth 120

	opt lm

	processor	16F685
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
	FNCALL	_main,_System_init
	FNCALL	_main,_GPIO_Init
	FNCALL	_main,_PWM4_Init
	FNCALL	_main,_ADC_Init
	FNCALL	_main,_GetADCValue
	FNCALL	_main,___lwtoft
	FNCALL	_main,___ftmul
	FNCALL	_main,___ftadd
	FNCALL	_main,___fttol
	FNCALL	_main,_SetPWM4Plus
	FNCALL	_ADC_Init,_Delay_xms
	FNCALL	___lwtoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftadd,___ftpack
	FNROOT	_main
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_adc_K
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"main.c"
	line	29

;initializer for _adc_K
	retlw	0xba
	retlw	0x9
	retlw	0x3e

	global	_ADC5_Input
	global	_ADC_VALUE
	global	_ADC_old_value
	global	_j
	global	_mode_GPIO
	global	_mode_PWM
	global	_PSTRCON
_PSTRCON	set	413
	DABS	1,413,1	;_PSTRCON

	global	_SRCON
_SRCON	set	414
	DABS	1,414,1	;_SRCON

	global	_C1SEN
_C1SEN	set	3317
	DABS	1,414,1	;_C1SEN

	global	_C2REN
_C2REN	set	3316
	DABS	1,414,1	;_C2REN

	global	_EEPGD
_EEPGD	set	3175
	DABS	1,396,1	;_EEPGD

	global	_PULSR
_PULSR	set	3314
	DABS	1,414,1	;_PULSR

	global	_PULSS
_PULSS	set	3315
	DABS	1,414,1	;_PULSS

	global	_SR0
_SR0	set	3318
	DABS	1,414,1	;_SR0

	global	_SR1
_SR1	set	3319
	DABS	1,414,1	;_SR1

	global	_STRA
_STRA	set	3304
	DABS	1,413,1	;_STRA

	global	_STRB
_STRB	set	3305
	DABS	1,413,1	;_STRB

	global	_STRC
_STRC	set	3306
	DABS	1,413,1	;_STRC

	global	_STRD
_STRD	set	3307
	DABS	1,413,1	;_STRD

	global	_STRSYNC
_STRSYNC	set	3308
	DABS	1,413,1	;_STRSYNC

	global	_WREN
_WREN	set	3170
	DABS	1,396,1	;_WREN

	global	_ADCON0
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_WDTCON
_WDTCON	set	24
	global	_ADFM
_ADFM	set	255
	global	_ADON
_ADON	set	248
	global	_CARRY
_CARRY	set	24
	global	_CHS0
_CHS0	set	250
	global	_CHS1
_CHS1	set	251
	global	_CHS2
_CHS2	set	252
	global	_CM0
_CM0	set	200
	global	_CM1
_CM1	set	201
	global	_CM2
_CM2	set	202
	global	_GIE
_GIE	set	95
	global	_GO_DONE
_GO_DONE	set	249
	global	_PC2
_PC2	set	58
	global	_PC3
_PC3	set	59
	global	_VCFG0
_VCFG0	set	253
	global	_ADRESL
_ADRESL	set	158
	global	_EEADR
_EEADR	set	155
	global	_EECON1
_EECON1	set	156
	global	_EECON2
_EECON2	set	157
	global	_EEDATA
_EEDATA	set	154
	global	_OPTION
_OPTION	set	129
	global	_OSCCON
_OSCCON	set	143
	global	_ADCS0
_ADCS0	set	1276
	global	_ADCS1
_ADCS1	set	1277
	global	_ADCS2
_ADCS2	set	1278
	global	_ANSEL0
_ANSEL0	set	1160
	global	_ANSEL1
_ANSEL1	set	1161
	global	_ANSEL2
_ANSEL2	set	1162
	global	_ANSEL3
_ANSEL3	set	1163
	global	_ANSEL4
_ANSEL4	set	1164
	global	_ANSEL5
_ANSEL5	set	1165
	global	_ANSEL6
_ANSEL6	set	1166
	global	_ANSEL7
_ANSEL7	set	1167
	global	_DIVS
_DIVS	set	1279
	global	_RD
_RD	set	1248
	global	_TRISA0
_TRISA0	set	1064
	global	_TRISA1
_TRISA1	set	1065
	global	_TRISA6
_TRISA6	set	1070
	global	_TRISC1
_TRISC1	set	1081
	global	_TRISC2
_TRISC2	set	1082
	global	_TRISC3
_TRISC3	set	1083
	global	_WPDA4
_WPDA4	set	1100
	global	_WPDC1
_WPDC1	set	1099
	global	_WPDC2
_WPDC2	set	1098
	global	_WPDC3
_WPDC3	set	1097
	global	_WPUA0
_WPUA0	set	1192
	global	_WPUA1
_WPUA1	set	1193
	global	_WPUA6
_WPUA6	set	1198
	global	_WPUC1
_WPUC1	set	1089
	global	_WPUC2
_WPUC2	set	1090
	global	_WPUC3
_WPUC3	set	1091
	global	_WR
_WR	set	1256
	global	_PR4L
_PR4L	set	276
	global	_T4CKDIV
_T4CKDIV	set	279
	global	_TMR4H
_TMR4H	set	275
	global	_P4BZR
_P4BZR	set	2216
	global	_P4CKSRC0
_P4CKSRC0	set	2217
	global	_P4CKSRC1
_P4CKSRC1	set	2218
	global	_P4CKSRC2
_P4CKSRC2	set	2219
	global	_P4EN
_P4EN	set	2231
	global	_P4INTS
_P4INTS	set	2223
	global	_P4PER0
_P4PER0	set	2220
	global	_P4PER1
_P4PER1	set	2221
	global	_P4PER2
_P4PER2	set	2222
	global	_P4POL
_P4POL	set	2230
	global	_TMR4IE
_TMR4IE	set	2225
	global	_TMR4IF
_TMR4IF	set	2224
	global	_TMR4ON
_TMR4ON	set	2226
	global	_TMR4PS0
_TMR4PS0	set	2227
	global	_TMR4PS1
_TMR4PS1	set	2228
	global	_TMR4PS2
_TMR4PS2	set	2229
	file	"pwm.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_ADC5_Input:
       ds      2

_ADC_VALUE:
       ds      2

_ADC_old_value:
       ds      2

_j:
       ds      1

_mode_GPIO:
       ds      1

_mode_PWM:
       ds      1

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"main.c"
_adc_K:
       ds      3

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
	clrf	((__pbssBANK0)+6)&07Fh
	clrf	((__pbssBANK0)+7)&07Fh
	clrf	((__pbssBANK0)+8)&07Fh
; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
	fcall	__pidataBANK0+1		;fetch initializer
	movwf	__pdataBANK0+1&07fh		
	fcall	__pidataBANK0+2		;fetch initializer
	movwf	__pdataBANK0+2&07fh		
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_System_init
?_System_init:	; 0 bytes @ 0x0
	global	?_GPIO_Init
?_GPIO_Init:	; 0 bytes @ 0x0
	global	?_PWM4_Init
?_PWM4_Init:	; 0 bytes @ 0x0
	global	?_ADC_Init
?_ADC_Init:	; 0 bytes @ 0x0
	global	?_SetPWM4Plus
?_SetPWM4Plus:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_ISR
?_ISR:	; 0 bytes @ 0x0
	global	??_ISR
??_ISR:	; 0 bytes @ 0x0
	ds	4
	global	??_System_init
??_System_init:	; 0 bytes @ 0x4
	global	??_GPIO_Init
??_GPIO_Init:	; 0 bytes @ 0x4
	global	??_PWM4_Init
??_PWM4_Init:	; 0 bytes @ 0x4
	global	??_SetPWM4Plus
??_SetPWM4Plus:	; 0 bytes @ 0x4
	global	?_Delay_xms
?_Delay_xms:	; 0 bytes @ 0x4
	global	?_GetADCValue
?_GetADCValue:	; 2 bytes @ 0x4
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x4
	global	SetPWM4Plus@num
SetPWM4Plus@num:	; 1 bytes @ 0x4
	global	Delay_xms@x
Delay_xms@x:	; 2 bytes @ 0x4
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x4
	ds	2
	global	??_GetADCValue
??_GetADCValue:	; 0 bytes @ 0x6
	global	??_Delay_xms
??_Delay_xms:	; 0 bytes @ 0x6
	ds	1
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x7
	ds	1
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x8
	global	GetADCValue@ADC_num
GetADCValue@ADC_num:	; 2 bytes @ 0x8
	global	Delay_xms@i
Delay_xms@i:	; 2 bytes @ 0x8
	ds	1
	global	??___lwtoft
??___lwtoft:	; 0 bytes @ 0x9
	ds	1
	global	??_ADC_Init
??_ADC_Init:	; 0 bytes @ 0xA
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??___ftpack
??___ftpack:	; 0 bytes @ 0x0
	ds	3
	global	?___fttol
?___fttol:	; 4 bytes @ 0x3
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x3
	ds	4
	global	??___fttol
??___fttol:	; 0 bytes @ 0x7
	ds	4
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0xB
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0xC
	ds	4
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x10
	ds	1
	global	?___lwtoft
?___lwtoft:	; 3 bytes @ 0x11
	global	___lwtoft@c
___lwtoft@c:	; 2 bytes @ 0x11
	ds	3
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x14
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x14
	ds	3
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x17
	ds	3
	global	??___ftmul
??___ftmul:	; 0 bytes @ 0x1A
	ds	4
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x1E
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x1F
	ds	3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x22
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x23
	ds	1
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x24
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x24
	ds	3
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x27
	ds	3
	global	??___ftadd
??___ftadd:	; 0 bytes @ 0x2A
	ds	4
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x2E
	ds	1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x2F
	ds	1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x30
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x31
	ds	1
;;Data sizes: Strings 0, constant 0, data 3, bss 9, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     10      10
;; BANK0           80     50      62
;; BANK1           32      0       0

;;
;; Pointer list with targets:

;; ?___ftpack	float  size(1) Largest target is 0
;;
;; ?_GetADCValue	unsigned short  size(1) Largest target is 0
;;
;; ?___fttol	long  size(1) Largest target is 0
;;
;; ?___ftmul	float  size(1) Largest target is 0
;;
;; ?___lwtoft	float  size(1) Largest target is 0
;;
;; ?___ftadd	float  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_GetADCValue
;;   _main->___lwtoft
;;   _ADC_Init->_Delay_xms
;;   ___lwtoft->___ftpack
;;   ___ftmul->___lwtoft
;;   ___ftadd->___lwtoft
;;   ___fttol->___ftpack
;;
;; Critical Paths under _ISR in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->___ftadd
;;   ___lwtoft->___fttol
;;   ___ftmul->___lwtoft
;;   ___ftadd->___ftmul
;;   ___fttol->___ftpack
;;
;; Critical Paths under _ISR in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK1
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 1     1      0    2205
;;                                             49 BANK0      1     1      0
;;                        _System_init
;;                          _GPIO_Init
;;                          _PWM4_Init
;;                           _ADC_Init
;;                        _GetADCValue
;;                           ___lwtoft
;;                            ___ftmul
;;                            ___ftadd
;;                            ___fttol
;;                        _SetPWM4Plus
;; ---------------------------------------------------------------------------------
;; (1) _ADC_Init                                             0     0      0      46
;;                          _Delay_xms
;; ---------------------------------------------------------------------------------
;; (1) ___lwtoft                                             4     1      3     231
;;                                              9 COMMON     1     1      0
;;                                             17 BANK0      3     0      3
;;                           ___ftpack
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (1) ___ftmul                                             16    10      6     535
;;                                             20 BANK0     16    10      6
;;                           ___ftpack
;;                           ___lwtoft (ARG)
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (1) ___ftadd                                             13     7      6    1049
;;                                             36 BANK0     13     7      6
;;                           ___ftpack
;;                            ___ftmul (ARG)
;;                           ___lwtoft (ARG)
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (2) _Delay_xms                                            6     4      2      46
;;                                              4 COMMON     6     4      2
;; ---------------------------------------------------------------------------------
;; (1) ___fttol                                             14    10      4     252
;;                                              3 BANK0     14    10      4
;;                           ___ftpack (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___ftpack                                             8     3      5     209
;;                                              4 COMMON     5     0      5
;;                                              0 BANK0      3     3      0
;; ---------------------------------------------------------------------------------
;; (1) _SetPWM4Plus                                          1     1      0      22
;;                                              4 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _GetADCValue                                          6     4      2      70
;;                                              4 COMMON     6     4      2
;; ---------------------------------------------------------------------------------
;; (1) _PWM4_Init                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _GPIO_Init                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _System_init                                          0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (3) _ISR                                                  4     4      0       0
;;                                              0 COMMON     4     4      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _System_init
;;   _GPIO_Init
;;   _PWM4_Init
;;   _ADC_Init
;;     _Delay_xms
;;   _GetADCValue
;;   ___lwtoft
;;     ___ftpack
;;     ___fttol (ARG)
;;       ___ftpack (ARG)
;;   ___ftmul
;;     ___ftpack
;;     ___lwtoft (ARG)
;;       ___ftpack
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;     ___fttol (ARG)
;;       ___ftpack (ARG)
;;   ___ftadd
;;     ___ftpack
;;     ___ftmul (ARG)
;;       ___ftpack
;;       ___lwtoft (ARG)
;;         ___ftpack
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;     ___lwtoft (ARG)
;;       ___ftpack
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;     ___fttol (ARG)
;;       ___ftpack (ARG)
;;   ___fttol
;;     ___ftpack (ARG)
;;   _SetPWM4Plus
;;
;; _ISR (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;SFR2                 0      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;BANK1               20      0       0       6        0.0%
;;BITBANK1            20      0       0       5        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      4A       8        0.0%
;;ABS                  0      0      48       7        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       2       2        0.0%
;;BANK0               50     32      3E       4       77.5%
;;BITBANK0            50      0       0       3        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      A       A       1       71.4%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 32 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       1       0
;;      Totals:         0       1       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_System_init
;;		_GPIO_Init
;;		_PWM4_Init
;;		_ADC_Init
;;		_GetADCValue
;;		___lwtoft
;;		___ftmul
;;		___ftadd
;;		___fttol
;;		_SetPWM4Plus
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"main.c"
	line	32
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	33
	
l6794:	
# 33 "main.c"
clrwdt ;#
psect	maintext
	line	34
	
l6796:	
;main.c: 34: System_init();
	fcall	_System_init
	line	35
	
l6798:	
;main.c: 35: GPIO_Init();
	fcall	_GPIO_Init
	line	36
	
l6800:	
;main.c: 36: PWM4_Init();
	fcall	_PWM4_Init
	line	37
	
l6802:	
;main.c: 37: ADC_Init();
	fcall	_ADC_Init
	goto	l6804
	line	38
;main.c: 38: while(1){
	
l1091:	
	line	39
	
l6804:	
# 39 "main.c"
clrwdt ;#
psect	maintext
	line	40
	
l6806:	
;main.c: 40: ADC_Init();
	fcall	_ADC_Init
	line	41
	
l6808:	
;main.c: 41: for(j=0;j<5;j++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_j)
	
l6810:	
	movlw	(05h)
	subwf	(_j),w
	skipc
	goto	u3141
	goto	u3140
u3141:
	goto	l6814
u3140:
	goto	l6820
	
l6812:	
	goto	l6820
	line	42
	
l1092:	
	
l6814:	
;main.c: 42: ADC5_Input = GetADCValue();
	fcall	_GetADCValue
	movf	(1+(?_GetADCValue)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_ADC5_Input+1)
	addwf	(_ADC5_Input+1)
	movf	(0+(?_GetADCValue)),w
	clrf	(_ADC5_Input)
	addwf	(_ADC5_Input)

	line	41
	
l6816:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_j),f
	
l6818:	
	movlw	(05h)
	subwf	(_j),w
	skipc
	goto	u3151
	goto	u3150
u3151:
	goto	l6814
u3150:
	goto	l6820
	
l1093:	
	line	43
	
l6820:	
;main.c: 43: if(ADC5_Input > 200){
	movlw	high(0C9h)
	subwf	(_ADC5_Input+1),w
	movlw	low(0C9h)
	skipnz
	subwf	(_ADC5_Input),w
	skipc
	goto	u3161
	goto	u3160
u3161:
	goto	l1094
u3160:
	line	44
	
l6822:	
;main.c: 44: mode_GPIO=0;
	clrf	(_mode_GPIO)
	line	45
	
l6824:	
;main.c: 45: if(mode_PWM == 0){
	movf	(_mode_PWM),f
	skipz
	goto	u3171
	goto	u3170
u3171:
	goto	l6830
u3170:
	line	46
	
l6826:	
;main.c: 46: PWM4_Init();
	fcall	_PWM4_Init
	line	47
	
l6828:	
;main.c: 47: mode_PWM=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_mode_PWM)
	bsf	status,0
	rlf	(_mode_PWM),f
	goto	l6830
	line	48
	
l1095:	
	line	49
	
l6830:	
;main.c: 48: }
;main.c: 49: ADC_VALUE = (unsigned short int)(adc_K*(float)ADC5_Input+24);
	movf	(_ADC5_Input+1),w
	clrf	(?___lwtoft+1)
	addwf	(?___lwtoft+1)
	movf	(_ADC5_Input),w
	clrf	(?___lwtoft)
	addwf	(?___lwtoft)

	fcall	___lwtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwtoft)),w
	movwf	0+(?___ftmul)+03h
	movf	(1+(?___lwtoft)),w
	movwf	1+(?___ftmul)+03h
	movf	(2+(?___lwtoft)),w
	movwf	2+(?___ftmul)+03h
	movf	(_adc_K),w
	movwf	(?___ftmul)
	movf	(_adc_K+1),w
	movwf	(?___ftmul+1)
	movf	(_adc_K+2),w
	movwf	(?___ftmul+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	0+(?___ftadd)+03h
	movf	(1+(?___ftmul)),w
	movwf	1+(?___ftadd)+03h
	movf	(2+(?___ftmul)),w
	movwf	2+(?___ftadd)+03h
	movlw	0x0
	movwf	(?___ftadd)
	movlw	0xc0
	movwf	(?___ftadd+1)
	movlw	0x41
	movwf	(?___ftadd+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(?___fttol)
	movf	(1+(?___ftadd)),w
	movwf	(?___fttol+1)
	movf	(2+(?___ftadd)),w
	movwf	(?___fttol+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?___fttol)))),w
	clrf	(_ADC_VALUE+1)
	addwf	(_ADC_VALUE+1)
	movf	0+(((0+(?___fttol)))),w
	clrf	(_ADC_VALUE)
	addwf	(_ADC_VALUE)

	line	50
	
l6832:	
;main.c: 50: if(ADC_VALUE >= 140)
	movlw	high(08Ch)
	subwf	(_ADC_VALUE+1),w
	movlw	low(08Ch)
	skipnz
	subwf	(_ADC_VALUE),w
	skipc
	goto	u3181
	goto	u3180
u3181:
	goto	l1096
u3180:
	line	51
	
l6834:	
;main.c: 51: ADC_VALUE = 140;
	movlw	low(08Ch)
	movwf	(_ADC_VALUE)
	movlw	high(08Ch)
	movwf	((_ADC_VALUE))+1
	
l1096:	
	line	52
;main.c: 52: if(ADC_VALUE <= 35)
	movlw	high(024h)
	subwf	(_ADC_VALUE+1),w
	movlw	low(024h)
	skipnz
	subwf	(_ADC_VALUE),w
	skipnc
	goto	u3191
	goto	u3190
u3191:
	goto	l1097
u3190:
	line	53
	
l6836:	
;main.c: 53: ADC_VALUE = 35;
	movlw	low(023h)
	movwf	(_ADC_VALUE)
	movlw	high(023h)
	movwf	((_ADC_VALUE))+1
	
l1097:	
	line	55
;main.c: 55: if(ADC_VALUE != ADC_old_value)
	movf	(_ADC_old_value+1),w
	xorwf	(_ADC_VALUE+1),w
	skipz
	goto	u3205
	movf	(_ADC_old_value),w
	xorwf	(_ADC_VALUE),w
u3205:

	skipnz
	goto	u3201
	goto	u3200
u3201:
	goto	l6840
u3200:
	line	56
	
l6838:	
;main.c: 56: SetPWM4Plus(ADC_VALUE);
	movf	(_ADC_VALUE),w
	fcall	_SetPWM4Plus
	goto	l6840
	
l1098:	
	line	57
	
l6840:	
;main.c: 57: ADC_old_value = ADC_VALUE;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_ADC_VALUE+1),w
	clrf	(_ADC_old_value+1)
	addwf	(_ADC_old_value+1)
	movf	(_ADC_VALUE),w
	clrf	(_ADC_old_value)
	addwf	(_ADC_old_value)

	line	59
;main.c: 59: }else{
	goto	l6804
	
l1094:	
	line	60
;main.c: 60: mode_PWM=0;
	clrf	(_mode_PWM)
	line	61
	
l6842:	
;main.c: 61: if(mode_GPIO == 0){
	movf	(_mode_GPIO),f
	skipz
	goto	u3211
	goto	u3210
u3211:
	goto	l6856
u3210:
	line	62
	
l6844:	
;main.c: 62: mode_GPIO=1;
	clrf	(_mode_GPIO)
	bsf	status,0
	rlf	(_mode_GPIO),f
	line	63
	
l6846:	
;main.c: 63: TMR4ON =0;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2226/8)^0100h,(2226)&7
	line	64
	
l6848:	
;main.c: 64: P4EN=0;
	bcf	(2231/8)^0100h,(2231)&7
	line	65
	
l6850:	
;main.c: 65: TRISC1=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1081/8)^080h,(1081)&7
	line	66
	
l6852:	
;main.c: 66: WPUC3=1;
	bsf	(1091/8)^080h,(1091)&7
	line	67
	
l6854:	
;main.c: 67: PC3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
	goto	l6856
	line	68
	
l1100:	
	line	69
	
l6856:	
;main.c: 68: }
;main.c: 69: PC3=PC2;
	btfsc	(58/8),(58)&7
	goto	u3221
	goto	u3220
	
u3221:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7
	goto	u3234
u3220:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
u3234:
	goto	l6804
	line	70
	
l1099:	
	goto	l6804
	line	71
	
l1101:	
	line	38
	goto	l6804
	
l1102:	
	line	72
	
l1103:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_ADC_Init
psect	text370,local,class=CODE,delta=2
global __ptext370
__ptext370:

;; *************** function _ADC_Init *****************
;; Defined at:
;;		line 18 in file "myadc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Delay_xms
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text370
	file	"myadc.c"
	line	18
	global	__size_of_ADC_Init
	__size_of_ADC_Init	equ	__end_of_ADC_Init-_ADC_Init
	
_ADC_Init:	
	opt	stack 5
; Regs used in _ADC_Init: [wreg+status,2+status,0+pclath+cstack]
	line	20
	
l6774:	
;myadc.c: 20: TRISC1=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1081/8)^080h,(1081)&7
	line	21
;myadc.c: 21: ANSEL5=1;
	bsf	(1165/8)^080h,(1165)&7
	line	24
;myadc.c: 24: DIVS=0;
	bcf	(1279/8)^080h,(1279)&7
	line	25
;myadc.c: 25: ADCS0=0;ADCS1=0;ADCS2=0;
	bcf	(1276/8)^080h,(1276)&7
	bcf	(1277/8)^080h,(1277)&7
	bcf	(1278/8)^080h,(1278)&7
	line	27
	
l6776:	
;myadc.c: 27: ADCON0=0B10000001;
	movlw	(081h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	28
	
l6778:	
;myadc.c: 28: VCFG0=0;
	bcf	(253/8),(253)&7
	line	29
	
l6780:	
;myadc.c: 29: CHS0=1;CHS1=0;CHS2=1;
	bsf	(250/8),(250)&7
	
l6782:	
	bcf	(251/8),(251)&7
	
l6784:	
	bsf	(252/8),(252)&7
	line	30
	
l6786:	
;myadc.c: 30: ADFM=1;
	bsf	(255/8),(255)&7
	line	31
	
l6788:	
;myadc.c: 31: ADON=1;
	bsf	(248/8),(248)&7
	line	33
	
l6790:	
;myadc.c: 33: Delay_xms(1);
	movlw	low(01h)
	movwf	(?_Delay_xms)
	movlw	high(01h)
	movwf	((?_Delay_xms))+1
	fcall	_Delay_xms
	line	35
	
l6792:	
;myadc.c: 35: GO_DONE=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(249/8),(249)&7
	line	36
	
l2175:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Init
	__end_of_ADC_Init:
;; =============== function _ADC_Init ends ============

	signat	_ADC_Init,88
	global	___lwtoft
psect	text371,local,class=CODE,delta=2
global __ptext371
__ptext371:

;; *************** function ___lwtoft *****************
;; Defined at:
;;		line 29 in file "D:\EmbeddedTools\MS_MCU\HI-TECH Software\PICC\9.83\sources\lwtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2   17[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   17[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       3       0
;;      Locals:         0       0       0
;;      Temps:          1       0       0
;;      Totals:         1       3       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text371
	file	"D:\EmbeddedTools\MS_MCU\HI-TECH Software\PICC\9.83\sources\lwtoft.c"
	line	29
	global	__size_of___lwtoft
	__size_of___lwtoft	equ	__end_of___lwtoft-___lwtoft
	
___lwtoft:	
	opt	stack 5
; Regs used in ___lwtoft: [wreg+status,2+status,0+pclath+cstack]
	line	30
	
l6770:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___lwtoft@c),w
	movwf	(?___ftpack)
	movf	(___lwtoft@c+1),w
	movwf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	movlw	(08Eh)
	movwf	(??___lwtoft+0)+0
	movf	(??___lwtoft+0)+0,w
	movwf	0+(?___ftpack)+03h
	clrf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___lwtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___lwtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___lwtoft+2)
	goto	l5221
	
l6772:	
	line	31
	
l5221:	
	return
	opt stack 0
GLOBAL	__end_of___lwtoft
	__end_of___lwtoft:
;; =============== function ___lwtoft ends ============

	signat	___lwtoft,4219
	global	___ftmul
psect	text372,local,class=CODE,delta=2
global __ptext372
__ptext372:

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 52 in file "D:\EmbeddedTools\MS_MCU\HI-TECH Software\PICC\9.83\sources\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   20[BANK0 ] float 
;;  f2              3   23[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   31[BANK0 ] unsigned um
;;  sign            1   35[BANK0 ] unsigned char 
;;  cntr            1   34[BANK0 ] unsigned char 
;;  exp             1   30[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   20[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       6       0
;;      Locals:         0       6       0
;;      Temps:          0       4       0
;;      Totals:         0      16       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text372
	file	"D:\EmbeddedTools\MS_MCU\HI-TECH Software\PICC\9.83\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
	opt	stack 5
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l6720:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@exp)
	movf	((___ftmul@exp)),f
	skipz
	goto	u3001
	goto	u3000
u3001:
	goto	l6726
u3000:
	line	57
	
l6722:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l5097
	
l6724:	
	goto	l5097
	
l5096:	
	line	58
	
l6726:	
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	movf	((___ftmul@sign)),f
	skipz
	goto	u3011
	goto	u3010
u3011:
	goto	l6732
u3010:
	line	59
	
l6728:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l5097
	
l6730:	
	goto	l5097
	
l5098:	
	line	60
	
l6732:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	addwf	(___ftmul@exp),f
	line	61
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u3025:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u3020:
	addlw	-1
	skipz
	goto	u3025
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	line	62
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u3035:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u3030:
	addlw	-1
	skipz
	goto	u3035
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	xorwf	(___ftmul@sign),f
	line	63
	movlw	(080h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	andwf	(___ftmul@sign),f
	line	64
	
l6734:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	66
	
l6736:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	67
	
l6738:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	68
	
l6740:	
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	line	69
	
l6742:	
	movlw	(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l6744
	line	70
	
l5099:	
	line	71
	
l6744:	
	btfss	(___ftmul@f1),(0)&7
	goto	u3041
	goto	u3040
u3041:
	goto	l6748
u3040:
	line	72
	
l6746:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u3051
	addwf	(___ftmul@f3_as_product+1),f
u3051:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u3052
	addwf	(___ftmul@f3_as_product+2),f
u3052:

	goto	l6748
	
l5100:	
	line	73
	
l6748:	
	movlw	01h
u3065:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u3065

	line	74
	
l6750:	
	movlw	01h
u3075:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u3075
	line	75
	
l6752:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u3081
	goto	u3080
u3081:
	goto	l6744
u3080:
	goto	l6754
	
l5101:	
	line	76
	
l6754:	
	movlw	(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l6756
	line	77
	
l5102:	
	line	78
	
l6756:	
	btfss	(___ftmul@f1),(0)&7
	goto	u3091
	goto	u3090
u3091:
	goto	l6760
u3090:
	line	79
	
l6758:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u3101
	addwf	(___ftmul@f3_as_product+1),f
u3101:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u3102
	addwf	(___ftmul@f3_as_product+2),f
u3102:

	goto	l6760
	
l5103:	
	line	80
	
l6760:	
	movlw	01h
u3115:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u3115

	line	81
	
l6762:	
	movlw	01h
u3125:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u3125

	line	82
	
l6764:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u3131
	goto	u3130
u3131:
	goto	l6756
u3130:
	goto	l6766
	
l5104:	
	line	83
	
l6766:	
	movf	(___ftmul@f3_as_product),w
	movwf	(?___ftpack)
	movf	(___ftmul@f3_as_product+1),w
	movwf	(?___ftpack+1)
	movf	(___ftmul@f3_as_product+2),w
	movwf	(?___ftpack+2)
	movf	(___ftmul@exp),w
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___ftmul@sign),w
	movwf	(??___ftmul+1)+0
	movf	(??___ftmul+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftmul+2)
	goto	l5097
	
l6768:	
	line	84
	
l5097:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
;; =============== function ___ftmul ends ============

	signat	___ftmul,8315
	global	___ftadd
psect	text373,local,class=CODE,delta=2
global __ptext373
__ptext373:

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 87 in file "D:\EmbeddedTools\MS_MCU\HI-TECH Software\PICC\9.83\sources\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3   36[BANK0 ] float 
;;  f2              3   39[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   48[BANK0 ] unsigned char 
;;  exp2            1   47[BANK0 ] unsigned char 
;;  sign            1   46[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   36[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       6       0
;;      Locals:         0       3       0
;;      Temps:          0       4       0
;;      Totals:         0      13       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;;		___ftsub
;; This function uses a non-reentrant model
;;
psect	text373
	file	"D:\EmbeddedTools\MS_MCU\HI-TECH Software\PICC\9.83\sources\ftadd.c"
	line	87
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
	opt	stack 5
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l6650:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftadd@f1),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f1+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f1+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(??___ftadd+3)+0
	movf	(??___ftadd+3)+0,w
	movwf	(___ftadd@exp1)
	line	91
	movf	(___ftadd@f2),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f2+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f2+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(??___ftadd+3)+0
	movf	(??___ftadd+3)+0,w
	movwf	(___ftadd@exp2)
	line	92
	
l6652:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u2760
	goto	l6658
u2760:
	
l6654:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u2771
	goto	u2770
u2771:
	goto	l6662
u2770:
	
l6656:	
	decf	(___ftadd@exp1),w
	xorlw	0ffh
	addwf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u2781
	goto	u2780
u2781:
	goto	l6662
u2780:
	goto	l6658
	
l5044:	
	line	93
	
l6658:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l5045
	
l6660:	
	goto	l5045
	
l5042:	
	line	94
	
l6662:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u2790
	goto	l5048
u2790:
	
l6664:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u2801
	goto	u2800
u2801:
	goto	l6668
u2800:
	
l6666:	
	decf	(___ftadd@exp2),w
	xorlw	0ffh
	addwf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u2811
	goto	u2810
u2811:
	goto	l6668
u2810:
	
l5048:	
	line	95
	goto	l5045
	
l5046:	
	line	96
	
l6668:	
	movlw	(06h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftadd@sign)
	line	97
	
l6670:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u2821
	goto	u2820
u2821:
	goto	l5049
u2820:
	line	98
	
l6672:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l5049:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u2831
	goto	u2830
u2831:
	goto	l5050
u2830:
	line	100
	
l6674:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l5050:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l6676:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l6678:	
	bsf	(___ftadd@f2)+(15/8),(15)&7
	line	104
	movlw	0FFh
	andwf	(___ftadd@f2),f
	movlw	0FFh
	andwf	(___ftadd@f2+1),f
	movlw	0
	andwf	(___ftadd@f2+2),f
	line	106
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u2841
	goto	u2840
u2841:
	goto	l6690
u2840:
	goto	l6680
	line	109
	
l5052:	
	line	110
	
l6680:	
	movlw	01h
u2855:
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	addlw	-1
	skipz
	goto	u2855
	line	111
	movlw	low(01h)
	subwf	(___ftadd@exp2),f
	line	112
	
l6682:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u2861
	goto	u2860
u2861:
	goto	l6688
u2860:
	
l6684:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u2871
	goto	u2870
u2871:
	goto	l6680
u2870:
	goto	l6688
	
l5054:	
	goto	l6688
	
l5055:	
	line	113
	goto	l6688
	
l5057:	
	line	114
	
l6686:	
	movlw	01h
u2885:
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	addlw	-1
	skipz
	goto	u2885

	line	115
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp1),f
	goto	l6688
	line	116
	
l5056:	
	line	113
	
l6688:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u2891
	goto	u2890
u2891:
	goto	l6686
u2890:
	goto	l5059
	
l5058:	
	line	117
	goto	l5059
	
l5051:	
	
l6690:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u2901
	goto	u2900
u2901:
	goto	l5059
u2900:
	goto	l6692
	line	120
	
l5061:	
	line	121
	
l6692:	
	movlw	01h
u2915:
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	addlw	-1
	skipz
	goto	u2915
	line	122
	movlw	low(01h)
	subwf	(___ftadd@exp1),f
	line	123
	
l6694:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u2921
	goto	u2920
u2921:
	goto	l6700
u2920:
	
l6696:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u2931
	goto	u2930
u2931:
	goto	l6692
u2930:
	goto	l6700
	
l5063:	
	goto	l6700
	
l5064:	
	line	124
	goto	l6700
	
l5066:	
	line	125
	
l6698:	
	movlw	01h
u2945:
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	addlw	-1
	skipz
	goto	u2945

	line	126
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp2),f
	goto	l6700
	line	127
	
l5065:	
	line	124
	
l6700:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u2951
	goto	u2950
u2951:
	goto	l6698
u2950:
	goto	l5059
	
l5067:	
	goto	l5059
	line	128
	
l5060:	
	line	129
	
l5059:	
	btfss	(___ftadd@sign),(7)&7
	goto	u2961
	goto	u2960
u2961:
	goto	l6704
u2960:
	line	131
	
l6702:	
	movlw	0FFh
	xorwf	(___ftadd@f1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+2),f
	line	132
	movlw	01h
	addwf	(___ftadd@f1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+2),f
	goto	l6704
	line	133
	
l5068:	
	line	134
	
l6704:	
	btfss	(___ftadd@sign),(6)&7
	goto	u2971
	goto	u2970
u2971:
	goto	l6708
u2970:
	line	136
	
l6706:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	137
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2),f
	goto	l6708
	line	138
	
l5069:	
	line	139
	
l6708:	
	clrf	(___ftadd@sign)
	line	140
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u2981
	addwf	(___ftadd@f2+1),f
u2981:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u2982
	addwf	(___ftadd@f2+2),f
u2982:

	line	141
	
l6710:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u2991
	goto	u2990
u2991:
	goto	l6716
u2990:
	line	142
	
l6712:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	143
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2),f
	line	144
	
l6714:	
	clrf	(___ftadd@sign)
	bsf	status,0
	rlf	(___ftadd@sign),f
	goto	l6716
	line	145
	
l5070:	
	line	146
	
l6716:	
	movf	(___ftadd@f2),w
	movwf	(?___ftpack)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftpack+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftpack+2)
	movf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___ftadd@sign),w
	movwf	(??___ftadd+1)+0
	movf	(??___ftadd+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftadd)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftadd+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftadd+2)
	goto	l5045
	
l6718:	
	line	148
	
l5045:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
;; =============== function ___ftadd ends ============

	signat	___ftadd,8315
	global	_Delay_xms
psect	text374,local,class=CODE,delta=2
global __ptext374
__ptext374:

;; *************** function _Delay_xms *****************
;; Defined at:
;;		line 47 in file "myconfiguration.c"
;; Parameters:    Size  Location     Type
;;  x               2    4[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  i               2    8[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         2       0       0
;;      Locals:         2       0       0
;;      Temps:          2       0       0
;;      Totals:         6       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ADC_Init
;; This function uses a non-reentrant model
;;
psect	text374
	file	"myconfiguration.c"
	line	47
	global	__size_of_Delay_xms
	__size_of_Delay_xms	equ	__end_of_Delay_xms-_Delay_xms
	
_Delay_xms:	
	opt	stack 5
; Regs used in _Delay_xms: [wreg+status,2]
	line	49
	
l6644:	
;myconfiguration.c: 48: unsigned int i;
;myconfiguration.c: 49: for(i=0;i<x;i++){
	clrf	(Delay_xms@i)
	clrf	(Delay_xms@i+1)
	goto	l3255
	
l3256:	
	line	50
	
l6646:	
;myconfiguration.c: 50: _delay((unsigned long)((1)*(16000000/4000.0)));
	opt asmopt_off
movlw	6
movwf	((??_Delay_xms+0)+0+1),f
	movlw	48
movwf	((??_Delay_xms+0)+0),f
u3247:
	decfsz	((??_Delay_xms+0)+0),f
	goto	u3247
	decfsz	((??_Delay_xms+0)+0+1),f
	goto	u3247
	clrwdt
opt asmopt_on

	line	51
	
l6648:	
# 51 "myconfiguration.c"
clrwdt ;#
psect	text374
	line	49
	movlw	low(01h)
	addwf	(Delay_xms@i),f
	skipnc
	incf	(Delay_xms@i+1),f
	movlw	high(01h)
	addwf	(Delay_xms@i+1),f
	
l3255:	
	movf	(Delay_xms@x+1),w
	subwf	(Delay_xms@i+1),w
	skipz
	goto	u2755
	movf	(Delay_xms@x),w
	subwf	(Delay_xms@i),w
u2755:
	skipc
	goto	u2751
	goto	u2750
u2751:
	goto	l6646
u2750:
	goto	l3258
	
l3257:	
	line	53
	
l3258:	
	return
	opt stack 0
GLOBAL	__end_of_Delay_xms
	__end_of_Delay_xms:
;; =============== function _Delay_xms ends ============

	signat	_Delay_xms,4216
	global	___fttol
psect	text375,local,class=CODE,delta=2
global __ptext375
__ptext375:

;; *************** function ___fttol *****************
;; Defined at:
;;		line 45 in file "D:\EmbeddedTools\MS_MCU\HI-TECH Software\PICC\9.83\sources\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3    3[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   12[BANK0 ] unsigned long 
;;  exp1            1   16[BANK0 ] unsigned char 
;;  sign1           1   11[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    3[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       4       0
;;      Locals:         0       6       0
;;      Temps:          0       4       0
;;      Totals:         0      14       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text375
	file	"D:\EmbeddedTools\MS_MCU\HI-TECH Software\PICC\9.83\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
	opt	stack 6
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l6538:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	clrc
	rlf	(??___fttol+0)+1,w
	rlf	(??___fttol+0)+2,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@exp1)
	movf	((___fttol@exp1)),f
	skipz
	goto	u2571
	goto	u2570
u2571:
	goto	l6544
u2570:
	line	50
	
l6540:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l5108
	
l6542:	
	goto	l5108
	
l5107:	
	line	51
	
l6544:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u2585:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u2580:
	addlw	-1
	skipz
	goto	u2585
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l6546:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l6548:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l6550:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l6552:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l6554:	
	btfss	(___fttol@exp1),7
	goto	u2591
	goto	u2590
u2591:
	goto	l6564
u2590:
	line	57
	
l6556:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u2601
	goto	u2600
u2601:
	goto	l6562
u2600:
	line	58
	
l6558:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l5108
	
l6560:	
	goto	l5108
	
l5110:	
	goto	l6562
	line	59
	
l5111:	
	line	60
	
l6562:	
	movlw	01h
u2615:
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	addlw	-1
	skipz
	goto	u2615

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u2621
	goto	u2620
u2621:
	goto	l6562
u2620:
	goto	l6574
	
l5112:	
	line	62
	goto	l6574
	
l5109:	
	line	63
	
l6564:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u2631
	goto	u2630
u2631:
	goto	l6572
u2630:
	line	64
	
l6566:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l5108
	
l6568:	
	goto	l5108
	
l5114:	
	line	65
	goto	l6572
	
l5116:	
	line	66
	
l6570:	
	movlw	01h
	movwf	(??___fttol+0)+0
u2645:
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	(??___fttol+0)+0
	goto	u2645
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	goto	l6572
	line	68
	
l5115:	
	line	65
	
l6572:	
	movf	(___fttol@exp1),f
	skipz
	goto	u2651
	goto	u2650
u2651:
	goto	l6570
u2650:
	goto	l6574
	
l5117:	
	goto	l6574
	line	69
	
l5113:	
	line	70
	
l6574:	
	movf	(___fttol@sign1),w
	skipz
	goto	u2660
	goto	l6578
u2660:
	line	71
	
l6576:	
	comf	(___fttol@lval),f
	comf	(___fttol@lval+1),f
	comf	(___fttol@lval+2),f
	comf	(___fttol@lval+3),f
	incf	(___fttol@lval),f
	skipnz
	incf	(___fttol@lval+1),f
	skipnz
	incf	(___fttol@lval+2),f
	skipnz
	incf	(___fttol@lval+3),f
	goto	l6578
	
l5118:	
	line	72
	
l6578:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	goto	l5108
	
l6580:	
	line	73
	
l5108:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
;; =============== function ___fttol ends ============

	signat	___fttol,4220
	global	___ftpack
psect	text376,local,class=CODE,delta=2
global __ptext376
__ptext376:

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 63 in file "D:\EmbeddedTools\MS_MCU\HI-TECH Software\PICC\9.83\sources\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    4[COMMON] unsigned um
;;  exp             1    7[COMMON] unsigned char 
;;  sign            1    8[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    4[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         5       0       0
;;      Locals:         0       0       0
;;      Temps:          0       3       0
;;      Totals:         5       3       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___ftadd
;;		___ftmul
;;		___lwtoft
;;		___ftdiv
;;		___lbtoft
;;		___abtoft
;;		___awtoft
;;		___altoft
;;		___lltoft
;;		___attoft
;;		___lttoft
;; This function uses a non-reentrant model
;;
psect	text376
	file	"D:\EmbeddedTools\MS_MCU\HI-TECH Software\PICC\9.83\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt	stack 5
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l6464:	
	movf	(___ftpack@exp),w
	skipz
	goto	u2380
	goto	l6468
u2380:
	
l6466:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u2391
	goto	u2390
u2391:
	goto	l6474
u2390:
	goto	l6468
	
l5332:	
	line	65
	
l6468:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l5333
	
l6470:	
	goto	l5333
	
l5330:	
	line	66
	goto	l6474
	
l5335:	
	line	67
	
l6472:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u2405:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u2405

	goto	l6474
	line	69
	
l5334:	
	line	66
	
l6474:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2411
	goto	u2410
u2411:
	goto	l6472
u2410:
	goto	l5337
	
l5336:	
	line	70
	goto	l5337
	
l5338:	
	line	71
	
l6476:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l6478:	
	movlw	01h
	addwf	(___ftpack@arg),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+2),f
	line	73
	
l6480:	
	movlw	01h
u2425:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u2425

	line	74
	
l5337:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2431
	goto	u2430
u2431:
	goto	l6476
u2430:
	goto	l6484
	
l5339:	
	line	75
	goto	l6484
	
l5341:	
	line	76
	
l6482:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u2445:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u2445
	goto	l6484
	line	78
	
l5340:	
	line	75
	
l6484:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u2451
	goto	u2450
u2451:
	goto	l6482
u2450:
	
l5342:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u2461
	goto	u2460
u2461:
	goto	l5343
u2460:
	line	80
	
l6486:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l5343:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l6488:	
	movf	(___ftpack@exp),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u2475:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u2470:
	addlw	-1
	skipz
	goto	u2475
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l6490:	
	movf	(___ftpack@sign),w
	skipz
	goto	u2480
	goto	l5344
u2480:
	line	84
	
l6492:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l5344:	
	line	85
	line	86
	
l5333:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
	global	_SetPWM4Plus
psect	text377,local,class=CODE,delta=2
global __ptext377
__ptext377:

;; *************** function _SetPWM4Plus *****************
;; Defined at:
;;		line 52 in file "mypwm4.c"
;; Parameters:    Size  Location     Type
;;  num             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  num             1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         1       0       0
;;      Temps:          0       0       0
;;      Totals:         1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text377
	file	"mypwm4.c"
	line	52
	global	__size_of_SetPWM4Plus
	__size_of_SetPWM4Plus	equ	__end_of_SetPWM4Plus-_SetPWM4Plus
	
_SetPWM4Plus:	
	opt	stack 6
; Regs used in _SetPWM4Plus: [wreg]
;SetPWM4Plus@num stored from wreg
	line	54
	movwf	(SetPWM4Plus@num)
	
l6462:	
;mypwm4.c: 54: PR4L = num;
	movf	(SetPWM4Plus@num),w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(276)^0100h	;volatile
	line	55
	
l4329:	
	return
	opt stack 0
GLOBAL	__end_of_SetPWM4Plus
	__end_of_SetPWM4Plus:
;; =============== function _SetPWM4Plus ends ============

	signat	_SetPWM4Plus,4216
	global	_GetADCValue
psect	text378,local,class=CODE,delta=2
global __ptext378
__ptext378:

;; *************** function _GetADCValue *****************
;; Defined at:
;;		line 46 in file "myadc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  ADC_num         2    8[COMMON] unsigned short 
;; Return value:  Size  Location     Type
;;                  2    4[COMMON] unsigned short 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         2       0       0
;;      Locals:         2       0       0
;;      Temps:          2       0       0
;;      Totals:         6       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text378
	file	"myadc.c"
	line	46
	global	__size_of_GetADCValue
	__size_of_GetADCValue	equ	__end_of_GetADCValue-_GetADCValue
	
_GetADCValue:	
	opt	stack 6
; Regs used in _GetADCValue: [wreg+status,2+status,0]
	line	47
	
l6450:	
;myadc.c: 47: unsigned short int ADC_num=0;
	clrf	(GetADCValue@ADC_num)
	clrf	(GetADCValue@ADC_num+1)
	line	49
	
l6452:	
;myadc.c: 49: if(GO_DONE==0){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(249/8),(249)&7
	goto	u2371
	goto	u2370
u2371:
	goto	l6458
u2370:
	line	50
	
l6454:	
;myadc.c: 50: ADC_num=ADRESH;
	movf	(30),w	;volatile
	movwf	(??_GetADCValue+0)+0
	clrf	(??_GetADCValue+0)+0+1
	movf	0+(??_GetADCValue+0)+0,w
	movwf	(GetADCValue@ADC_num)
	movf	1+(??_GetADCValue+0)+0,w
	movwf	(GetADCValue@ADC_num+1)
	line	51
;myadc.c: 51: ADC_num=ADC_num<<8;
	movf	(GetADCValue@ADC_num),w
	movwf	(??_GetADCValue+0)+0+1
	clrf	(??_GetADCValue+0)+0
	movf	0+(??_GetADCValue+0)+0,w
	movwf	(GetADCValue@ADC_num)
	movf	1+(??_GetADCValue+0)+0,w
	movwf	(GetADCValue@ADC_num+1)
	line	52
;myadc.c: 52: ADC_num=ADC_num|ADRESL;
	movf	(GetADCValue@ADC_num),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	iorwf	(158)^080h,w	;volatile
	movwf	(GetADCValue@ADC_num)
	movf	(GetADCValue@ADC_num+1),w
	movwf	1+(GetADCValue@ADC_num)
	line	53
	
l6456:	
;myadc.c: 53: GO_DONE=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(249/8),(249)&7
	goto	l6458
	line	54
	
l2178:	
	line	55
	
l6458:	
;myadc.c: 54: }
;myadc.c: 55: return ADC_num;
	movf	(GetADCValue@ADC_num+1),w
	clrf	(?_GetADCValue+1)
	addwf	(?_GetADCValue+1)
	movf	(GetADCValue@ADC_num),w
	clrf	(?_GetADCValue)
	addwf	(?_GetADCValue)

	goto	l2179
	
l6460:	
	line	56
	
l2179:	
	return
	opt stack 0
GLOBAL	__end_of_GetADCValue
	__end_of_GetADCValue:
;; =============== function _GetADCValue ends ============

	signat	_GetADCValue,90
	global	_PWM4_Init
psect	text379,local,class=CODE,delta=2
global __ptext379
__ptext379:

;; *************** function _PWM4_Init *****************
;; Defined at:
;;		line 20 in file "mypwm4.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text379
	file	"mypwm4.c"
	line	20
	global	__size_of_PWM4_Init
	__size_of_PWM4_Init	equ	__end_of_PWM4_Init-_PWM4_Init
	
_PWM4_Init:	
	opt	stack 6
; Regs used in _PWM4_Init: [wreg+status,2]
	line	21
	
l6438:	
;mypwm4.c: 21: TRISC3 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1083/8)^080h,(1083)&7
	line	23
;mypwm4.c: 23: P4INTS=0;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2223/8)^0100h,(2223)&7
	line	24
;mypwm4.c: 24: P4PER0=1;P4PER1=0;P4PER2=1;
	bsf	(2220/8)^0100h,(2220)&7
	bcf	(2221/8)^0100h,(2221)&7
	bsf	(2222/8)^0100h,(2222)&7
	line	25
;mypwm4.c: 25: P4CKSRC0=1;P4CKSRC1=0;P4CKSRC2=0;
	bsf	(2217/8)^0100h,(2217)&7
	bcf	(2218/8)^0100h,(2218)&7
	bcf	(2219/8)^0100h,(2219)&7
	line	26
;mypwm4.c: 26: P4BZR=0;
	bcf	(2216/8)^0100h,(2216)&7
	line	28
;mypwm4.c: 28: P4EN=1;
	bsf	(2231/8)^0100h,(2231)&7
	line	29
;mypwm4.c: 29: P4POL=0;
	bcf	(2230/8)^0100h,(2230)&7
	line	30
;mypwm4.c: 30: TMR4PS0=1;TMR4PS1=0;TMR4PS2=1;
	bsf	(2227/8)^0100h,(2227)&7
	bcf	(2228/8)^0100h,(2228)&7
	bsf	(2229/8)^0100h,(2229)&7
	line	31
;mypwm4.c: 31: TMR4ON=0;
	bcf	(2226/8)^0100h,(2226)&7
	line	32
;mypwm4.c: 32: TMR4IE=0;
	bcf	(2225/8)^0100h,(2225)&7
	line	33
;mypwm4.c: 33: TMR4IF=0;
	bcf	(2224/8)^0100h,(2224)&7
	line	35
	
l6440:	
;mypwm4.c: 35: T4CKDIV=8;
	movlw	(08h)
	movwf	(279)^0100h	;volatile
	line	37
	
l6442:	
;mypwm4.c: 37: TMR4H=0;
	clrf	(275)^0100h	;volatile
	line	38
	
l6444:	
;mypwm4.c: 38: PR4L=50;
	movlw	(032h)
	movwf	(276)^0100h	;volatile
	line	42
	
l6446:	
;mypwm4.c: 42: TMR4IF=0;
	bcf	(2224/8)^0100h,(2224)&7
	line	43
	
l6448:	
;mypwm4.c: 43: TMR4ON=1;
	bsf	(2226/8)^0100h,(2226)&7
	line	44
;mypwm4.c: 44: while(TMR4IF==0) asm("clrwdt");
	goto	l4323
	
l4324:	
# 44 "mypwm4.c"
clrwdt ;#
psect	text379
	
l4323:	
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	btfss	(2224/8)^0100h,(2224)&7
	goto	u2361
	goto	u2360
u2361:
	goto	l4324
u2360:
	
l4325:	
	line	45
;mypwm4.c: 45: TRISC3 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1083/8)^080h,(1083)&7
	line	46
	
l4326:	
	return
	opt stack 0
GLOBAL	__end_of_PWM4_Init
	__end_of_PWM4_Init:
;; =============== function _PWM4_Init ends ============

	signat	_PWM4_Init,88
	global	_GPIO_Init
psect	text380,local,class=CODE,delta=2
global __ptext380
__ptext380:

;; *************** function _GPIO_Init *****************
;; Defined at:
;;		line 23 in file "myconfiguration.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text380
	file	"myconfiguration.c"
	line	23
	global	__size_of_GPIO_Init
	__size_of_GPIO_Init	equ	__end_of_GPIO_Init-_GPIO_Init
	
_GPIO_Init:	
	opt	stack 6
; Regs used in _GPIO_Init: []
	line	25
	
l6436:	
;myconfiguration.c: 25: TRISA0=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1064/8)^080h,(1064)&7
	line	26
;myconfiguration.c: 26: TRISA1=0;
	bcf	(1065/8)^080h,(1065)&7
	line	27
;myconfiguration.c: 27: TRISA6=0;
	bcf	(1070/8)^080h,(1070)&7
	line	29
;myconfiguration.c: 29: TRISC1=0;
	bcf	(1081/8)^080h,(1081)&7
	line	30
;myconfiguration.c: 30: TRISC2=1;
	bsf	(1082/8)^080h,(1082)&7
	line	31
;myconfiguration.c: 31: TRISC3=0;
	bcf	(1083/8)^080h,(1083)&7
	line	33
;myconfiguration.c: 33: CM0=1;CM1=1;CM2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(200/8),(200)&7
	bsf	(201/8),(201)&7
	bsf	(202/8),(202)&7
	line	37
;myconfiguration.c: 37: ANSEL0=0;ANSEL1=0;ANSEL2=0;ANSEL3=0;ANSEL4=0;ANSEL5=0;ANSEL6=0;ANSEL7=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1160/8)^080h,(1160)&7
	bcf	(1161/8)^080h,(1161)&7
	bcf	(1162/8)^080h,(1162)&7
	bcf	(1163/8)^080h,(1163)&7
	bcf	(1164/8)^080h,(1164)&7
	bcf	(1165/8)^080h,(1165)&7
	bcf	(1166/8)^080h,(1166)&7
	bcf	(1167/8)^080h,(1167)&7
	line	39
;myconfiguration.c: 39: WPUA0=1;WPUA1=1;WPUA6=1;
	bsf	(1192/8)^080h,(1192)&7
	bsf	(1193/8)^080h,(1193)&7
	bsf	(1198/8)^080h,(1198)&7
	line	41
;myconfiguration.c: 41: WPUC1=0;WPUC2=0;WPUC3=1;
	bcf	(1089/8)^080h,(1089)&7
	bcf	(1090/8)^080h,(1090)&7
	bsf	(1091/8)^080h,(1091)&7
	line	43
;myconfiguration.c: 43: WPDA4=0;WPDC1=0;WPDC2=0;WPDC3=0;
	bcf	(1100/8)^080h,(1100)&7
	bcf	(1099/8)^080h,(1099)&7
	bcf	(1098/8)^080h,(1098)&7
	bcf	(1097/8)^080h,(1097)&7
	line	44
	
l3252:	
	return
	opt stack 0
GLOBAL	__end_of_GPIO_Init
	__end_of_GPIO_Init:
;; =============== function _GPIO_Init ends ============

	signat	_GPIO_Init,88
	global	_System_init
psect	text381,local,class=CODE,delta=2
global __ptext381
__ptext381:

;; *************** function _System_init *****************
;; Defined at:
;;		line 14 in file "myconfiguration.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text381
	file	"myconfiguration.c"
	line	14
	global	__size_of_System_init
	__size_of_System_init	equ	__end_of_System_init-_System_init
	
_System_init:	
	opt	stack 6
; Regs used in _System_init: [wreg+status,2]
	line	16
	
l6430:	
;myconfiguration.c: 16: OPTION = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(129)^080h	;volatile
	line	17
	
l6432:	
;myconfiguration.c: 17: OSCCON = 0B01110000;
	movlw	(070h)
	movwf	(143)^080h	;volatile
	line	18
	
l6434:	
;myconfiguration.c: 18: WDTCON = 0B00001001;
	movlw	(09h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	19
	
l3249:	
	return
	opt stack 0
GLOBAL	__end_of_System_init
	__end_of_System_init:
;; =============== function _System_init ends ============

	signat	_System_init,88
	global	_ISR
psect	text382,local,class=CODE,delta=2
global __ptext382
__ptext382:

;; *************** function _ISR *****************
;; Defined at:
;;		line 81 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          4       0       0
;;      Totals:         4       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text382
	file	"main.c"
	line	81
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
	opt	stack 5
; Regs used in _ISR: []
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_ISR+0)
	movf	fsr0,w
	movwf	(??_ISR+1)
	movf	pclath,w
	movwf	(??_ISR+2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_ISR+3)
	ljmp	_ISR
psect	text382
	line	83
	
i1l1106:	
	movf	(??_ISR+3),w
	movwf	btemp+1
	movf	(??_ISR+2),w
	movwf	pclath
	movf	(??_ISR+1),w
	movwf	fsr0
	swapf	(??_ISR+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
;; =============== function _ISR ends ============

	signat	_ISR,88
psect	text383,local,class=CODE,delta=2
global __ptext383
__ptext383:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
