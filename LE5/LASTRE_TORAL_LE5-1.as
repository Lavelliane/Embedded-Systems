opt subtitle "Microchip Technology Omniscient Code Generator (Lite mode) build 59893"

opt pagewidth 120

	opt lm

	processor	16F877A
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
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
	FNROOT	_main
	FNCALL	_ISR,_delay
	FNCALL	_ISR,_readADC
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_ADCON0
_ADCON0	set	0x1F
	global	_ADRESH
_ADRESH	set	0x1E
	global	_PORTB
_PORTB	set	0x6
	global	_ADIF
_ADIF	set	0x66
	global	_GIE
_GIE	set	0x5F
	global	_GO
_GO	set	0xFA
	global	_PEIE
_PEIE	set	0x5E
	global	_ADCON1
_ADCON1	set	0x9F
	global	_ADRESL
_ADRESL	set	0x9E
	global	_TRISB
_TRISB	set	0x86
	global	_ADIE
_ADIE	set	0x466
psect	text0,local,class=CODE,delta=2,merge=1
; #config settings
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
	line	2761
global __ptext0
__ptext0:	;psect for function _delay
global __CFG_WDTE$OFF
__CFG_WDTE$OFF equ 0x0
global __CFG_PWRTE$ON
__CFG_PWRTE$ON equ 0x0
global __CFG_CP$OFF
__CFG_CP$OFF equ 0x0
global __CFG_BOREN$ON
__CFG_BOREN$ON equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
global __CFG_CPD$OFF
__CFG_CPD$OFF equ 0x0
global __CFG_WRT$OFF
__CFG_WRT$OFF equ 0x0
global __CFG_FOSC$XT
__CFG_FOSC$XT equ 0x0
	file	"LASTRE_TORAL_LE5-1.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_delay:	; 0 bytes @ 0x0
?_ISR:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
	global	?_readADC
?_readADC:	; 2 bytes @ 0x0
	global	delay@cnt
delay@cnt:	; 2 bytes @ 0x0
	ds	2
??_delay:	; 0 bytes @ 0x2
??_readADC:	; 0 bytes @ 0x2
	ds	2
	global	readADC@temp
readADC@temp:	; 2 bytes @ 0x4
	ds	2
??_ISR:	; 0 bytes @ 0x6
	ds	4
	global	ISR@d_value
ISR@d_value:	; 2 bytes @ 0xA
	ds	2
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_main:	; 0 bytes @ 0x0
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     12      12
;!    BANK0            80      0       0
;!    BANK1            80      0       0
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _ISR in COMMON
;!
;!    _ISR->_readADC
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 0
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (1) _ISR                                                  6     6      0     283
;!                                              6 COMMON     6     6      0
;!                              _delay
;!                            _readADC
;! ---------------------------------------------------------------------------------
;! (2) _readADC                                              6     4      2      45
;!                                              0 COMMON     6     4      2
;! ---------------------------------------------------------------------------------
;! (2) _delay                                                2     0      2      58
;!                                              0 COMMON     2     0      2
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!
;! _ISR (ROOT)
;!   _delay
;!   _readADC
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      C       C       1       85.7%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0       0       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!BANK3               60      0       0       9        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!BANK2               60      0       0      11        0.0%
;!DATA                 0      0       0      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 67 in file "Z:\3201\Pre-Midterms\LASTRE_TORAL_LE5-1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"Z:\3201\Pre-Midterms\LASTRE_TORAL_LE5-1.c"
	line	67
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"Z:\3201\Pre-Midterms\LASTRE_TORAL_LE5-1.c"
	line	67
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 6
; Regs used in _main: [wreg+status,2]
	line	69
	
l592:	
;LASTRE_TORAL_LE5-1.c: 69: TRISB = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	70
;LASTRE_TORAL_LE5-1.c: 70: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	71
	
l594:	
;LASTRE_TORAL_LE5-1.c: 71: ADCON1 = 0x80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	74
	
l596:	
;LASTRE_TORAL_LE5-1.c: 74: ADCON0 = 0x41;
	movlw	(041h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	76
	
l598:	
;LASTRE_TORAL_LE5-1.c: 76: PEIE = 1;
	bsf	(94/8),(94)&7	;volatile
	line	77
	
l600:	
;LASTRE_TORAL_LE5-1.c: 77: ADIE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1126/8)^080h,(1126)&7	;volatile
	line	78
	
l602:	
;LASTRE_TORAL_LE5-1.c: 78: ADIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(102/8),(102)&7	;volatile
	line	79
	
l604:	
;LASTRE_TORAL_LE5-1.c: 79: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	80
	
