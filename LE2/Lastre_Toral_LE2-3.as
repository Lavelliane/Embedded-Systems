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
	FNCALL	_main,_initLCD
	FNCALL	_main,_instCtrl
	FNCALL	_main,_show
	FNCALL	_show,_dataCtrl
	FNCALL	_initLCD,_instCtrl
	FNROOT	_main
	global	_j
	global	_PORTB
_PORTB	set	0x6
	global	_PORTD
_PORTD	set	0x8
	global	_RC0
_RC0	set	0x38
	global	_RC1
_RC1	set	0x39
	global	_RC2
_RC2	set	0x3A
	global	_RD4
_RD4	set	0x44
	global	_TRISB
_TRISB	set	0x86
	global	_TRISC
_TRISC	set	0x87
	global	_TRISD
_TRISD	set	0x88
psect	strings,class=STRING,delta=2,noexec
global __pstrings
__pstrings:
stringtab:
	global    __stringtab
__stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
	global __stringbase
__stringbase:
	retlw	0
psect	strings
	global    __end_of__stringtab
__end_of__stringtab:
	global __stringdata
__stringdata:
	
STR_12:	
	retlw	35	;'#'
	retlw	0
psect	strings
	
STR_10:	
	retlw	42	;'*'
	retlw	0
psect	strings
	
STR_11:	
	retlw	48	;'0'
	retlw	0
psect	strings
	
STR_1:	
	retlw	49	;'1'
	retlw	0
psect	strings
	
STR_2:	
	retlw	50	;'2'
	retlw	0
psect	strings
	
STR_3:	
	retlw	51	;'3'
	retlw	0
psect	strings
	
STR_4:	
	retlw	52	;'4'
	retlw	0
psect	strings
	
STR_5:	
	retlw	53	;'5'
	retlw	0
psect	strings
	
STR_6:	
	retlw	54	;'6'
	retlw	0
psect	strings
	
STR_7:	
	retlw	55	;'7'
	retlw	0
psect	strings
	
STR_8:	
	retlw	56	;'8'
	retlw	0
psect	strings
	
STR_9:	
	retlw	57	;'9'
	retlw	0
psect	strings
	global __end_of__stringdata
__end_of__stringdata:
; #config settings
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
	file	"Lastre_Toral_LE2-3.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_j:
       ds      2

	line	#
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_instCtrl:	; 0 bytes @ 0x0
??_instCtrl:	; 0 bytes @ 0x0
?_initLCD:	; 0 bytes @ 0x0
?_dataCtrl:	; 0 bytes @ 0x0
??_dataCtrl:	; 0 bytes @ 0x0
?_show:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
	global	instCtrl@data
instCtrl@data:	; 1 bytes @ 0x0
	global	dataCtrl@b
dataCtrl@b:	; 1 bytes @ 0x0
	ds	1
??_initLCD:	; 0 bytes @ 0x1
??_show:	; 0 bytes @ 0x1
	ds	1
	global	show@s
show@s:	; 1 bytes @ 0x2
	ds	1
??_main:	; 0 bytes @ 0x3
	ds	2
	global	main@read
main@read:	; 2 bytes @ 0x5
	ds	2
	global	main@count
main@count:	; 2 bytes @ 0x7
	ds	2
