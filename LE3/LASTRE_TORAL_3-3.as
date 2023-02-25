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
	FNCALL	_main,_delay
	FNROOT	_main
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_count_flag
	global	_segment
	global	_PORTC
_PORTC	set	0x7
	global	_PORTD
_PORTD	set	0x8
	global	_GIE
_GIE	set	0x5F
	global	_INTE
_INTE	set	0x5C
	global	_INTF
_INTF	set	0x59
	global	_PEIE
_PEIE	set	0x5E
	global	_TMR0IE
_TMR0IE	set	0x5D
	global	_TMR0IF
_TMR0IF	set	0x5A
	global	_OPTION_REG
_OPTION_REG	set	0x81
	global	_TRISB
_TRISB	set	0x86
	global	_TRISC
_TRISC	set	0x87
	global	_TRISD
_TRISD	set	0x88
psect	text0,local,class=CODE,delta=2,merge=1
; #config settings
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
	line	2761
global __ptext0
__ptext0:	;psect for function _ISR
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
	file	"LASTRE_TORAL_3-3.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bitbssCOMMON,class=COMMON,bit,space=1,noexec
global __pbitbssCOMMON
__pbitbssCOMMON:
_count_flag:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_segment:
       ds      2

	line	#
; Clear objects allocated to BITCOMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbitbssCOMMON/8)+0)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_ISR:	; 0 bytes @ 0x0
??_ISR:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
	ds	6
	global	ISR@read
ISR@read:	; 2 bytes @ 0x6
	ds	2
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
?_delay:	; 0 bytes @ 0x0
	global	delay@counter
delay@counter:	; 2 bytes @ 0x0
	ds	2
??_delay:	; 0 bytes @ 0x2
	ds	1
	global	delay@of_count
delay@of_count:	; 2 bytes @ 0x3
	ds	2
??_main:	; 0 bytes @ 0x5
	global	main@i
