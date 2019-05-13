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
	FNCALL	_main,_ADC_Init
	FNCALL	_main,_EEPROM_Init
	FNCALL	_main,_LED_Study_End
	FNCALL	_main,_Read_EEPROM_u16
	FNCALL	_main,_ExchChannel
	FNCALL	_main,_GetADCValue
	FNCALL	_main,_delay_ms
	FNCALL	_main,_isKeyPressed
	FNCALL	_main,_Write_EEPROM_u16
	FNCALL	_LED_Study_End,_delay_ms
	FNCALL	_ADC_Init,_delay_ms
	FNCALL	_Write_EEPROM_u16,_Write_EEPROM_u8
	FNCALL	_Read_EEPROM_u16,_Read_EEPROM_u8
	FNCALL	_EEPROM_Init,_Write_EEPROM_u8
	FNROOT	_main
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_ADC1_INPUT
	global	_ADC5_ADCOUT
	global	_ADC_STUDY
	global	_i
	global	_j
	global	_PSTRCON
psect	text544,local,class=CODE,delta=2
global __ptext544
__ptext544:
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
	global	_TMR2
_TMR2	set	17
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
	global	_EEIF
_EEIF	set	103
	global	_GIE
_GIE	set	95
	global	_GO_DONE
_GO_DONE	set	249
	global	_PA0
_PA0	set	40
	global	_PA6
_PA6	set	46
	global	_PC2
_PC2	set	58
	global	_PEIE
_PEIE	set	94
	global	_T2CKPS0
_T2CKPS0	set	144
	global	_T2CKPS1
_T2CKPS1	set	145
	global	_TMR2IF
_TMR2IF	set	97
	global	_TMR2ON
_TMR2ON	set	146
	global	_TOUTPS0
_TOUTPS0	set	147
	global	_TOUTPS1
_TOUTPS1	set	148
	global	_TOUTPS2
_TOUTPS2	set	149
	global	_TOUTPS3
_TOUTPS3	set	150
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
	global	_EEDAT
_EEDAT	set	154
	global	_EEDATA
_EEDATA	set	154
	global	_OPTION
_OPTION	set	129
	global	_OSCCON
_OSCCON	set	143
	global	_PR2
_PR2	set	146
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
	global	_TMR2IE
_TMR2IE	set	1121
	global	_TRISA0
_TRISA0	set	1064
	global	_TRISA1
_TRISA1	set	1065
	global	_TRISA2
_TRISA2	set	1066
	global	_TRISA3
_TRISA3	set	1067
	global	_TRISA4
_TRISA4	set	1068
	global	_TRISA5
_TRISA5	set	1069
	global	_TRISA6
_TRISA6	set	1070
	global	_TRISA7
_TRISA7	set	1071
	global	_TRISC0
_TRISC0	set	1080
	global	_TRISC1
_TRISC1	set	1081
	global	_TRISC2
_TRISC2	set	1082
	global	_TRISC3
_TRISC3	set	1083
	global	_TRISC4
_TRISC4	set	1084
	global	_TRISC5
_TRISC5	set	1085
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
	global	_WPUA2
_WPUA2	set	1194
	global	_WPUA3
_WPUA3	set	1195
	global	_WPUA4
_WPUA4	set	1196
	global	_WPUA5
_WPUA5	set	1197
	global	_WPUA6
_WPUA6	set	1198
	global	_WPUA7
_WPUA7	set	1199
	global	_WPUC0
_WPUC0	set	1088
	global	_WPUC1
_WPUC1	set	1089
	global	_WPUC2
_WPUC2	set	1090
	global	_WPUC3
_WPUC3	set	1091
	global	_WPUC4
_WPUC4	set	1092
	global	_WPUC5
_WPUC5	set	1093
	global	_WR
_WR	set	1256
	file	"ms83f080_linefinding.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_ADC_STUDY:
       ds      2

_i:
       ds      1

_j:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_ADC1_INPUT:
       ds      2

_ADC5_ADCOUT:
       ds      2

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
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
	global	?_ADC_Init
?_ADC_Init:	; 0 bytes @ 0x0
	global	?_EEPROM_Init
?_EEPROM_Init:	; 0 bytes @ 0x0
	global	?_LED_Study_End
?_LED_Study_End:	; 0 bytes @ 0x0
	global	?_ExchChannel
?_ExchChannel:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_ISR
?_ISR:	; 0 bytes @ 0x0
	global	??_ISR
??_ISR:	; 0 bytes @ 0x0
	global	?_isKeyPressed
?_isKeyPressed:	; 1 bytes @ 0x0
	global	?_Read_EEPROM_u8
?_Read_EEPROM_u8:	; 1 bytes @ 0x0
	ds	4
	global	??_System_init
??_System_init:	; 0 bytes @ 0x4
	global	??_GPIO_Init
??_GPIO_Init:	; 0 bytes @ 0x4
	global	??_ExchChannel
??_ExchChannel:	; 0 bytes @ 0x4
	global	?_delay_ms
?_delay_ms:	; 0 bytes @ 0x4
	global	??_isKeyPressed
??_isKeyPressed:	; 0 bytes @ 0x4
	global	?_Write_EEPROM_u8
?_Write_EEPROM_u8:	; 0 bytes @ 0x4
	global	??_Read_EEPROM_u8
??_Read_EEPROM_u8:	; 0 bytes @ 0x4
	global	?_GetADCValue
?_GetADCValue:	; 2 bytes @ 0x4
	global	Write_EEPROM_u8@EEDatas
Write_EEPROM_u8@EEDatas:	; 1 bytes @ 0x4
	global	delay_ms@x
delay_ms@x:	; 2 bytes @ 0x4
	ds	1
	global	??_Write_EEPROM_u8
??_Write_EEPROM_u8:	; 0 bytes @ 0x5
	global	Write_EEPROM_u8@EEAddress
Write_EEPROM_u8@EEAddress:	; 1 bytes @ 0x5
	ds	1
	global	??_ADC_Init
??_ADC_Init:	; 0 bytes @ 0x6
	global	??_LED_Study_End
??_LED_Study_End:	; 0 bytes @ 0x6
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_EEPROM_Init
??_EEPROM_Init:	; 0 bytes @ 0x0
	global	??_GetADCValue
??_GetADCValue:	; 0 bytes @ 0x0
	global	??_delay_ms
??_delay_ms:	; 0 bytes @ 0x0
	global	?_Write_EEPROM_u16
?_Write_EEPROM_u16:	; 0 bytes @ 0x0
	global	ExchChannel@ch_temp
ExchChannel@ch_temp:	; 1 bytes @ 0x0
	global	Read_EEPROM_u8@EEAddress
Read_EEPROM_u8@EEAddress:	; 1 bytes @ 0x0
	global	Write_EEPROM_u16@EEDatas
Write_EEPROM_u16@EEDatas:	; 2 bytes @ 0x0
	ds	1
	global	ExchChannel@adc_ch_temp