l606:	
;LASTRE_TORAL_LE5-1.c: 80: GO = 1;
	bsf	(250/8),(250)&7	;volatile
	line	82
;LASTRE_TORAL_LE5-1.c: 81: for(;;)
	
l49:	
	line	84
;LASTRE_TORAL_LE5-1.c: 82: {
;LASTRE_TORAL_LE5-1.c: 84: }
	goto	l49
	
l50:	
	line	85
	
l51:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 38 in file "Z:\3201\Pre-Midterms\LASTRE_TORAL_LE5-1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  d_value         2   10[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;;		_readADC
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	38
global __ptext1
__ptext1:	;psect for function _ISR
psect	text1
	file	"Z:\3201\Pre-Midterms\LASTRE_TORAL_LE5-1.c"
	line	38
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
;incstack = 0
	opt	stack 6
; Regs used in _ISR: [wreg+status,2+status,0+btemp+1+pclath+cstack]
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
psect	text1
	line	41
	
i1l524:	
;LASTRE_TORAL_LE5-1.c: 41: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	42
	
i1l526:	
;LASTRE_TORAL_LE5-1.c: 42: int d_value = 0;
	clrf	(ISR@d_value)
	clrf	(ISR@d_value+1)
	line	43
	
i1l528:	
;LASTRE_TORAL_LE5-1.c: 43: if(ADIF == 1)
	btfss	(102/8),(102)&7	;volatile
	goto	u2_21
	goto	u2_20
u2_21:
	goto	i1l570
u2_20:
	line	46
	
i1l530:	
;LASTRE_TORAL_LE5-1.c: 44: {
;LASTRE_TORAL_LE5-1.c: 46: ADIF = 0;
	bcf	(102/8),(102)&7	;volatile
	line	47
	
i1l532:	
;LASTRE_TORAL_LE5-1.c: 47: d_value = readADC();
	fcall	_readADC
	movf	(1+(?_readADC)),w
	clrf	(ISR@d_value+1)
	addwf	(ISR@d_value+1)
	movf	(0+(?_readADC)),w
	clrf	(ISR@d_value)
	addwf	(ISR@d_value)

	line	49
	
i1l534:	
;LASTRE_TORAL_LE5-1.c: 49: if(d_value>=0 && d_value<=169)
	btfsc	(ISR@d_value+1),7
	goto	u3_21
	goto	u3_20
u3_21:
	goto	i1l540
u3_20:
	
i1l536:	
	movf	(ISR@d_value+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0AAh))^80h
	subwf	btemp+1,w
	skipz
	goto	u4_25
	movlw	low(0AAh)
	subwf	(ISR@d_value),w
u4_25:

	skipnc
	goto	u4_21
	goto	u4_20
u4_21:
	goto	i1l540
u4_20:
	line	50
	
i1l538:	
;LASTRE_TORAL_LE5-1.c: 50: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	goto	i1l570
	line	51
	
i1l35:	
	
i1l540:	
;LASTRE_TORAL_LE5-1.c: 51: else if(d_value>=170 && d_value<=340)
	movf	(ISR@d_value+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0AAh))^80h
	subwf	btemp+1,w
	skipz
	goto	u5_25
	movlw	low(0AAh)
	subwf	(ISR@d_value),w
u5_25:

	skipc
	goto	u5_21
	goto	u5_20
u5_21:
	goto	i1l546
u5_20:
	
i1l542:	
	movf	(ISR@d_value+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0155h))^80h
	subwf	btemp+1,w
	skipz
	goto	u6_25
	movlw	low(0155h)
	subwf	(ISR@d_value),w
u6_25:

	skipnc
	goto	u6_21
	goto	u6_20
u6_21:
	goto	i1l546
u6_20:
	line	52
	
i1l544:	
;LASTRE_TORAL_LE5-1.c: 52: PORTB = 0x01;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	goto	i1l570
	line	53
	
i1l37:	
	
i1l546:	
;LASTRE_TORAL_LE5-1.c: 53: else if(d_value>=341 && d_value<=511)
	movf	(ISR@d_value+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0155h))^80h
	subwf	btemp+1,w
	skipz
	goto	u7_25
	movlw	low(0155h)
	subwf	(ISR@d_value),w
u7_25:

	skipc
	goto	u7_21
	goto	u7_20
u7_21:
	goto	i1l552
u7_20:
	
i1l548:	
	movf	(ISR@d_value+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0200h))^80h
	subwf	btemp+1,w
	skipz
	goto	u8_25
	movlw	low(0200h)
	subwf	(ISR@d_value),w
u8_25:

	skipnc
	goto	u8_21
	goto	u8_20
u8_21:
	goto	i1l552
u8_20:
	line	54
	