;!
;!Data Sizes:
;!    Strings     24
;!    Constant    0
;!    Data        0
;!    BSS         2
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      9      11
;!    BANK0            80      0       0
;!    BANK1            80      0       0
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    show@s	PTR const unsigned char  size(1) Largest target is 2
;!		 -> STR_12(CODE[2]), STR_11(CODE[2]), STR_10(CODE[2]), STR_9(CODE[2]), 
;!		 -> STR_8(CODE[2]), STR_7(CODE[2]), STR_6(CODE[2]), STR_5(CODE[2]), 
;!		 -> STR_4(CODE[2]), STR_3(CODE[2]), STR_2(CODE[2]), STR_1(CODE[2]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_show
;!    _show->_dataCtrl
;!    _initLCD->_instCtrl
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 6     6      0     438
;!                                              3 COMMON     6     6      0
;!                            _initLCD
;!                           _instCtrl
;!                               _show
;! ---------------------------------------------------------------------------------
;! (1) _show                                                 2     2      0     333
;!                                              1 COMMON     2     2      0
;!                           _dataCtrl
;! ---------------------------------------------------------------------------------
;! (2) _dataCtrl                                             1     1      0      15
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _initLCD                                              0     0      0      15
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (1) _instCtrl                                             1     1      0      15
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _initLCD
;!     _instCtrl
;!   _instCtrl
;!   _show
;!     _dataCtrl
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      9       B       1       78.6%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0       B       3        0.0%
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
;!DATA                 0      0       B      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 65 in file "Z:\3201\LE2\Lastre_Toral_LE2-3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  count           2    7[COMMON] int 
;;  read            2    5[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_initLCD
;;		_instCtrl
;;		_show
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"Z:\3201\LE2\Lastre_Toral_LE2-3.c"
	line	65
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"Z:\3201\LE2\Lastre_Toral_LE2-3.c"
	line	65
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	68
	
l606:	
;Lastre_Toral_LE2-3.c: 68: TRISB = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	69
;Lastre_Toral_LE2-3.c: 69: TRISC = 0X00;
	clrf	(135)^080h	;volatile
	line	70
	
l608:	
;Lastre_Toral_LE2-3.c: 70: TRISD = 0XFF;
	movlw	(0FFh)
	movwf	(136)^080h	;volatile
	line	73
	
l610:	
;Lastre_Toral_LE2-3.c: 73: initLCD();
	fcall	_initLCD
	line	74
	
l612:	
;Lastre_Toral_LE2-3.c: 74: instCtrl(0x80);
	movlw	(080h)
	fcall	_instCtrl
	line	75
	
l614:	
;Lastre_Toral_LE2-3.c: 75: instCtrl(0x01);
	movlw	(01h)
	fcall	_instCtrl
	line	76
	
l616:	
;Lastre_Toral_LE2-3.c: 76: int read= 0x00;
	clrf	(main@read)
	clrf	(main@read+1)
	line	77
	
l618:	
;Lastre_Toral_LE2-3.c: 77: int count = 0x00;
	clrf	(main@count)
	clrf	(main@count+1)
	goto	l620
	line	80
;Lastre_Toral_LE2-3.c: 80: while (1)
	
l42:	
	line	83
	
l620:	
;Lastre_Toral_LE2-3.c: 81: {
;Lastre_Toral_LE2-3.c: 83: if(RD4 == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(68/8),(68)&7	;volatile
	goto	u61
	goto	u60
u61:
	goto	l620
u60:
	line	86
	
l622:	
;Lastre_Toral_LE2-3.c: 84: {
;Lastre_Toral_LE2-3.c: 86: read = PORTD & 0x0F;
	movf	(8),w	;volatile
	andlw	0Fh
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(main@read)
	movf	1+(??_main+0)+0,w
	movwf	(main@read+1)
	line	87
	
l624:	
;Lastre_Toral_LE2-3.c: 87: if(count==20 )
	movlw	014h
	xorwf	(main@count),w
	iorwf	(main@count+1),w
	skipz
	goto	u71
	goto	u70
u71:
	goto	l628
u70:
	line	88
	
l626:	
;Lastre_Toral_LE2-3.c: 88: instCtrl(0xC0);
	movlw	(0C0h)
	fcall	_instCtrl
	goto	l692
	line	89
	
l44:	
	
l628:	
;Lastre_Toral_LE2-3.c: 89: else if(count==40)
	movlw	028h
	xorwf	(main@count),w
	iorwf	(main@count+1),w
	skipz
	goto	u81
	goto	u80
u81:
	goto	l632
u80:
	line	90
	
l630:	
;Lastre_Toral_LE2-3.c: 90: instCtrl(0x94);
	movlw	(094h)
	fcall	_instCtrl
	goto	l692
	line	91
	
l46:	
	
l632:	
;Lastre_Toral_LE2-3.c: 91: else if(count==60)
	movlw	03Ch
	xorwf	(main@count),w
	iorwf	(main@count+1),w
	skipz
	goto	u91
	goto	u90
u91:
	goto	l636
u90:
	line	92
	
l634:	
;Lastre_Toral_LE2-3.c: 92: instCtrl(0xD4);
	movlw	(0D4h)
	fcall	_instCtrl
	goto	l692
	line	93
	
l48:	
	
l636:	
;Lastre_Toral_LE2-3.c: 93: else if(count==80)
	movlw	050h
	xorwf	(main@count),w
	iorwf	(main@count+1),w
	skipz
	goto	u101
	goto	u100
u101:
	goto	l692
u100:
	line	95
	
l638:	
;Lastre_Toral_LE2-3.c: 94: {
;Lastre_Toral_LE2-3.c: 95: instCtrl(0x01);
	movlw	(01h)
	fcall	_instCtrl
	line	96
	
l640:	
;Lastre_Toral_LE2-3.c: 96: count=0;
	clrf	(main@count)
	clrf	(main@count+1)
	goto	l692
	line	97
	
l50:	
	goto	l692
	line	99
	
l49:	
	goto	l692
	
l47:	
	goto	l692
	
l45:	
;Lastre_Toral_LE2-3.c: 97: }
;Lastre_Toral_LE2-3.c: 99: switch(read)
	goto	l692
	line	101
;Lastre_Toral_LE2-3.c: 100: {
;Lastre_Toral_LE2-3.c: 101: case 0x00:
	
l52:	
	line	102
	
l642:	
;Lastre_Toral_LE2-3.c: 102: show("1"); count++; while(RD4 ==1);
	movlw	((STR_1)-__stringbase)&0ffh
	fcall	_show
	
l644:	
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	goto	l53
	
l54:	
	
l53:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(68/8),(68)&7	;volatile
	goto	u111
	goto	u110
u111:
	goto	l53
u110:
	goto	l620
	
l55:	
	line	103
;Lastre_Toral_LE2-3.c: 103: break;
	goto	l620
	line	104
;Lastre_Toral_LE2-3.c: 104: case 0x01:
	
l57:	
	line	105
	
l646:	
;Lastre_Toral_LE2-3.c: 105: show("2"); count++; while(RD4 ==1);
	movlw	((STR_2)-__stringbase)&0ffh
	fcall	_show
	
l648:	
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	goto	l58
	
l59:	
	
l58:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(68/8),(68)&7	;volatile
	goto	u121
	goto	u120
u121:
	goto	l58
u120:
	goto	l620
	
l60:	
	line	106
;Lastre_Toral_LE2-3.c: 106: break;
	goto	l620
	line	107
;Lastre_Toral_LE2-3.c: 107: case 0x02:
	
l61:	
	line	108
	
l650:	
;Lastre_Toral_LE2-3.c: 108: show("3"); count++; while(RD4 ==1);
	movlw	((STR_3)-__stringbase)&0ffh
	fcall	_show
	
l652:	
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	goto	l62
	
l63:	
	
l62:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(68/8),(68)&7	;volatile
	goto	u131
	goto	u130
u131:
	goto	l62
u130:
	goto	l620
	
l64:	
	line	109
;Lastre_Toral_LE2-3.c: 109: break;
	goto	l620
	line	110
;Lastre_Toral_LE2-3.c: 110: case 0x04:
	
l65:	
	line	111
	
l654:	
;Lastre_Toral_LE2-3.c: 111: show("4"); count++; while(RD4 ==1);
	movlw	((STR_4)-__stringbase)&0ffh
	fcall	_show
	
l656:	
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	goto	l66
	
l67:	
	
l66:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(68/8),(68)&7	;volatile
	goto	u141
	goto	u140
u141:
	goto	l66
u140:
	goto	l620
	
l68:	
	line	112
;Lastre_Toral_LE2-3.c: 112: break;
	goto	l620
	line	113
;Lastre_Toral_LE2-3.c: 113: case 0x05:
	
l69:	
	line	114
	
l658:	
;Lastre_Toral_LE2-3.c: 114: show("5"); count++; while(RD4 ==1);
	movlw	((STR_5)-__stringbase)&0ffh
	fcall	_show
	
l660:	
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	goto	l70
	
l71:	
	
l70:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(68/8),(68)&7	;volatile
	goto	u151
	goto	u150
u151:
	goto	l70
u150:
	goto	l620
	
l72:	
	line	115
;Lastre_Toral_LE2-3.c: 115: break;
	goto	l620
	line	116
;Lastre_Toral_LE2-3.c: 116: case 0x06:
	
l73:	
	line	117
	
l662:	
;Lastre_Toral_LE2-3.c: 117: show("6"); count++; while(RD4 ==1);
	movlw	((STR_6)-__stringbase)&0ffh
	fcall	_show
	
l664:	
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	goto	l74
	
l75:	
	
l74:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(68/8),(68)&7	;volatile
	goto	u161
	goto	u160
u161:
	goto	l74
u160:
	goto	l620
	
l76:	
	line	118
;Lastre_Toral_LE2-3.c: 118: break;
	goto	l620
	line	119
;Lastre_Toral_LE2-3.c: 119: case 0x08:
	
l77:	
	line	120
	
l666:	
;Lastre_Toral_LE2-3.c: 120: show("7"); count++; while(RD4 ==1);
	movlw	((STR_7)-__stringbase)&0ffh
	fcall	_show
	
l668:	
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	goto	l78
	
l79:	
	
l78:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(68/8),(68)&7	;volatile
	goto	u171
	goto	u170
u171:
	goto	l78
u170:
	goto	l620
	
l80:	
	line	121
;Lastre_Toral_LE2-3.c: 121: break;
	goto	l620
	line	122
;Lastre_Toral_LE2-3.c: 122: case 0x09:
	
l81:	
	line	123
	
l670:	
;Lastre_Toral_LE2-3.c: 123: show("8"); count++; while(RD4 ==1);
	movlw	((STR_8)-__stringbase)&0ffh
	fcall	_show
	
l672:	
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	goto	l82
	
l83:	
	
l82:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(68/8),(68)&7	;volatile
	goto	u181
	goto	u180
u181:
	goto	l82
u180:
	goto	l620
	
l84:	
	line	124
;Lastre_Toral_LE2-3.c: 124: break;
	goto	l620
	line	125
;Lastre_Toral_LE2-3.c: 125: case 0x0A:
	
l85:	
	line	126
	
l674:	
;Lastre_Toral_LE2-3.c: 126: show("9"); count++; while(RD4 ==1);
	movlw	((STR_9)-__stringbase)&0ffh
	fcall	_show
	
l676:	
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	goto	l86
	
l87:	
	
l86:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(68/8),(68)&7	;volatile
	goto	u191
	goto	u190
u191:
	goto	l86
u190:
	goto	l620
	
l88:	
	line	127
;Lastre_Toral_LE2-3.c: 127: break;
	goto	l620
	line	128
;Lastre_Toral_LE2-3.c: 128: case 0x0C:
	
l89:	
	line	129
	
l678:	
;Lastre_Toral_LE2-3.c: 129: show("*"); count++; while(RD4 ==1);
	movlw	((STR_10)-__stringbase)&0ffh
	fcall	_show
	
l680:	
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	goto	l90
	
l91:	
	
l90:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(68/8),(68)&7	;volatile
	goto	u201
	goto	u200
u201:
	goto	l90
u200:
	goto	l620
	
l92:	
	line	130
;Lastre_Toral_LE2-3.c: 130: break;
	goto	l620
	line	131
;Lastre_Toral_LE2-3.c: 131: case 0x0D:
	
l93:	
	line	132
	
l682:	
;Lastre_Toral_LE2-3.c: 132: show("0"); count++; while(RD4 ==1);
	movlw	((STR_11)-__stringbase)&0ffh
	fcall	_show
	
l684:	
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	goto	l94
	
l95:	
	
l94:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(68/8),(68)&7	;volatile
	goto	u211
	goto	u210
u211:
	goto	l94
u210:
	goto	l620
	
l96:	
	line	133
;Lastre_Toral_LE2-3.c: 133: break;
	goto	l620
	line	134
;Lastre_Toral_LE2-3.c: 134: case 0x0E:
	
l97:	
	line	135
	
l686:	
;Lastre_Toral_LE2-3.c: 135: show("#"); count++;while(RD4 ==1);
	movlw	((STR_12)-__stringbase)&0ffh
	fcall	_show
	
l688:	
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	goto	l98
	
l99:	
	
l98:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(68/8),(68)&7	;volatile
	goto	u221
	goto	u220
u221:
	goto	l98
u220:
	goto	l620
	
l100:	
	line	136
;Lastre_Toral_LE2-3.c: 136: break;
	goto	l620
	line	137
	
l690:	
;Lastre_Toral_LE2-3.c: 137: }
	goto	l620
	line	99
	
l51:	
	
l692:	
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           11     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (main@read+1),w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l730
	goto	l620
	opt asmopt_on
	
l730:	
; Switch size 1, requested type "space"
; Number of cases is 12, Range of values is 0 to 14
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           37    19 (average)
; direct_byte           53     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (main@read),w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l642
	xorlw	1^0	; case 1
	skipnz
	goto	l646
	xorlw	2^1	; case 2
	skipnz
	goto	l650
	xorlw	4^2	; case 4
	skipnz
	goto	l654
	xorlw	5^4	; case 5
	skipnz
	goto	l658
	xorlw	6^5	; case 6
	skipnz
	goto	l662
	xorlw	8^6	; case 8
	skipnz
	goto	l666
	xorlw	9^8	; case 9
	skipnz
	goto	l670
	xorlw	10^9	; case 10
	skipnz
	goto	l674
	xorlw	12^10	; case 12
	skipnz
	goto	l678
	xorlw	13^12	; case 13
	skipnz
	goto	l682
	xorlw	14^13	; case 14
	skipnz
	goto	l686
	goto	l620
	opt asmopt_on

	line	137
	
l56:	
	goto	l620
	line	138
	
l43:	
	goto	l620
	line	143
	
l101:	
	line	80
	goto	l620
	
l102:	
	line	146
	
l103:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_show

;; *************** function _show *****************
;; Defined at:
;;		line 59 in file "Z:\3201\LE2\Lastre_Toral_LE2-3.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> STR_12(2), STR_11(2), STR_10(2), STR_9(2), 
;;		 -> STR_8(2), STR_7(2), STR_6(2), STR_5(2), 
;;		 -> STR_4(2), STR_3(2), STR_2(2), STR_1(2), 
;; Auto vars:     Size  Location     Type
;;  s               1    2[COMMON] PTR const unsigned char 
;;		 -> STR_12(2), STR_11(2), STR_10(2), STR_9(2), 
;;		 -> STR_8(2), STR_7(2), STR_6(2), STR_5(2), 
;;		 -> STR_4(2), STR_3(2), STR_2(2), STR_1(2), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_dataCtrl
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	59
global __ptext1
__ptext1:	;psect for function _show
psect	text1
	file	"Z:\3201\LE2\Lastre_Toral_LE2-3.c"
	line	59
	global	__size_of_show
	__size_of_show	equ	__end_of_show-_show
	
_show:	
;incstack = 0
	opt	stack 6
; Regs used in _show: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;show@s stored from wreg
	movwf	(show@s)
	line	61
	
l598:	
;Lastre_Toral_LE2-3.c: 61: while(*s) {
	goto	l604
	
l37:	
	line	62
	
l600:	
;Lastre_Toral_LE2-3.c: 62: dataCtrl(*s++);
	movf	(show@s),w
	movwf	fsr0
	fcall	stringdir
	fcall	_dataCtrl
	
l602:	
	movlw	(01h)
	movwf	(??_show+0)+0
	movf	(??_show+0)+0,w
	addwf	(show@s),f
	goto	l604
	line	63
	
l36:	
	line	61
	
l604:	
	movf	(show@s),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u51
	goto	u50
u51:
	goto	l600
u50:
	goto	l39
	
l38:	
	line	64
	
l39:	
	return
	opt stack 0
GLOBAL	__end_of_show
	__end_of_show:
	signat	_show,4216
	global	_dataCtrl

;; *************** function _dataCtrl *****************
;; Defined at:
;;		line 50 in file "Z:\3201\LE2\Lastre_Toral_LE2-3.c"
;; Parameters:    Size  Location     Type
;;  b               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  b               1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_show
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	50
global __ptext2
__ptext2:	;psect for function _dataCtrl
psect	text2
	file	"Z:\3201\LE2\Lastre_Toral_LE2-3.c"
	line	50
	global	__size_of_dataCtrl
	__size_of_dataCtrl	equ	__end_of_dataCtrl-_dataCtrl
	
_dataCtrl:	
;incstack = 0
	opt	stack 6
; Regs used in _dataCtrl: [wreg+status,2+btemp+1]
;dataCtrl@b stored from wreg
	movwf	(dataCtrl@b)
	line	52
	
l578:	
;Lastre_Toral_LE2-3.c: 52: PORTB=b;
	movf	(dataCtrl@b),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	53
	
l580:	
;Lastre_Toral_LE2-3.c: 53: RC0=1;
	bsf	(56/8),(56)&7	;volatile
	line	54
	
l582:	
;Lastre_Toral_LE2-3.c: 54: RC2=0;
	bcf	(58/8),(58)&7	;volatile
	line	55
	
l584:	
;Lastre_Toral_LE2-3.c: 55: RC1=1;
	bsf	(57/8),(57)&7	;volatile
	line	56
	
l586:	
;Lastre_Toral_LE2-3.c: 56: for(j=0;j<100;j++);
	clrf	(_j)
	clrf	(_j+1)
	
l588:	
	movf	(_j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(064h))^80h
	subwf	btemp+1,w
	skipz
	goto	u35
	movlw	low(064h)
	subwf	(_j),w
u35:

	skipc
	goto	u31
	goto	u30
u31:
	goto	l592
u30:
	goto	l32
	
l590:	
	goto	l32
	
l31:	
	
l592:	
	movlw	low(01h)
	addwf	(_j),f
	skipnc
	incf	(_j+1),f
	movlw	high(01h)
	addwf	(_j+1),f
	
l594:	
	movf	(_j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(064h))^80h
	subwf	btemp+1,w
	skipz
	goto	u45
	movlw	low(064h)
	subwf	(_j),w
u45:

	skipc
	goto	u41
	goto	u40
u41:
	goto	l592
u40:
	
l32:	
	line	57
;Lastre_Toral_LE2-3.c: 57: RC1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7	;volatile
	line	58
	
l33:	
	return
	opt stack 0
GLOBAL	__end_of_dataCtrl
	__end_of_dataCtrl:
	signat	_dataCtrl,4216
	global	_initLCD

;; *************** function _initLCD *****************
;; Defined at:
;;		line 37 in file "Z:\3201\LE2\Lastre_Toral_LE2-3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_instCtrl
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	37
global __ptext3
__ptext3:	;psect for function _initLCD
psect	text3
	file	"Z:\3201\LE2\Lastre_Toral_LE2-3.c"
	line	37
	global	__size_of_initLCD
	__size_of_initLCD	equ	__end_of_initLCD-_initLCD
	
_initLCD:	
;incstack = 0
	opt	stack 6
; Regs used in _initLCD: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	39
	
l596:	
;Lastre_Toral_LE2-3.c: 39: instCtrl(0x38);
	movlw	(038h)
	fcall	_instCtrl
	line	40
;Lastre_Toral_LE2-3.c: 40: instCtrl(0x08);
	movlw	(08h)
	fcall	_instCtrl
	line	41
;Lastre_Toral_LE2-3.c: 41: instCtrl(0x01);
	movlw	(01h)
	fcall	_instCtrl
	line	42
;Lastre_Toral_LE2-3.c: 42: instCtrl(0x06);
	movlw	(06h)
	fcall	_instCtrl
	line	43
;Lastre_Toral_LE2-3.c: 43: instCtrl(0x0C);
	movlw	(0Ch)
	fcall	_instCtrl
	line	44
;Lastre_Toral_LE2-3.c: 44: instCtrl(0x06);
	movlw	(06h)
	fcall	_instCtrl
	line	45
;Lastre_Toral_LE2-3.c: 45: instCtrl(0x80);
	movlw	(080h)
	fcall	_instCtrl
	line	48
	
l28:	
	return
	opt stack 0
GLOBAL	__end_of_initLCD
	__end_of_initLCD:
	signat	_initLCD,88
	global	_instCtrl

;; *************** function _instCtrl *****************
;; Defined at:
;;		line 27 in file "Z:\3201\LE2\Lastre_Toral_LE2-3.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_initLCD
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	line	27
global __ptext4
__ptext4:	;psect for function _instCtrl
psect	text4
	file	"Z:\3201\LE2\Lastre_Toral_LE2-3.c"
	line	27
	global	__size_of_instCtrl
	__size_of_instCtrl	equ	__end_of_instCtrl-_instCtrl
	
_instCtrl:	
;incstack = 0
	opt	stack 7
; Regs used in _instCtrl: [wreg+status,2+btemp+1]
;instCtrl@data stored from wreg
	movwf	(instCtrl@data)
	line	29
	
l560:	
;Lastre_Toral_LE2-3.c: 29: PORTB= data;
	movf	(instCtrl@data),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	30
	
l562:	
;Lastre_Toral_LE2-3.c: 30: RC0=0;
	bcf	(56/8),(56)&7	;volatile
	line	31
	
l564:	
;Lastre_Toral_LE2-3.c: 31: RC2=0;
	bcf	(58/8),(58)&7	;volatile
	line	32
	
l566:	
;Lastre_Toral_LE2-3.c: 32: RC1=1;
	bsf	(57/8),(57)&7	;volatile
	line	33
	
l568:	
;Lastre_Toral_LE2-3.c: 33: for(j=0;j<100;j++);
	clrf	(_j)
	clrf	(_j+1)
	
l570:	
	movf	(_j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(064h))^80h
	subwf	btemp+1,w
	skipz
	goto	u15
	movlw	low(064h)
	subwf	(_j),w
u15:

	skipc
	goto	u11
	goto	u10
u11:
	goto	l574
u10:
	goto	l24
	
l572:	
	goto	l24
	
l23:	
	
l574:	
	movlw	low(01h)
	addwf	(_j),f
	skipnc
	incf	(_j+1),f
	movlw	high(01h)
	addwf	(_j+1),f
	
l576:	
	movf	(_j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(064h))^80h
	subwf	btemp+1,w
	skipz
	goto	u25
	movlw	low(064h)
	subwf	(_j),w
u25:

	skipc
	goto	u21
	goto	u20
u21:
	goto	l574
u20:
	
l24:	
	line	34
;Lastre_Toral_LE2-3.c: 34: RC1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7	;volatile
	line	35
	
l25:	
	return
	opt stack 0
GLOBAL	__end_of_instCtrl
	__end_of_instCtrl:
	signat	_instCtrl,4216
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