ExchChannel@adc_ch_temp:	; 1 bytes @ 0x1
	global	Read_EEPROM_u8@EepromData
Read_EEPROM_u8@EepromData:	; 1 bytes @ 0x1
	ds	1
	global	??_Write_EEPROM_u16
??_Write_EEPROM_u16:	; 0 bytes @ 0x2
	global	?_Read_EEPROM_u16
?_Read_EEPROM_u16:	; 2 bytes @ 0x2
	global	GetADCValue@ADC_num
GetADCValue@ADC_num:	; 2 bytes @ 0x2
	global	delay_ms@i
delay_ms@i:	; 2 bytes @ 0x2
	ds	1
	global	Write_EEPROM_u16@EEAddress
Write_EEPROM_u16@EEAddress:	; 1 bytes @ 0x3
	ds	1
	global	??_Read_EEPROM_u16
??_Read_EEPROM_u16:	; 0 bytes @ 0x4
	ds	2
	global	Read_EEPROM_u16@EEAddress
Read_EEPROM_u16@EEAddress:	; 1 bytes @ 0x6
	ds	1
	global	Read_EEPROM_u16@EepromData
Read_EEPROM_u16@EepromData:	; 2 bytes @ 0x7
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x9
	ds	1
;;Data sizes: Strings 0, constant 0, data 0, bss 8, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      6      10
;; BANK0           80     10      14
;; BANK1           32      0       0

;;
;; Pointer list with targets:

;; ?_Read_EEPROM_u16	unsigned int  size(1) Largest target is 0
;;
;; ?_GetADCValue	unsigned int  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_ExchChannel
;;   _main->_GetADCValue
;;   _main->_delay_ms
;;   _LED_Study_End->_delay_ms
;;   _ADC_Init->_delay_ms
;;   _Write_EEPROM_u16->_Write_EEPROM_u8
;;   _Read_EEPROM_u16->_Read_EEPROM_u8
;;   _EEPROM_Init->_Write_EEPROM_u8
;;
;; Critical Paths under _ISR in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_Read_EEPROM_u16
;;   _LED_Study_End->_delay_ms
;;   _ADC_Init->_delay_ms
;;   _Read_EEPROM_u16->_Read_EEPROM_u8
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
;; (0) _main                                                 1     1      0     860
;;                                              9 BANK0      1     1      0
;;                        _System_init
;;                          _GPIO_Init
;;                           _ADC_Init
;;                        _EEPROM_Init
;;                      _LED_Study_End
;;                    _Read_EEPROM_u16
;;                        _ExchChannel
;;                        _GetADCValue
;;                           _delay_ms
;;                       _isKeyPressed
;;                   _Write_EEPROM_u16
;; ---------------------------------------------------------------------------------
;; (1) _LED_Study_End                                        0     0      0      68
;;                           _delay_ms
;; ---------------------------------------------------------------------------------
;; (1) _ADC_Init                                             0     0      0      68
;;                           _delay_ms
;; ---------------------------------------------------------------------------------
;; (1) _Write_EEPROM_u16                                     4     2      2     186
;;                                              0 BANK0      4     2      2
;;                    _Write_EEPROM_u8
;; ---------------------------------------------------------------------------------
;; (1) _delay_ms                                             6     4      2      68
;;                                              4 COMMON     2     0      2
;;                                              0 BANK0      4     4      0
;; ---------------------------------------------------------------------------------
;; (1) _ExchChannel                                          4     4      0      99
;;                                              4 COMMON     2     2      0
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _Read_EEPROM_u16                                      7     5      2     204
;;                                              2 BANK0      7     5      2
;;                     _Read_EEPROM_u8
;; ---------------------------------------------------------------------------------
;; (1) _EEPROM_Init                                          1     1      0      62
;;                                              0 BANK0      1     1      0
;;                    _Write_EEPROM_u8
;; ---------------------------------------------------------------------------------
;; (2) _Read_EEPROM_u8                                       3     3      0      68
;;                                              4 COMMON     1     1      0
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (2) _Write_EEPROM_u8                                      2     1      1      62
;;                                              4 COMMON     2     1      1
;; ---------------------------------------------------------------------------------
;; (1) _isKeyPressed                                         0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _GetADCValue                                          6     4      2     105
;;                                              4 COMMON     2     0      2
;;                                              0 BANK0      4     4      0
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
;;   _ADC_Init
;;     _delay_ms
;;   _EEPROM_Init
;;     _Write_EEPROM_u8
;;   _LED_Study_End
;;     _delay_ms
;;   _Read_EEPROM_u16
;;     _Read_EEPROM_u8
;;   _ExchChannel
;;   _GetADCValue
;;   _delay_ms
;;   _isKeyPressed
;;   _Write_EEPROM_u16
;;     _Write_EEPROM_u8
;;
;; _ISR (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      6       A       1       71.4%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       2       2        0.0%
;;BITBANK0            50      0       0       3        0.0%
;;BANK0               50      A       E       4       17.5%
;;BITBANK1            20      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BANK1               20      0       0       6        0.0%
;;ABS                  0      0      18       7        0.0%
;;DATA                 0      0      1A       8        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 37 in file "main.c"
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
;;		_ADC_Init
;;		_EEPROM_Init
;;		_LED_Study_End
;;		_Read_EEPROM_u16
;;		_ExchChannel
;;		_GetADCValue
;;		_delay_ms
;;		_isKeyPressed
;;		_Write_EEPROM_u16
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"main.c"
	line	37
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	38
	
l8834:	
;main.c: 38: System_init();
	fcall	_System_init
	line	39
	
l8836:	
;main.c: 39: GPIO_Init();
	fcall	_GPIO_Init
	line	40
	
l8838:	
;main.c: 40: ADC_Init();
	fcall	_ADC_Init
	line	41
	
l8840:	
;main.c: 41: EEPROM_Init();
	fcall	_EEPROM_Init
	line	42
	
l8842:	
;main.c: 42: LED_Study_End();
	fcall	_LED_Study_End
	line	43
	
l8844:	
;main.c: 43: ADC_STUDY = Read_EEPROM_u16(0x00);
	movlw	(0)
	fcall	_Read_EEPROM_u16
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_Read_EEPROM_u16)),w
	clrf	(_ADC_STUDY+1)
	addwf	(_ADC_STUDY+1)
	movf	(0+(?_Read_EEPROM_u16)),w
	clrf	(_ADC_STUDY)
	addwf	(_ADC_STUDY)

	line	44
;main.c: 44: if(ADC_STUDY == 0XFF)
	movlw	0FFh
	xorwf	(_ADC_STUDY),w
	iorwf	(_ADC_STUDY+1),w
	skipz
	goto	u2551
	goto	u2550
u2551:
	goto	l8848
u2550:
	line	45
	
l8846:	
;main.c: 45: ADC_STUDY = 211;
	movlw	low(0D3h)
	movwf	(_ADC_STUDY)
	movlw	high(0D3h)
	movwf	((_ADC_STUDY))+1
	goto	l8848
	