i1l550:	
;LASTRE_TORAL_LE5-1.c: 54: PORTB = 0x03;
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	goto	i1l570
	line	55
	
i1l39:	
	
i1l552:	
;LASTRE_TORAL_LE5-1.c: 55: else if(d_value>=512 && d_value<=682)
	movf	(ISR@d_value+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0200h))^80h
	subwf	btemp+1,w
	skipz
	goto	u9_25
	movlw	low(0200h)
	subwf	(ISR@d_value),w
u9_25:

	skipc
	goto	u9_21
	goto	u9_20
u9_21:
	goto	i1l558
u9_20:
	
i1l554:	
	movf	(ISR@d_value+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02ABh))^80h
	subwf	btemp+1,w
	skipz
	goto	u10_25
	movlw	low(02ABh)
	subwf	(ISR@d_value),w
u10_25:

	skipnc
	goto	u10_21
	goto	u10_20
u10_21:
	goto	i1l558
u10_20:
	line	56
	
i1l556:	
;LASTRE_TORAL_LE5-1.c: 56: PORTB = 0x07;
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	goto	i1l570
	line	57
	
i1l41:	
	
i1l558:	
;LASTRE_TORAL_LE5-1.c: 57: else if(d_value>=683 && d_value<=853)
	movf	(ISR@d_value+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02ABh))^80h
	subwf	btemp+1,w
	skipz
	goto	u11_25
	movlw	low(02ABh)
	subwf	(ISR@d_value),w
u11_25:

	skipc
	goto	u11_21
	goto	u11_20
u11_21:
	goto	i1l564
u11_20:
	
i1l560:	
	movf	(ISR@d_value+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0356h))^80h
	subwf	btemp+1,w
	skipz
	goto	u12_25
	movlw	low(0356h)
	subwf	(ISR@d_value),w
u12_25:

	skipnc
	goto	u12_21
	goto	u12_20
u12_21:
	goto	i1l564
u12_20:
	line	58
	
i1l562:	
;LASTRE_TORAL_LE5-1.c: 58: PORTB = 0x0F;
	movlw	(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	goto	i1l570
	line	59
	
i1l43:	
	
i1l564:	
;LASTRE_TORAL_LE5-1.c: 59: else if(d_value>=854 && d_value<=1024)
	movf	(ISR@d_value+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0356h))^80h
	subwf	btemp+1,w
	skipz
	goto	u13_25
	movlw	low(0356h)
	subwf	(ISR@d_value),w
u13_25:

	skipc
	goto	u13_21
	goto	u13_20
u13_21:
	goto	i1l570
u13_20:
	
i1l566:	
	movf	(ISR@d_value+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0401h))^80h
	subwf	btemp+1,w
	skipz
	goto	u14_25
	movlw	low(0401h)
	subwf	(ISR@d_value),w
u14_25:

	skipnc
	goto	u14_21
	goto	u14_20
u14_21:
	goto	i1l570
u14_20:
	line	60
	
i1l568:	
;LASTRE_TORAL_LE5-1.c: 60: PORTB = 0x1F;
	movlw	(01Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	goto	i1l570
	
i1l45:	
	goto	i1l570
	line	61
	
i1l44:	
	goto	i1l570
	
i1l42:	
	goto	i1l570
	
i1l40:	
	goto	i1l570
	
i1l38:	
	goto	i1l570
	
i1l36:	
	goto	i1l570
	
i1l34:	
	line	62
	
i1l570:	
;LASTRE_TORAL_LE5-1.c: 61: }
;LASTRE_TORAL_LE5-1.c: 62: delay(1000);
	movlw	low(03E8h)
	movwf	(delay@cnt)
	movlw	high(03E8h)
	movwf	((delay@cnt))+1
	fcall	_delay
	line	63
	
i1l572:	
;LASTRE_TORAL_LE5-1.c: 63: GO = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7	;volatile
	line	64
	
i1l574:	
;LASTRE_TORAL_LE5-1.c: 64: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	65
	
i1l46:	
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
	signat	_ISR,88
	global	_readADC

;; *************** function _readADC *****************
;; Defined at:
;;		line 29 in file "Z:\3201\Pre-Midterms\LASTRE_TORAL_LE5-1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  temp            2    4[COMMON] int 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	29
global __ptext2
__ptext2:	;psect for function _readADC
psect	text2
	file	"Z:\3201\Pre-Midterms\LASTRE_TORAL_LE5-1.c"
	line	29
	global	__size_of_readADC
	__size_of_readADC	equ	__end_of_readADC-_readADC
	
_readADC:	
;incstack = 0
	opt	stack 6
; Regs used in _readADC: [wreg+status,2+status,0+btemp+1]
	line	31
	