main@i:	; 2 bytes @ 0x5
	ds	2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         2
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      8       9
;!    BANK0            80      7       9
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
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_delay
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
;! (0) _main                                                 2     2      0     145
;!                                              5 BANK0      2     2      0
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (1) _delay                                                5     3      2      99
;!                                              0 BANK0      5     3      2
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (2) _ISR                                                  8     8      0      23
;!                                              0 COMMON     8     8      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _delay
;!
;! _ISR (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       1       0        7.1%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      8       9       1       64.3%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0      12       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50      7       9       5       11.3%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!BANK3               60      0       0       9        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!BANK2               60      0       0      11        0.0%
;!DATA                 0      0      12      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 105 in file "Z:\3201\LE3\LASTRE_TORAL_3-3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    5[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"Z:\3201\LE3\LASTRE_TORAL_3-3.c"
	line	105
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"Z:\3201\LE3\LASTRE_TORAL_3-3.c"
	line	105
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	107
	
l677:	
;LASTRE_TORAL_3-3.c: 107: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	108
;LASTRE_TORAL_3-3.c: 108: INTE = 1;
	bsf	(92/8),(92)&7	;volatile
	line	109
;LASTRE_TORAL_3-3.c: 109: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	line	110
	
l679:	
;LASTRE_TORAL_3-3.c: 110: OPTION_REG = 0x43;
	movlw	(043h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	line	114
	
l681:	
;LASTRE_TORAL_3-3.c: 114: PEIE=1;
	bsf	(94/8),(94)&7	;volatile
	line	115
	
l683:	
;LASTRE_TORAL_3-3.c: 115: TMR0IE = 1;
	bsf	(93/8),(93)&7	;volatile
	line	116
	
l685:	
;LASTRE_TORAL_3-3.c: 116: TMR0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	118
;LASTRE_TORAL_3-3.c: 118: TRISB = 0x01;
	movlw	(01h)
	movwf	(134)^080h	;volatile
	line	119
	
l687:	
;LASTRE_TORAL_3-3.c: 119: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	120
	
l689:	
;LASTRE_TORAL_3-3.c: 120: TRISD= 0xFF;
	movlw	(0FFh)
	movwf	(136)^080h	;volatile
	line	121
	
l691:	
;LASTRE_TORAL_3-3.c: 121: PORTC = 0x05;
	movlw	(05h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	goto	l693
	line	124
;LASTRE_TORAL_3-3.c: 124: while (1)
	
l58:	
	line	126
	
l693:	
;LASTRE_TORAL_3-3.c: 125: {
;LASTRE_TORAL_3-3.c: 126: for(int i = 0 ; i<8 ; i ++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@i)
	clrf	(main@i+1)
	
l695:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u125
	movlw	low(08h)
	subwf	(main@i),w
u125:

	skipc
	goto	u121
	goto	u120
u121:
	goto	l699
u120:
	goto	l693
	
l697:	
	goto	l693
	line	127
	
l59:	
	line	128
	
l699:	
;LASTRE_TORAL_3-3.c: 127: {
;LASTRE_TORAL_3-3.c: 128: PORTC = segment;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_segment),w
	movwf	(7)	;volatile
	line	129
;LASTRE_TORAL_3-3.c: 129: segment++;
	movlw	low(01h)
	addwf	(_segment),f
	skipnc
	incf	(_segment+1),f
	movlw	high(01h)
	addwf	(_segment+1),f
	line	130
	
l701:	
;LASTRE_TORAL_3-3.c: 130: delay(195);
	movlw	low(0C3h)
	movwf	(delay@counter)
	movlw	high(0C3h)
	movwf	((delay@counter))+1
	fcall	_delay
	line	131
	
l703:	
;LASTRE_TORAL_3-3.c: 131: if(segment == 0x0A)
	movlw	0Ah
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_segment),w
	iorwf	(_segment+1),w
	skipz
	goto	u131
	goto	u130
u131:
	goto	l707
u130:
	line	132
	
l705:	
;LASTRE_TORAL_3-3.c: 132: segment= 0x00;
	clrf	(_segment)
	clrf	(_segment+1)
	goto	l707
	
l61:	
	line	126
	
l707:	
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	
l709:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u145
	movlw	low(08h)
	subwf	(main@i),w
u145:

	skipc
	goto	u141
	goto	u140
u141:
	goto	l699
u140:
	goto	l693
	
l60:	
	goto	l693
	line	135
	
l62:	
	line	124
	goto	l693
	
l63:	
	line	137
	
l64:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_delay

;; *************** function _delay *****************
;; Defined at:
;;		line 91 in file "Z:\3201\LE3\LASTRE_TORAL_3-3.c"
;; Parameters:    Size  Location     Type
;;  counter         2    0[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  of_count        2    3[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	91
global __ptext1
__ptext1:	;psect for function _delay
psect	text1
	file	"Z:\3201\LE3\LASTRE_TORAL_3-3.c"
	line	91
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
;incstack = 0
	opt	stack 6
; Regs used in _delay: [wreg+status,2]
	line	93
	
l631:	
;LASTRE_TORAL_3-3.c: 93: int of_count = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(delay@of_count)
	clrf	(delay@of_count+1)
	line	95
;LASTRE_TORAL_3-3.c: 95: while(of_count < counter)
	goto	l51
	
l52:	
	line	97
;LASTRE_TORAL_3-3.c: 96: {
;LASTRE_TORAL_3-3.c: 97: if(count_flag)
	btfss	(_count_flag/8),(_count_flag)&7
	goto	u81
	goto	u80
u81:
	goto	l51
u80:
	line	99
	
l633:	
;LASTRE_TORAL_3-3.c: 98: {
;LASTRE_TORAL_3-3.c: 99: of_count++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(delay@of_count),f
	skipnc
	incf	(delay@of_count+1),f
	movlw	high(01h)
	addwf	(delay@of_count+1),f
	line	100
	
l635:	
;LASTRE_TORAL_3-3.c: 100: count_flag=0;
	bcf	(_count_flag/8),(_count_flag)&7
	goto	l51
	line	101
	
l53:	
	line	102
	
l51:	
	line	95
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(delay@of_count+1),w
	xorlw	80h
	movwf	(??_delay+0)+0
	movf	(delay@counter+1),w
	xorlw	80h
	subwf	(??_delay+0)+0,w
	skipz
	goto	u95
	movf	(delay@counter),w
	subwf	(delay@of_count),w
u95:

	skipc
	goto	u91
	goto	u90
u91:
	goto	l52
u90:
	goto	l55
	
l54:	
	line	103
	
l55:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
	signat	_delay,4216
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 27 in file "Z:\3201\LE3\LASTRE_TORAL_3-3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  read            2    6[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          6       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	27
global __ptext2
__ptext2:	;psect for function _ISR
psect	text2
	file	"Z:\3201\LE3\LASTRE_TORAL_3-3.c"
	line	27
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
;incstack = 0
	opt	stack 6
; Regs used in _ISR: [wreg-fsr0h+status,2+status,0]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_ISR+2)
	movf	fsr0,w
	movwf	(??_ISR+3)
	movf	pclath,w
	movwf	(??_ISR+4)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_ISR+5)
	ljmp	_ISR
psect	text2
	line	29
	
i1l637:	
;LASTRE_TORAL_3-3.c: 29: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	30
;LASTRE_TORAL_3-3.c: 30: if (INTF)
	btfss	(89/8),(89)&7	;volatile
	goto	u10_21
	goto	u10_20
u10_21:
	goto	i1l31
u10_20:
	line	35
	
i1l639:	
;LASTRE_TORAL_3-3.c: 31: {
;LASTRE_TORAL_3-3.c: 34: int read;
;LASTRE_TORAL_3-3.c: 35: read = PORTD & 0x0F;
	movf	(8),w	;volatile
	andlw	0Fh
	movwf	(??_ISR+0)+0
	clrf	(??_ISR+0)+0+1
	movf	0+(??_ISR+0)+0,w
	movwf	(ISR@read)
	movf	1+(??_ISR+0)+0,w
	movwf	(ISR@read+1)
	line	37
;LASTRE_TORAL_3-3.c: 37: switch(read)
	goto	i1l667
	line	39
;LASTRE_TORAL_3-3.c: 38: {
;LASTRE_TORAL_3-3.c: 39: case 0x00:
	
i1l33:	
	line	40
	
i1l641:	
;LASTRE_TORAL_3-3.c: 40: segment=0x01;
	movlw	low(01h)
	movwf	(_segment)
	movlw	high(01h)
	movwf	((_segment))+1
	line	41
;LASTRE_TORAL_3-3.c: 41: break;
	goto	i1l34
	line	42
;LASTRE_TORAL_3-3.c: 42: case 0x01:
	
i1l35:	
	line	43
	
i1l643:	
;LASTRE_TORAL_3-3.c: 43: segment=0x02;
	movlw	low(02h)
	movwf	(_segment)
	movlw	high(02h)
	movwf	((_segment))+1
	line	44
;LASTRE_TORAL_3-3.c: 44: break;
	goto	i1l34
	line	45
;LASTRE_TORAL_3-3.c: 45: case 0x02:
	
i1l36:	
	line	46
	
i1l645:	
;LASTRE_TORAL_3-3.c: 46: segment=0x03;
	movlw	low(03h)
	movwf	(_segment)
	movlw	high(03h)
	movwf	((_segment))+1
	line	47
;LASTRE_TORAL_3-3.c: 47: break;
	goto	i1l34
	line	48
;LASTRE_TORAL_3-3.c: 48: case 0x04:
	
i1l37:	
	line	49
	
i1l647:	
;LASTRE_TORAL_3-3.c: 49: segment=0x04;
	movlw	low(04h)
	movwf	(_segment)
	movlw	high(04h)
	movwf	((_segment))+1
	line	50
;LASTRE_TORAL_3-3.c: 50: break;
	goto	i1l34
	line	51
;LASTRE_TORAL_3-3.c: 51: case 0x05:
	
i1l38:	
	line	52
	
i1l649:	
;LASTRE_TORAL_3-3.c: 52: segment=0x05;
	movlw	low(05h)
	movwf	(_segment)
	movlw	high(05h)
	movwf	((_segment))+1
	line	53
;LASTRE_TORAL_3-3.c: 53: break;
	goto	i1l34
	line	54
;LASTRE_TORAL_3-3.c: 54: case 0x06:
	
i1l39:	
	line	55
	
i1l651:	
;LASTRE_TORAL_3-3.c: 55: segment=0x06;
	movlw	low(06h)
	movwf	(_segment)
	movlw	high(06h)
	movwf	((_segment))+1
	line	56
;LASTRE_TORAL_3-3.c: 56: break;
	goto	i1l34
	line	57
;LASTRE_TORAL_3-3.c: 57: case 0x08:
	
i1l40:	
	line	58
	
i1l653:	
;LASTRE_TORAL_3-3.c: 58: segment=0x07;
	movlw	low(07h)
	movwf	(_segment)
	movlw	high(07h)
	movwf	((_segment))+1
	line	59
;LASTRE_TORAL_3-3.c: 59: break;
	goto	i1l34
	line	60
;LASTRE_TORAL_3-3.c: 60: case 0x09:
	
i1l41:	
	line	61
	
i1l655:	
;LASTRE_TORAL_3-3.c: 61: segment=0x08;
	movlw	low(08h)
	movwf	(_segment)
	movlw	high(08h)
	movwf	((_segment))+1
	line	62
;LASTRE_TORAL_3-3.c: 62: break;
	goto	i1l34
	line	63
;LASTRE_TORAL_3-3.c: 63: case 0x0A:
	
i1l42:	
	line	64
	
i1l657:	
;LASTRE_TORAL_3-3.c: 64: segment=0x09;
	movlw	low(09h)
	movwf	(_segment)
	movlw	high(09h)
	movwf	((_segment))+1
	line	65
;LASTRE_TORAL_3-3.c: 65: break;
	goto	i1l34
	line	66
;LASTRE_TORAL_3-3.c: 66: case 0x0C:
	
i1l43:	
	line	67
	
i1l659:	
;LASTRE_TORAL_3-3.c: 67: segment=0x00;
	clrf	(_segment)
	clrf	(_segment+1)
	line	68
;LASTRE_TORAL_3-3.c: 68: break;
	goto	i1l34
	line	69
;LASTRE_TORAL_3-3.c: 69: case 0x0D:
	
i1l44:	
	line	70
	
i1l661:	
;LASTRE_TORAL_3-3.c: 70: segment=0x00;
	clrf	(_segment)
	clrf	(_segment+1)
	line	71
;LASTRE_TORAL_3-3.c: 71: break;
	goto	i1l34
	line	72
;LASTRE_TORAL_3-3.c: 72: case 0x0E:
	
i1l45:	
	line	73
	
i1l663:	
;LASTRE_TORAL_3-3.c: 73: segment=0x00;
	clrf	(_segment)
	clrf	(_segment+1)
	line	74
;LASTRE_TORAL_3-3.c: 74: break;
	goto	i1l34
	line	75
	
i1l665:	
;LASTRE_TORAL_3-3.c: 75: }
	goto	i1l34
	line	37
	
i1l32:	
	
i1l667:	
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           11     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (ISR@read+1),w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	i1l741
	goto	i1l34
	opt asmopt_on
	
i1l741:	
; Switch size 1, requested type "space"
; Number of cases is 12, Range of values is 0 to 14
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           37    19 (average)
; direct_byte           53     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (ISR@read),w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	i1l641
	xorlw	1^0	; case 1
	skipnz
	goto	i1l643
	xorlw	2^1	; case 2
	skipnz
	goto	i1l645
	xorlw	4^2	; case 4
	skipnz
	goto	i1l647
	xorlw	5^4	; case 5
	skipnz
	goto	i1l649
	xorlw	6^5	; case 6
	skipnz
	goto	i1l651
	xorlw	8^6	; case 8
	skipnz
	goto	i1l653
	xorlw	9^8	; case 9
	skipnz
	goto	i1l655
	xorlw	10^9	; case 10
	skipnz
	goto	i1l657
	xorlw	12^10	; case 12
	skipnz
	goto	i1l659
	xorlw	13^12	; case 13
	skipnz
	goto	i1l661
	xorlw	14^13	; case 14
	skipnz
	goto	i1l663
	goto	i1l34
	opt asmopt_on

	line	75
	
i1l34:	
	line	77
;LASTRE_TORAL_3-3.c: 77: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	line	80
;LASTRE_TORAL_3-3.c: 80: }
	goto	i1l46
	line	81
	
i1l31:	
;LASTRE_TORAL_3-3.c: 81: else if (TMR0IF)
	btfss	(90/8),(90)&7	;volatile
	goto	u11_21
	goto	u11_20
u11_21:
	goto	i1l46
u11_20:
	line	83
	
i1l669:	
;LASTRE_TORAL_3-3.c: 82: {
;LASTRE_TORAL_3-3.c: 83: TMR0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	85
;LASTRE_TORAL_3-3.c: 85: count_flag = 1;
	bsf	(_count_flag/8),(_count_flag)&7
	goto	i1l46
	line	86
	
i1l47:	
	line	88
	
i1l46:	
;LASTRE_TORAL_3-3.c: 86: }
;LASTRE_TORAL_3-3.c: 88: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	89
	
i1l48:	
	movf	(??_ISR+5),w
	movwf	btemp+1
	movf	(??_ISR+4),w
	movwf	pclath
	movf	(??_ISR+3),w
	movwf	fsr0
	swapf	(??_ISR+2)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
	signat	_ISR,88
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