l1097:	
	goto	l8848
	line	46
;main.c: 46: while(1) {
	
l1098:	
	line	48
	
l8848:	
;main.c: 48: ExchChannel(1);
	movlw	(01h)
	fcall	_ExchChannel
	line	49
	
l8850:	
;main.c: 49: for(i=0; i<5; i++)
	clrf	(_i)
	
l8852:	
	movlw	(05h)
	subwf	(_i),w
	skipc
	goto	u2561
	goto	u2560
u2561:
	goto	l8856
u2560:
	goto	l8862
	
l8854:	
	goto	l8862
	line	50
	
l1099:	
	
l8856:	
;main.c: 50: ADC1_INPUT = GetADCValue();
	fcall	_GetADCValue
	movf	(1+(?_GetADCValue)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_ADC1_INPUT+1)
	addwf	(_ADC1_INPUT+1)
	movf	(0+(?_GetADCValue)),w
	clrf	(_ADC1_INPUT)
	addwf	(_ADC1_INPUT)

	line	49
	
l8858:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_i),f
	
l8860:	
	movlw	(05h)
	subwf	(_i),w
	skipc
	goto	u2571
	goto	u2570
u2571:
	goto	l8856
u2570:
	goto	l8862
	
l1100:	
	line	52
	
l8862:	
;main.c: 52: ExchChannel(5);
	movlw	(05h)
	fcall	_ExchChannel
	line	53
	
l8864:	
;main.c: 53: for(j=0; j<5; j++)
	clrf	(_j)
	
l8866:	
	movlw	(05h)
	subwf	(_j),w
	skipc
	goto	u2581
	goto	u2580
u2581:
	goto	l8870
u2580:
	goto	l8876
	
l8868:	
	goto	l8876
	line	54
	
l1101:	
	
l8870:	
;main.c: 54: ADC5_ADCOUT = GetADCValue();
	fcall	_GetADCValue
	movf	(1+(?_GetADCValue)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_ADC5_ADCOUT+1)
	addwf	(_ADC5_ADCOUT+1)
	movf	(0+(?_GetADCValue)),w
	clrf	(_ADC5_ADCOUT)
	addwf	(_ADC5_ADCOUT)

	line	53
	
l8872:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_j),f
	
l8874:	
	movlw	(05h)
	subwf	(_j),w
	skipc
	goto	u2591
	goto	u2590
u2591:
	goto	l8870
u2590:
	goto	l8876
	
l1102:	
	line	56
	
l8876:	
;main.c: 56: delay_ms(5);
	movlw	low(05h)
	movwf	(?_delay_ms)
	movlw	high(05h)
	movwf	((?_delay_ms))+1
	fcall	_delay_ms
	line	57
;main.c: 57: if(isKeyPressed()) {
	fcall	_isKeyPressed
	xorlw	0
	skipnz
	goto	u2601
	goto	u2600
u2601:
	goto	l8888
u2600:
	line	58
	
l8878:	
;main.c: 58: PA6=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(46/8),(46)&7
	line	59
	
l8880:	
;main.c: 59: ADC_STUDY = ADC5_ADCOUT+5;
	movf	(_ADC5_ADCOUT),w
	addlw	low(05h)
	movwf	(_ADC_STUDY)
	movf	(_ADC5_ADCOUT+1),w
	skipnc
	addlw	1
	addlw	high(05h)
	movwf	1+(_ADC_STUDY)
	line	60
	
l8882:	
;main.c: 60: Write_EEPROM_u16(0x00,ADC_STUDY);
	movf	(_ADC_STUDY+1),w
	clrf	(?_Write_EEPROM_u16+1)
	addwf	(?_Write_EEPROM_u16+1)
	movf	(_ADC_STUDY),w
	clrf	(?_Write_EEPROM_u16)
	addwf	(?_Write_EEPROM_u16)

	movlw	(0)
	fcall	_Write_EEPROM_u16
	line	61
	
l8884:	
;main.c: 61: delay_ms(500);
	movlw	low(01F4h)
	movwf	(?_delay_ms)
	movlw	high(01F4h)
	movwf	((?_delay_ms))+1
	fcall	_delay_ms
	line	62
	
l8886:	
;main.c: 62: PA6=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(46/8),(46)&7
	goto	l8888
	line	63
	
l1103:	
	line	64
	
l8888:	
;main.c: 63: }
;main.c: 64: if(ADC1_INPUT < 512) {
	movlw	high(0200h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_ADC1_INPUT+1),w
	movlw	low(0200h)
	skipnz
	subwf	(_ADC1_INPUT),w
	skipnc
	goto	u2611
	goto	u2610
u2611:
	goto	l8892
u2610:
	line	65
	
l8890:	
;main.c: 65: PC2 = 0;
	bcf	(58/8),(58)&7
	line	66
;main.c: 66: } else {
	goto	l8848
	
l1104:	
	line	67
	
l8892:	
;main.c: 67: if(ADC5_ADCOUT <= ADC_STUDY) {
	movf	(_ADC5_ADCOUT+1),w
	subwf	(_ADC_STUDY+1),w
	skipz
	goto	u2625
	movf	(_ADC5_ADCOUT),w
	subwf	(_ADC_STUDY),w
u2625:
	skipc
	goto	u2621
	goto	u2620
u2621:
	goto	l1106
u2620:
	line	68
	
l8894:	
;main.c: 68: PC2=1;
	bsf	(58/8),(58)&7
	line	69
;main.c: 69: } else
	goto	l8848
	
l1106:	
	line	70
;main.c: 70: PC2=0;
	bcf	(58/8),(58)&7
	goto	l8848
	
l1107:	
	goto	l8848
	line	71
	
l1105:	
	goto	l8848
	line	72
	
l1108:	
	line	46
	goto	l8848
	
l1109:	
	line	73
	
l1110:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_LED_Study_End
psect	text545,local,class=CODE,delta=2
global __ptext545
__ptext545:

;; *************** function _LED_Study_End *****************
;; Defined at:
;;		line 112 in file "myconfiguration.c"
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
;;		_delay_ms
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text545
	file	"myconfiguration.c"
	line	112
	global	__size_of_LED_Study_End
	__size_of_LED_Study_End	equ	__end_of_LED_Study_End-_LED_Study_End
	
_LED_Study_End:	
	opt	stack 5
; Regs used in _LED_Study_End: [wreg+status,2+status,0+pclath+cstack]
	line	113
	
l8820:	
;myconfiguration.c: 113: PA6 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(46/8),(46)&7
	line	114
	
l8822:	
;myconfiguration.c: 114: delay_ms(50);
	movlw	low(032h)
	movwf	(?_delay_ms)
	movlw	high(032h)
	movwf	((?_delay_ms))+1
	fcall	_delay_ms
	line	115
	
l8824:	
;myconfiguration.c: 115: PA6 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(46/8),(46)&7
	line	116
;myconfiguration.c: 116: delay_ms(50);
	movlw	low(032h)
	movwf	(?_delay_ms)
	movlw	high(032h)
	movwf	((?_delay_ms))+1
	fcall	_delay_ms
	line	117
	
l8826:	
;myconfiguration.c: 117: PA6 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(46/8),(46)&7
	line	118
;myconfiguration.c: 118: delay_ms(50);
	movlw	low(032h)
	movwf	(?_delay_ms)
	movlw	high(032h)
	movwf	((?_delay_ms))+1
	fcall	_delay_ms
	line	119
	
l8828:	
;myconfiguration.c: 119: PA6 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(46/8),(46)&7
	line	120
;myconfiguration.c: 120: delay_ms(50);
	movlw	low(032h)
	movwf	(?_delay_ms)
	movlw	high(032h)
	movwf	((?_delay_ms))+1
	fcall	_delay_ms
	line	121
	
l8830:	
;myconfiguration.c: 121: PA6 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(46/8),(46)&7
	line	122
;myconfiguration.c: 122: delay_ms(50);
	movlw	low(032h)
	movwf	(?_delay_ms)
	movlw	high(032h)
	movwf	((?_delay_ms))+1
	fcall	_delay_ms
	line	123
	
l8832:	
;myconfiguration.c: 123: PA6 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(46/8),(46)&7
	line	124
;myconfiguration.c: 124: delay_ms(50);
	movlw	low(032h)
	movwf	(?_delay_ms)
	movlw	high(032h)
	movwf	((?_delay_ms))+1
	fcall	_delay_ms
	line	125
	
l3274:	
	return
	opt stack 0
GLOBAL	__end_of_LED_Study_End
	__end_of_LED_Study_End:
;; =============== function _LED_Study_End ends ============

	signat	_LED_Study_End,88
	global	_ADC_Init
psect	text546,local,class=CODE,delta=2
global __ptext546
__ptext546:

;; *************** function _ADC_Init *****************
;; Defined at:
;;		line 19 in file "myadc.c"
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
;;		_delay_ms
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text546
	file	"myadc.c"
	line	19
	global	__size_of_ADC_Init
	__size_of_ADC_Init	equ	__end_of_ADC_Init-_ADC_Init
	
_ADC_Init:	
	opt	stack 5
; Regs used in _ADC_Init: [wreg+status,2+status,0+pclath+cstack]
	line	21
	
l8800:	
;myadc.c: 21: TRISC1=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1081/8)^080h,(1081)&7
	line	22