i1l512:	
;LASTRE_TORAL_LE5-1.c: 31: int temp = 0;
	clrf	(readADC@temp)
	clrf	(readADC@temp+1)
	line	32
	
i1l514:	
;LASTRE_TORAL_LE5-1.c: 32: temp = ADRESH;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(30),w	;volatile
	movwf	(??_readADC+0)+0
	clrf	(??_readADC+0)+0+1
	movf	0+(??_readADC+0)+0,w
	movwf	(readADC@temp)
	movf	1+(??_readADC+0)+0,w
	movwf	(readADC@temp+1)
	line	33
	
i1l516:	
;LASTRE_TORAL_LE5-1.c: 33: temp = temp << 8;
	movf	(readADC@temp+1),w
	movwf	(??_readADC+0)+0+1
	movf	(readADC@temp),w
	movwf	(??_readADC+0)+0
	movf	(??_readADC+0)+0,w
	movwf	(??_readADC+0)+1
	clrf	(??_readADC+0)+0
	movf	0+(??_readADC+0)+0,w
	movwf	(readADC@temp)
	movf	1+(??_readADC+0)+0,w
	movwf	(readADC@temp+1)
	line	34
	
i1l518:	
;LASTRE_TORAL_LE5-1.c: 34: temp = temp | ADRESL;
	movf	(readADC@temp),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	iorwf	(158)^080h,w	;volatile
	movwf	(??_readADC+0)+0
	movf	(readADC@temp+1),w
	movwf	1+(??_readADC+0)+0
	movf	0+(??_readADC+0)+0,w
	movwf	(readADC@temp)
	movf	1+(??_readADC+0)+0,w
	movwf	(readADC@temp+1)
	line	35
	
i1l520:	
;LASTRE_TORAL_LE5-1.c: 35: return temp;
	movf	(readADC@temp+1),w
	clrf	(?_readADC+1)
	addwf	(?_readADC+1)
	movf	(readADC@temp),w
	clrf	(?_readADC)
	addwf	(?_readADC)

	goto	i1l31
	
i1l522:	
	line	36
	
i1l31:	
	return
	opt stack 0
GLOBAL	__end_of_readADC
	__end_of_readADC:
	signat	_readADC,90
	global	_delay

;; *************** function _delay *****************
;; Defined at:
;;		line 24 in file "Z:\3201\Pre-Midterms\LASTRE_TORAL_LE5-1.c"
;; Parameters:    Size  Location     Type
;;  cnt             2    0[COMMON] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	24
global __ptext3
__ptext3:	;psect for function _delay
psect	text3
	file	"Z:\3201\Pre-Midterms\LASTRE_TORAL_LE5-1.c"
	line	24
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
;incstack = 0
	opt	stack 6
; Regs used in _delay: [wreg]
	line	26
	
i1l508:	
;LASTRE_TORAL_LE5-1.c: 26: while(cnt--);
	goto	i1l510
	
i1l26:	
	goto	i1l510
	
i1l25:	
	
i1l510:	
	movlw	low(-1)
	addwf	(delay@cnt),f
	skipnc
	incf	(delay@cnt+1),f
	movlw	high(-1)
	addwf	(delay@cnt+1),f
	movlw	high(-1)
	xorwf	((delay@cnt+1)),w
	skipz
	goto	u1_25
	movlw	low(-1)
	xorwf	((delay@cnt)),w
u1_25:

	skipz
	goto	u1_21
	goto	u1_20
u1_21:
	goto	i1l510
u1_20:
	goto	i1l28
	
i1l27:	
	line	27
	
i1l28:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
	signat	_delay,4216
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp
	global	wtemp0
	wtemp set btemp
	wtemp0 set btemp
	global	wtemp1
	wtemp1 set btemp+2
	global	wtemp2
	wtemp2 set btemp+4
	global	wtemp3
	wtemp3 set btemp+6
	global	wtemp4
	wtemp4 set btemp+8
	global	wtemp5
	wtemp5 set btemp+10
	global	wtemp6
	wtemp6 set btemp+1
	global	ttemp
	global	ttemp0
	ttemp set btemp
	ttemp0 set btemp
	global	ttemp1
	ttemp1 set btemp+3
	global	ttemp2
	ttemp2 set btemp+6
	global	ttemp3
	ttemp3 set btemp+9
	global	ttemp4
	ttemp4 set btemp+1
	global	ltemp
	global	ltemp0
	ltemp set btemp
	ltemp0 set btemp
	global	ltemp1
	ltemp1 set btemp+4
	global	ltemp2
	ltemp2 set btemp+8
	global	ltemp3
	ltemp3 set btemp+2
	end