;myadc.c: 22: TRISA1=1;
	bsf	(1065/8)^080h,(1065)&7
	line	23
;myadc.c: 23: ANSEL1=1;
	bsf	(1161/8)^080h,(1161)&7
	line	24
;myadc.c: 24: ANSEL5=1;
	bsf	(1165/8)^080h,(1165)&7
	line	27
;myadc.c: 27: DIVS=0;
	bcf	(1279/8)^080h,(1279)&7
	line	28
;myadc.c: 28: ADCS0=0;
	bcf	(1276/8)^080h,(1276)&7
	line	29
;myadc.c: 29: ADCS1=0;
	bcf	(1277/8)^080h,(1277)&7
	line	30
;myadc.c: 30: ADCS2=0;
	bcf	(1278/8)^080h,(1278)&7
	line	32
	
l8802:	
;myadc.c: 32: ADCON0=0B10000001;
	movlw	(081h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	33
	
l8804:	
;myadc.c: 33: VCFG0=0;
	bcf	(253/8),(253)&7
	line	34
	
l8806:	
;myadc.c: 34: CHS0=1;
	bsf	(250/8),(250)&7
	line	35
	
l8808:	
;myadc.c: 35: CHS1=0;
	bcf	(251/8),(251)&7
	line	36
	
l8810:	
;myadc.c: 36: CHS2=1;
	bsf	(252/8),(252)&7
	line	37
	
l8812:	
;myadc.c: 37: ADFM=1;
	bsf	(255/8),(255)&7
	line	38
	
l8814:	
;myadc.c: 38: ADON=1;
	bsf	(248/8),(248)&7
	line	40
	
l8816:	
;myadc.c: 40: delay_ms(1);
	movlw	low(01h)
	movwf	(?_delay_ms)
	movlw	high(01h)
	movwf	((?_delay_ms))+1
	fcall	_delay_ms
	line	41
	
l8818:	
;myadc.c: 41: GO_DONE=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(249/8),(249)&7
	line	42
	
l2182:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Init
	__end_of_ADC_Init:
;; =============== function _ADC_Init ends ============

	signat	_ADC_Init,88
	global	_Write_EEPROM_u16
psect	text547,local,class=CODE,delta=2
global __ptext547
__ptext547:

;; *************** function _Write_EEPROM_u16 *****************
;; Defined at:
;;		line 21 in file "myeeprom.c"
;; Parameters:    Size  Location     Type
;;  EEAddress       1    wreg     unsigned char 
;;  EEDatas         2    0[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  EEAddress       1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       2       0
;;      Locals:         0       1       0
;;      Temps:          0       1       0
;;      Totals:         0       4       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Write_EEPROM_u8
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text547
	file	"myeeprom.c"
	line	21
	global	__size_of_Write_EEPROM_u16
	__size_of_Write_EEPROM_u16	equ	__end_of_Write_EEPROM_u16-_Write_EEPROM_u16
	
_Write_EEPROM_u16:	
	opt	stack 5
; Regs used in _Write_EEPROM_u16: [wreg+status,2+status,0+pclath+cstack]
;Write_EEPROM_u16@EEAddress stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Write_EEPROM_u16@EEAddress)
	line	22
	
l8798:	
;myeeprom.c: 22: Write_EEPROM_u8(EEAddress,(EEDatas>>8)&0xff);
	movf	(Write_EEPROM_u16@EEDatas+1),w
	movwf	(??_Write_EEPROM_u16+0)+0
	movf	(??_Write_EEPROM_u16+0)+0,w
	movwf	(?_Write_EEPROM_u8)
	movf	(Write_EEPROM_u16@EEAddress),w
	fcall	_Write_EEPROM_u8
	line	23
;myeeprom.c: 23: Write_EEPROM_u8(EEAddress+1,EEDatas&0xff);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Write_EEPROM_u16@EEDatas),w
	movwf	(??_Write_EEPROM_u16+0)+0
	movf	(??_Write_EEPROM_u16+0)+0,w
	movwf	(?_Write_EEPROM_u8)
	movf	(Write_EEPROM_u16@EEAddress),w
	addlw	01h
	fcall	_Write_EEPROM_u8
	line	24
	
l4346:	
	return
	opt stack 0
GLOBAL	__end_of_Write_EEPROM_u16
	__end_of_Write_EEPROM_u16:
;; =============== function _Write_EEPROM_u16 ends ============

	signat	_Write_EEPROM_u16,8312
	global	_delay_ms
psect	text548,local,class=CODE,delta=2
global __ptext548
__ptext548:

;; *************** function _delay_ms *****************
;; Defined at:
;;		line 90 in file "myconfiguration.c"
;; Parameters:    Size  Location     Type
;;  x               2    4[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  i               2    2[BANK0 ] unsigned int 
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
;;      Locals:         0       2       0
;;      Temps:          0       2       0
;;      Totals:         2       4       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_ADC_Init
;;		_LED_Study_End
;; This function uses a non-reentrant model
;;
psect	text548
	file	"myconfiguration.c"
	line	90
	global	__size_of_delay_ms
	__size_of_delay_ms	equ	__end_of_delay_ms-_delay_ms
	
_delay_ms:	
	opt	stack 6
; Regs used in _delay_ms: [wreg+status,2]
	line	92
	
l8794:	
;myconfiguration.c: 91: unsigned int i;
;myconfiguration.c: 92: for(i=0; i<x; i++) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(delay_ms@i)
	clrf	(delay_ms@i+1)
	goto	l3262
	
l3263:	
	line	93
	
l8796:	
;myconfiguration.c: 93: _delay((unsigned long)((1)*(16000000/4000.0)));
	opt asmopt_off
movlw	6
movwf	((??_delay_ms+0)+0+1),f
	movlw	48
movwf	((??_delay_ms+0)+0),f
u2637:
	decfsz	((??_delay_ms+0)+0),f
	goto	u2637
	decfsz	((??_delay_ms+0)+0+1),f
	goto	u2637
	clrwdt
opt asmopt_on

	line	92
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(delay_ms@i),f
	skipnc
	incf	(delay_ms@i+1),f
	movlw	high(01h)
	addwf	(delay_ms@i+1),f
	
l3262:	
	movf	(delay_ms@x+1),w
	subwf	(delay_ms@i+1),w
	skipz
	goto	u2545
	movf	(delay_ms@x),w
	subwf	(delay_ms@i),w
u2545:
	skipc
	goto	u2541
	goto	u2540
u2541:
	goto	l8796
u2540:
	goto	l3265
	
l3264:	
	line	95
	
l3265:	
	return
	opt stack 0
GLOBAL	__end_of_delay_ms
	__end_of_delay_ms:
;; =============== function _delay_ms ends ============

	signat	_delay_ms,4216
	global	_ExchChannel
psect	text549,local,class=CODE,delta=2
global __ptext549
__ptext549:

;; *************** function _ExchChannel *****************
;; Defined at:
;;		line 67 in file "myadc.c"
;; Parameters:    Size  Location     Type
;;  ch_temp         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ch_temp         1    0[BANK0 ] unsigned char 
;;  adc_ch_temp     1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       2       0
;;      Temps:          2       0       0
;;      Totals:         2       2       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text549
	file	"myadc.c"
	line	67
	global	__size_of_ExchChannel
	__size_of_ExchChannel	equ	__end_of_ExchChannel-_ExchChannel
	
_ExchChannel:	
	opt	stack 6
; Regs used in _ExchChannel: [wreg+status,2+status,0]
;ExchChannel@ch_temp stored from wreg
	line	70
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(ExchChannel@ch_temp)
	
l8786:	
;myadc.c: 68: unsigned char adc_ch_temp;
;myadc.c: 70: adc_ch_temp = ch_temp;
	movf	(ExchChannel@ch_temp),w
	movwf	(??_ExchChannel+0)+0
	movf	(??_ExchChannel+0)+0,w
	movwf	(ExchChannel@adc_ch_temp)
	line	71
	
l8788:	
;myadc.c: 71: adc_ch_temp = adc_ch_temp<<2;
	movf	(ExchChannel@adc_ch_temp),w
	movwf	(??_ExchChannel+0)+0
	movlw	(02h)-1
u2535:
	clrc
	rlf	(??_ExchChannel+0)+0,f
	addlw	-1
	skipz
	goto	u2535
	clrc
	rlf	(??_ExchChannel+0)+0,w
	movwf	(??_ExchChannel+1)+0
	movf	(??_ExchChannel+1)+0,w
	movwf	(ExchChannel@adc_ch_temp)
	line	72
	
l8790:	
;myadc.c: 72: ADCON0 = (ADCON0&0xe3)|adc_ch_temp;
	movf	(31),w
	andlw	0E3h
	iorwf	(ExchChannel@adc_ch_temp),w
	movwf	(31)	;volatile
	line	73
;myadc.c: 73: _delay((unsigned long)((1)*(16000000/4000.0)));
	opt asmopt_off
movlw	6
movwf	((??_ExchChannel+0)+0+1),f
	movlw	48
movwf	((??_ExchChannel+0)+0),f
u2647:
	decfsz	((??_ExchChannel+0)+0),f
	goto	u2647
	decfsz	((??_ExchChannel+0)+0+1),f
	goto	u2647
	clrwdt
opt asmopt_on

	line	74
	
l8792:	
;myadc.c: 74: GO_DONE=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(249/8),(249)&7
	line	75
	
l2189:	
	return
	opt stack 0
GLOBAL	__end_of_ExchChannel
	__end_of_ExchChannel:
;; =============== function _ExchChannel ends ============

	signat	_ExchChannel,4216
	global	_Read_EEPROM_u16
psect	text550,local,class=CODE,delta=2
global __ptext550
__ptext550:

;; *************** function _Read_EEPROM_u16 *****************
;; Defined at:
;;		line 27 in file "myeeprom.c"
;; Parameters:    Size  Location     Type
;;  EEAddress       1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  EEAddress       1    6[BANK0 ] unsigned char 
;;  EepromData      2    7[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    2[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       2       0
;;      Locals:         0       3       0
;;      Temps:          0       2       0
;;      Totals:         0       7       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Read_EEPROM_u8
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text550
	file	"myeeprom.c"
	line	27
	global	__size_of_Read_EEPROM_u16
	__size_of_Read_EEPROM_u16	equ	__end_of_Read_EEPROM_u16-_Read_EEPROM_u16
	
_Read_EEPROM_u16:	
	opt	stack 5
; Regs used in _Read_EEPROM_u16: [wreg+status,2+status,0+pclath+cstack]
;Read_EEPROM_u16@EEAddress stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Read_EEPROM_u16@EEAddress)
	line	28
	
l8774:	
;myeeprom.c: 28: unsigned int EepromData=0;
	clrf	(Read_EEPROM_u16@EepromData)
	clrf	(Read_EEPROM_u16@EepromData+1)
	line	30
	
l8776:	
;myeeprom.c: 30: EepromData = Read_EEPROM_u8(EEAddress);
	movf	(Read_EEPROM_u16@EEAddress),w
	fcall	_Read_EEPROM_u8
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Read_EEPROM_u16+0)+0
	clrf	(??_Read_EEPROM_u16+0)+0+1
	movf	0+(??_Read_EEPROM_u16+0)+0,w
	movwf	(Read_EEPROM_u16@EepromData)
	movf	1+(??_Read_EEPROM_u16+0)+0,w
	movwf	(Read_EEPROM_u16@EepromData+1)
	line	31
	
l8778:	
;myeeprom.c: 31: EepromData = EepromData<<8;
	movf	(Read_EEPROM_u16@EepromData),w
	movwf	(??_Read_EEPROM_u16+0)+0+1
	clrf	(??_Read_EEPROM_u16+0)+0
	movf	0+(??_Read_EEPROM_u16+0)+0,w
	movwf	(Read_EEPROM_u16@EepromData)
	movf	1+(??_Read_EEPROM_u16+0)+0,w
	movwf	(Read_EEPROM_u16@EepromData+1)
	line	32
	
l8780:	
;myeeprom.c: 32: EepromData |= Read_EEPROM_u8(EEAddress+1);
	movf	(Read_EEPROM_u16@EEAddress),w
	addlw	01h
	fcall	_Read_EEPROM_u8
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Read_EEPROM_u16+0)+0
	clrf	(??_Read_EEPROM_u16+0)+0+1
	movf	0+(??_Read_EEPROM_u16+0)+0,w
	iorwf	(Read_EEPROM_u16@EepromData),f
	movf	1+(??_Read_EEPROM_u16+0)+0,w
	iorwf	(Read_EEPROM_u16@EepromData+1),f
	line	33
	
l8782:	
;myeeprom.c: 33: return EepromData;
	movf	(Read_EEPROM_u16@EepromData+1),w
	clrf	(?_Read_EEPROM_u16+1)
	addwf	(?_Read_EEPROM_u16+1)
	movf	(Read_EEPROM_u16@EepromData),w
	clrf	(?_Read_EEPROM_u16)
	addwf	(?_Read_EEPROM_u16)

	goto	l4349
	
l8784:	
	line	34
	
l4349:	
	return
	opt stack 0
GLOBAL	__end_of_Read_EEPROM_u16
	__end_of_Read_EEPROM_u16:
;; =============== function _Read_EEPROM_u16 ends ============

	signat	_Read_EEPROM_u16,4218
	global	_EEPROM_Init
psect	text551,local,class=CODE,delta=2
global __ptext551
__ptext551:

;; *************** function _EEPROM_Init *****************
;; Defined at:
;;		line 14 in file "myeeprom.c"
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
;;      Temps:          0       1       0
;;      Totals:         0       1       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Write_EEPROM_u8
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text551
	file	"myeeprom.c"
	line	14
	global	__size_of_EEPROM_Init
	__size_of_EEPROM_Init	equ	__end_of_EEPROM_Init-_EEPROM_Init
	
_EEPROM_Init:	
	opt	stack 5
; Regs used in _EEPROM_Init: [wreg+status,2+status,0+pclath+cstack]
	line	15
	
l8772:	
;myeeprom.c: 15: Write_EEPROM_u8(0xFF,0xAA);
	movlw	(0AAh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_EEPROM_Init+0)+0
	movf	(??_EEPROM_Init+0)+0,w
	movwf	(?_Write_EEPROM_u8)
	movlw	(0FFh)
	fcall	_Write_EEPROM_u8
	line	16
;myeeprom.c: 16: Write_EEPROM_u8(0xFF,0xAA);
	movlw	(0AAh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_EEPROM_Init+0)+0
	movf	(??_EEPROM_Init+0)+0,w
	movwf	(?_Write_EEPROM_u8)
	movlw	(0FFh)
	fcall	_Write_EEPROM_u8
	line	17
	
l4343:	
	return
	opt stack 0
GLOBAL	__end_of_EEPROM_Init
	__end_of_EEPROM_Init:
;; =============== function _EEPROM_Init ends ============

	signat	_EEPROM_Init,88
	global	_Read_EEPROM_u8
psect	text552,local,class=CODE,delta=2
global __ptext552
__ptext552:

;; *************** function _Read_EEPROM_u8 *****************
;; Defined at:
;;		line 51 in file "myeeprom.c"
;; Parameters:    Size  Location     Type
;;  EEAddress       1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  EEAddress       1    0[BANK0 ] unsigned char 
;;  EepromData      1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       2       0
;;      Temps:          1       0       0
;;      Totals:         1       2       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Read_EEPROM_u16
;; This function uses a non-reentrant model
;;
psect	text552
	file	"myeeprom.c"
	line	51
	global	__size_of_Read_EEPROM_u8
	__size_of_Read_EEPROM_u8	equ	__end_of_Read_EEPROM_u8-_Read_EEPROM_u8
	
_Read_EEPROM_u8:	
	opt	stack 5
; Regs used in _Read_EEPROM_u8: [wreg]
;Read_EEPROM_u8@EEAddress stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Read_EEPROM_u8@EEAddress)
	line	52
	
l8762:	
;myeeprom.c: 52: unsigned char EepromData=0;
	clrf	(Read_EEPROM_u8@EepromData)
	line	53
	
l8764:	
;myeeprom.c: 53: EEADR = EEAddress;
	movf	(Read_EEPROM_u8@EEAddress),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(155)^080h	;volatile
	line	54
	
l8766:	
;myeeprom.c: 54: RD = 1;
	bsf	(1248/8)^080h,(1248)&7
	line	55
;myeeprom.c: 55: EepromData = EEDAT;
	movf	(154)^080h,w	;volatile
	movwf	(??_Read_EEPROM_u8+0)+0
	movf	(??_Read_EEPROM_u8+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Read_EEPROM_u8@EepromData)
	line	56
	
l8768:	
;myeeprom.c: 56: RD = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1248/8)^080h,(1248)&7
	line	57
;myeeprom.c: 57: return EepromData;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Read_EEPROM_u8@EepromData),w
	goto	l4361
	
l8770:	
	line	58
	
l4361:	
	return
	opt stack 0
GLOBAL	__end_of_Read_EEPROM_u8
	__end_of_Read_EEPROM_u8:
;; =============== function _Read_EEPROM_u8 ends ============

	signat	_Read_EEPROM_u8,4217
	global	_Write_EEPROM_u8
psect	text553,local,class=CODE,delta=2
global __ptext553
__ptext553:

;; *************** function _Write_EEPROM_u8 *****************
;; Defined at:
;;		line 37 in file "myeeprom.c"
;; Parameters:    Size  Location     Type
;;  EEAddress       1    wreg     unsigned char 
;;  EEDatas         1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  EEAddress       1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         1       0       0
;;      Locals:         1       0       0
;;      Temps:          0       0       0
;;      Totals:         2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_EEPROM_Init
;;		_Write_EEPROM_u16
;; This function uses a non-reentrant model
;;
psect	text553
	file	"myeeprom.c"
	line	37
	global	__size_of_Write_EEPROM_u8
	__size_of_Write_EEPROM_u8	equ	__end_of_Write_EEPROM_u8-_Write_EEPROM_u8
	
_Write_EEPROM_u8:	
	opt	stack 5
; Regs used in _Write_EEPROM_u8: [wreg]
;Write_EEPROM_u8@EEAddress stored from wreg
	movwf	(Write_EEPROM_u8@EEAddress)
	line	38
	
l8754:	
;myeeprom.c: 38: GIE = 0;
	bcf	(95/8),(95)&7
	line	39
;myeeprom.c: 39: while(GIE) asm("clrwdt");
	goto	l4352
	
l4353:	
# 39 "myeeprom.c"
clrwdt ;#
psect	text553
	
l4352:	
	btfsc	(95/8),(95)&7
	goto	u2511
	goto	u2510
u2511:
	goto	l4353
u2510:
	goto	l8756
	
l4354:	
	line	40
	
l8756:	
;myeeprom.c: 40: EEADR = EEAddress;
	movf	(Write_EEPROM_u8@EEAddress),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(155)^080h	;volatile
	line	41
;myeeprom.c: 41: EEDAT = EEDatas;
	movf	(Write_EEPROM_u8@EEDatas),w
	movwf	(154)^080h	;volatile
	line	42
	
l8758:	
;myeeprom.c: 42: EEIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(103/8),(103)&7
	line	43
;myeeprom.c: 43: EECON1 = 0x34;
	movlw	(034h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(156)^080h	;volatile
	line	44
	
l8760:	
;myeeprom.c: 44: WR = 1;
	bsf	(1256/8)^080h,(1256)&7
	line	45
;myeeprom.c: 45: while(WR) asm("clrwdt");
	goto	l4355
	
l4356:	
# 45 "myeeprom.c"
clrwdt ;#
psect	text553
	
l4355:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(1256/8)^080h,(1256)&7
	goto	u2521
	goto	u2520
u2521:
	goto	l4356
u2520:
	
l4357:	
	line	47
;myeeprom.c: 47: GIE = 1;
	bsf	(95/8),(95)&7
	line	48
	
l4358:	
	return
	opt stack 0
GLOBAL	__end_of_Write_EEPROM_u8
	__end_of_Write_EEPROM_u8:
;; =============== function _Write_EEPROM_u8 ends ============

	signat	_Write_EEPROM_u8,8312
	global	_isKeyPressed
psect	text554,local,class=CODE,delta=2
global __ptext554
__ptext554:

;; *************** function _isKeyPressed *****************
;; Defined at:
;;		line 18 in file "MyKey.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
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
psect	text554
	file	"MyKey.c"
	line	18
	global	__size_of_isKeyPressed
	__size_of_isKeyPressed	equ	__end_of_isKeyPressed-_isKeyPressed
	
_isKeyPressed:	
	opt	stack 6
; Regs used in _isKeyPressed: [wreg+status,2+status,0]
	line	19
	
l8596:	
;MyKey.c: 19: return PA0 ? 0:1;
	clrc
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(40/8),(40)&7
	setc
	movlw	0
	skipnc
	movlw	1

	goto	l5426
	
l8598:	
	line	20
	
l5426:	
	return
	opt stack 0
GLOBAL	__end_of_isKeyPressed
	__end_of_isKeyPressed:
;; =============== function _isKeyPressed ends ============

	signat	_isKeyPressed,89
	global	_GetADCValue
psect	text555,local,class=CODE,delta=2
global __ptext555
__ptext555:

;; *************** function _GetADCValue *****************
;; Defined at:
;;		line 45 in file "myadc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  ADC_num         2    2[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    4[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         2       0       0
;;      Locals:         0       2       0
;;      Temps:          0       2       0
;;      Totals:         2       4       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text555
	file	"myadc.c"
	line	45
	global	__size_of_GetADCValue
	__size_of_GetADCValue	equ	__end_of_GetADCValue-_GetADCValue
	
_GetADCValue:	
	opt	stack 6
; Regs used in _GetADCValue: [wreg+status,2+status,0]
	line	46
	
l8742:	
;myadc.c: 46: unsigned int ADC_num=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(GetADCValue@ADC_num)
	clrf	(GetADCValue@ADC_num+1)
	line	48
	
l8744:	
;myadc.c: 48: if(GO_DONE==0) {
	btfsc	(249/8),(249)&7
	goto	u2501
	goto	u2500
u2501:
	goto	l8750
u2500:
	line	49
	
l8746:	
;myadc.c: 49: ADC_num=ADRESH;
	movf	(30),w	;volatile
	movwf	(??_GetADCValue+0)+0
	clrf	(??_GetADCValue+0)+0+1
	movf	0+(??_GetADCValue+0)+0,w
	movwf	(GetADCValue@ADC_num)
	movf	1+(??_GetADCValue+0)+0,w
	movwf	(GetADCValue@ADC_num+1)
	line	50
;myadc.c: 50: ADC_num=ADC_num<<8;
	movf	(GetADCValue@ADC_num),w
	movwf	(??_GetADCValue+0)+0+1
	clrf	(??_GetADCValue+0)+0
	movf	0+(??_GetADCValue+0)+0,w
	movwf	(GetADCValue@ADC_num)
	movf	1+(??_GetADCValue+0)+0,w
	movwf	(GetADCValue@ADC_num+1)
	line	51
;myadc.c: 51: ADC_num=ADC_num|ADRESL;
	movf	(GetADCValue@ADC_num),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	iorwf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(GetADCValue@ADC_num)
	movf	(GetADCValue@ADC_num+1),w
	movwf	1+(GetADCValue@ADC_num)
	line	52
	
l8748:	
;myadc.c: 52: GO_DONE=1;
	bsf	(249/8),(249)&7
	goto	l8750
	line	53
	
l2185:	
	line	54
	
l8750:	
;myadc.c: 53: }
;myadc.c: 54: return ADC_num;
	movf	(GetADCValue@ADC_num+1),w
	clrf	(?_GetADCValue+1)
	addwf	(?_GetADCValue+1)
	movf	(GetADCValue@ADC_num),w
	clrf	(?_GetADCValue)
	addwf	(?_GetADCValue)

	goto	l2186
	
l8752:	
	line	55
	
l2186:	
	return
	opt stack 0
GLOBAL	__end_of_GetADCValue
	__end_of_GetADCValue:
;; =============== function _GetADCValue ends ============

	signat	_GetADCValue,90
	global	_GPIO_Init
psect	text556,local,class=CODE,delta=2
global __ptext556
__ptext556:

;; *************** function _GPIO_Init *****************
;; Defined at:
;;		line 34 in file "myconfiguration.c"
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
psect	text556
	file	"myconfiguration.c"
	line	34
	global	__size_of_GPIO_Init
	__size_of_GPIO_Init	equ	__end_of_GPIO_Init-_GPIO_Init
	
_GPIO_Init:	
	opt	stack 6
; Regs used in _GPIO_Init: []
	line	36
	
l8582:	
;myconfiguration.c: 36: TRISA0=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1064/8)^080h,(1064)&7
	line	37
;myconfiguration.c: 37: TRISA1=0;
	bcf	(1065/8)^080h,(1065)&7
	line	38
;myconfiguration.c: 38: TRISA2=0;
	bcf	(1066/8)^080h,(1066)&7
	line	39
;myconfiguration.c: 39: TRISA3=0;
	bcf	(1067/8)^080h,(1067)&7
	line	40
;myconfiguration.c: 40: TRISA4=0;
	bcf	(1068/8)^080h,(1068)&7
	line	41
;myconfiguration.c: 41: TRISA5=0;
	bcf	(1069/8)^080h,(1069)&7
	line	42
;myconfiguration.c: 42: TRISA6=0;
	bcf	(1070/8)^080h,(1070)&7
	line	43
;myconfiguration.c: 43: TRISA7=0;
	bcf	(1071/8)^080h,(1071)&7
	line	45
;myconfiguration.c: 45: TRISC0=0;
	bcf	(1080/8)^080h,(1080)&7
	line	46
;myconfiguration.c: 46: TRISC1=0;
	bcf	(1081/8)^080h,(1081)&7
	line	47
;myconfiguration.c: 47: TRISC2=0;
	bcf	(1082/8)^080h,(1082)&7
	line	48
;myconfiguration.c: 48: TRISC3=0;
	bcf	(1083/8)^080h,(1083)&7
	line	49
;myconfiguration.c: 49: TRISC4=0;
	bcf	(1084/8)^080h,(1084)&7
	line	50
;myconfiguration.c: 50: TRISC5=0;
	bcf	(1085/8)^080h,(1085)&7
	line	52
;myconfiguration.c: 52: CM0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(200/8),(200)&7
	line	53
;myconfiguration.c: 53: CM1=1;
	bsf	(201/8),(201)&7
	line	54
;myconfiguration.c: 54: CM2=1;
	bsf	(202/8),(202)&7
	line	58
;myconfiguration.c: 58: ANSEL0=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1160/8)^080h,(1160)&7
	line	59
;myconfiguration.c: 59: ANSEL1=0;
	bcf	(1161/8)^080h,(1161)&7
	line	60
;myconfiguration.c: 60: ANSEL2=0;
	bcf	(1162/8)^080h,(1162)&7
	line	61
;myconfiguration.c: 61: ANSEL3=0;
	bcf	(1163/8)^080h,(1163)&7
	line	62
;myconfiguration.c: 62: ANSEL4=0;
	bcf	(1164/8)^080h,(1164)&7
	line	63
;myconfiguration.c: 63: ANSEL5=0;
	bcf	(1165/8)^080h,(1165)&7
	line	64
;myconfiguration.c: 64: ANSEL6=0;
	bcf	(1166/8)^080h,(1166)&7
	line	65
;myconfiguration.c: 65: ANSEL7=0;
	bcf	(1167/8)^080h,(1167)&7
	line	67
;myconfiguration.c: 67: WPUA0=1;
	bsf	(1192/8)^080h,(1192)&7
	line	68
;myconfiguration.c: 68: WPUA1=1;
	bsf	(1193/8)^080h,(1193)&7
	line	69
;myconfiguration.c: 69: WPUA2=1;
	bsf	(1194/8)^080h,(1194)&7
	line	70
;myconfiguration.c: 70: WPUA3=1;
	bsf	(1195/8)^080h,(1195)&7
	line	71
;myconfiguration.c: 71: WPUA4=1;
	bsf	(1196/8)^080h,(1196)&7
	line	72
;myconfiguration.c: 72: WPUA5=1;
	bsf	(1197/8)^080h,(1197)&7
	line	73
;myconfiguration.c: 73: WPUA6=1;
	bsf	(1198/8)^080h,(1198)&7
	line	74
;myconfiguration.c: 74: WPUA7=1;
	bsf	(1199/8)^080h,(1199)&7
	line	76
;myconfiguration.c: 76: WPUC0=0;
	bcf	(1088/8)^080h,(1088)&7
	line	77
;myconfiguration.c: 77: WPUC1=0;
	bcf	(1089/8)^080h,(1089)&7
	line	78
;myconfiguration.c: 78: WPUC2=0;
	bcf	(1090/8)^080h,(1090)&7
	line	79
;myconfiguration.c: 79: WPUC3=0;
	bcf	(1091/8)^080h,(1091)&7
	line	80
;myconfiguration.c: 80: WPUC4=0;
	bcf	(1092/8)^080h,(1092)&7
	line	81
;myconfiguration.c: 81: WPUC5=0;
	bcf	(1093/8)^080h,(1093)&7
	line	83
;myconfiguration.c: 83: WPDA4=0;
	bcf	(1100/8)^080h,(1100)&7
	line	84
;myconfiguration.c: 84: WPDC1=0;
	bcf	(1099/8)^080h,(1099)&7
	line	85
;myconfiguration.c: 85: WPDC2=0;
	bcf	(1098/8)^080h,(1098)&7
	line	86
;myconfiguration.c: 86: WPDC3=0;
	bcf	(1097/8)^080h,(1097)&7
	line	87
	
l3259:	
	return
	opt stack 0
GLOBAL	__end_of_GPIO_Init
	__end_of_GPIO_Init:
;; =============== function _GPIO_Init ends ============

	signat	_GPIO_Init,88
	global	_System_init
psect	text557,local,class=CODE,delta=2
global __ptext557
__ptext557:

;; *************** function _System_init *****************
;; Defined at:
;;		line 21 in file "myconfiguration.c"
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
psect	text557
	file	"myconfiguration.c"
	line	21
	global	__size_of_System_init
	__size_of_System_init	equ	__end_of_System_init-_System_init
	
_System_init:	
	opt	stack 6
; Regs used in _System_init: [wreg+status,2]
	line	22
	
l8576:	
;myconfiguration.c: 22: OPTION = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(129)^080h	;volatile
	line	23
	
l8578:	
;myconfiguration.c: 23: OSCCON = 0x70;
	movlw	(070h)
	movwf	(143)^080h	;volatile
	line	24
	
l8580:	
;myconfiguration.c: 24: WDTCON = 0x1E;
	movlw	(01Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	25
	
l3256:	
	return
	opt stack 0
GLOBAL	__end_of_System_init
	__end_of_System_init:
;; =============== function _System_init ends ============

	signat	_System_init,88
	global	_ISR
psect	text558,local,class=CODE,delta=2
global __ptext558
__ptext558:

;; *************** function _ISR *****************
;; Defined at:
;;		line 19 in file "mytimmer.c"
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
psect	text558
	file	"mytimmer.c"
	line	19
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
psect	text558
	line	20
	
i1l7574:	
;mytimmer.c: 20: if(TMR2IE&&TMR2IF) {
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1121/8)^080h,(1121)&7
	goto	u5_21
	goto	u5_20
u5_21:
	goto	i1l6492
u5_20:
	
i1l7576:	
	goto	i1l6492
	line	21
	
i1l6491:	
	line	22
	
i1l6492:	
	movf	(??_ISR+3),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
psect	text559,local,class=CODE,delta=2
global __ptext559
__ptext559:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
