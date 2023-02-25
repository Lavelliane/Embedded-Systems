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
	global	_j
	global	_PORTA
_PORTA	set	0x5
	global	_PORTD
_PORTD	set	0x8
	global	_RD4
_RD4	set	0x44
	global	_ADCON1
_ADCON1	set	0x9F
	global	_CMCON
_CMCON	set	0x9C
	global	_TRISA
_TRISA	set	0x85
	global	_TRISD
_TRISD	set	0x88
psect	maintext,global,class=CODE,delta=2,split=1
; #config settings
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
	line	2761
global __pmaintext
__pmaintext:	;psect for function _main
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
	file	"Lastre_Toral_LE2-2.as"
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
?_main:	; 0 bytes @ 0x0
??_main:	; 0 bytes @ 0x0
	ds	2
	global	main@read
main@read:	; 2 bytes @ 0x2
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
;!    COMMON           14      4       6
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
;! (0) _main                                                 4     4      0      15
;!                                              0 COMMON     4     4      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 0
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      4       6       1       42.9%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0       6       3        0.0%
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
;!DATA                 0      0       6      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 20 in file "Z:\3201\LE2\Lastre_Toral_LE2-2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  read            2    2[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
psect	maintext
	file	"Z:\3201\LE2\Lastre_Toral_LE2-2.c"
	line	20
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 8
; Regs used in _main: [wreg-fsr0h+status,2+status,0]
	line	22
	
l530:	
;Lastre_Toral_LE2-2.c: 22: ADCON1 = 0x06;
	movlw	(06h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	23
;Lastre_Toral_LE2-2.c: 23: CMCON = 0x07;
	movlw	(07h)
	movwf	(156)^080h	;volatile
	line	24
	
l532:	
;Lastre_Toral_LE2-2.c: 24: TRISA = 0x00;
	clrf	(133)^080h	;volatile
	line	25
	
l534:	
;Lastre_Toral_LE2-2.c: 25: TRISD = 0XFF;
	movlw	(0FFh)
	movwf	(136)^080h	;volatile
	line	27
;Lastre_Toral_LE2-2.c: 26: int read;
;Lastre_Toral_LE2-2.c: 27: PORTA=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	goto	l536
	line	29
;Lastre_Toral_LE2-2.c: 29: while(1)
	
l19:	
	line	31
	
l536:	
;Lastre_Toral_LE2-2.c: 30: {
;Lastre_Toral_LE2-2.c: 31: if(RD4 == 1)
	btfss	(68/8),(68)&7	;volatile
	goto	u11
	goto	u10
u11:
	goto	l536
u10:
	line	34
	
l538:	
;Lastre_Toral_LE2-2.c: 32: {
;Lastre_Toral_LE2-2.c: 34: read = PORTD & 0x0F;
	movf	(8),w	;volatile
	andlw	0Fh
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(main@read)
	movf	1+(??_main+0)+0,w
	movwf	(main@read+1)
	line	36
;Lastre_Toral_LE2-2.c: 36: switch(read)
	goto	l566
	line	38
;Lastre_Toral_LE2-2.c: 37: {
;Lastre_Toral_LE2-2.c: 38: case 0x00:
	
l22:	
	line	39
	
l540:	
;Lastre_Toral_LE2-2.c: 39: PORTA=0x01;while(RD4 ==1);
	movlw	(01h)
	movwf	(5)	;volatile
	goto	l23
	
l24:	
	
l23:	
	btfsc	(68/8),(68)&7	;volatile
	goto	u21
	goto	u20
u21:
	goto	l23
u20:
	goto	l536
	
l25:	
	line	40
;Lastre_Toral_LE2-2.c: 40: break;
	goto	l536
	line	41
;Lastre_Toral_LE2-2.c: 41: case 0x01:
	
l27:	
	line	42
	
l542:	
;Lastre_Toral_LE2-2.c: 42: PORTA=0x02;
	movlw	(02h)
	movwf	(5)	;volatile
	line	43
;Lastre_Toral_LE2-2.c: 43: while(RD4 ==1);
	goto	l28
	
l29:	
	
l28:	
	btfsc	(68/8),(68)&7	;volatile
	goto	u31
	goto	u30
u31:
	goto	l28
u30:
	goto	l536
	
l30:	
	line	44
;Lastre_Toral_LE2-2.c: 44: break;
	goto	l536
	line	45
;Lastre_Toral_LE2-2.c: 45: case 0x02:
	
l31:	
	line	46
	
l544:	
;Lastre_Toral_LE2-2.c: 46: PORTA=0x03;
	movlw	(03h)
	movwf	(5)	;volatile
	line	47
;Lastre_Toral_LE2-2.c: 47: while(RD4 ==1);
	goto	l32
	
l33:	
	
l32:	
	btfsc	(68/8),(68)&7	;volatile
	goto	u41
	goto	u40
u41:
	goto	l32
u40:
	goto	l536
	
l34:	
	line	48
;Lastre_Toral_LE2-2.c: 48: break;
	goto	l536
	line	49
;Lastre_Toral_LE2-2.c: 49: case 0x04:
	
l35:	
	line	50
	
l546:	
;Lastre_Toral_LE2-2.c: 50: PORTA=0x04;
	movlw	(04h)
	movwf	(5)	;volatile
	line	51
;Lastre_Toral_LE2-2.c: 51: while(RD4 ==1);
	goto	l36
	
l37:	
	
l36:	
	btfsc	(68/8),(68)&7	;volatile
	goto	u51
	goto	u50
u51:
	goto	l36
u50:
	goto	l536
	
l38:	
	line	52
;Lastre_Toral_LE2-2.c: 52: break;
	goto	l536
	line	53
;Lastre_Toral_LE2-2.c: 53: case 0x05:
	
l39:	
	line	54
	
l548:	
;Lastre_Toral_LE2-2.c: 54: PORTA=0x05;
	movlw	(05h)
	movwf	(5)	;volatile
	line	55
;Lastre_Toral_LE2-2.c: 55: while(RD4 ==1);
	goto	l40
	
l41:	
	
l40:	
	btfsc	(68/8),(68)&7	;volatile
	goto	u61
	goto	u60
u61:
	goto	l40
u60:
	goto	l536
	
l42:	
	line	56
;Lastre_Toral_LE2-2.c: 56: break;
	goto	l536
	line	57
;Lastre_Toral_LE2-2.c: 57: case 0x06:
	
l43:	
	line	58
	
l550:	
;Lastre_Toral_LE2-2.c: 58: PORTA=0x06;
	movlw	(06h)
	movwf	(5)	;volatile
	line	59
;Lastre_Toral_LE2-2.c: 59: while(RD4 ==1);
	goto	l44
	
l45:	
	
l44:	
	btfsc	(68/8),(68)&7	;volatile
	goto	u71
	goto	u70
u71:
	goto	l44
u70:
	goto	l536
	
l46:	
	line	60
;Lastre_Toral_LE2-2.c: 60: break;
	goto	l536
	line	61
;Lastre_Toral_LE2-2.c: 61: case 0x08:
	
l47:	
	line	62
	
l552:	
;Lastre_Toral_LE2-2.c: 62: PORTA=0x07;
	movlw	(07h)
	movwf	(5)	;volatile
	line	63
;Lastre_Toral_LE2-2.c: 63: while(RD4 ==1);
	goto	l48
	
l49:	
	
l48:	
	btfsc	(68/8),(68)&7	;volatile
	goto	u81
	goto	u80
u81:
	goto	l48
u80:
	goto	l536
	
l50:	
	line	64
;Lastre_Toral_LE2-2.c: 64: break;
	goto	l536
	line	65
;Lastre_Toral_LE2-2.c: 65: case 0x09:
	
l51:	
	line	66
	
l554:	
;Lastre_Toral_LE2-2.c: 66: PORTA=0x08;
	movlw	(08h)
	movwf	(5)	;volatile
	line	67
;Lastre_Toral_LE2-2.c: 67: while(RD4 ==1);
	goto	l52
	
l53:	
	
l52:	
	btfsc	(68/8),(68)&7	;volatile
	goto	u91
	goto	u90
u91:
	goto	l52
u90:
	goto	l536
	
l54:	
	line	68
;Lastre_Toral_LE2-2.c: 68: break;
	goto	l536
	line	69
;Lastre_Toral_LE2-2.c: 69: case 0x0A:
	
l55:	
	line	70
	
l556:	
;Lastre_Toral_LE2-2.c: 70: PORTA=0x09;
	movlw	(09h)
	movwf	(5)	;volatile
	line	71
;Lastre_Toral_LE2-2.c: 71: while(RD4 ==1);
	goto	l56
	
l57:	
	
l56:	
	btfsc	(68/8),(68)&7	;volatile
	goto	u101
	goto	u100
u101:
	goto	l56
u100:
	goto	l536
	
l58:	
	line	72
;Lastre_Toral_LE2-2.c: 72: break;
	goto	l536
	line	73
;Lastre_Toral_LE2-2.c: 73: case 0x0C:
	
l59:	
	line	74
	
l558:	
;Lastre_Toral_LE2-2.c: 74: PORTA=0xFF;
	movlw	(0FFh)
	movwf	(5)	;volatile
	line	75
;Lastre_Toral_LE2-2.c: 75: while(RD4 ==1);
	goto	l60
	
l61:	
	
l60:	
	btfsc	(68/8),(68)&7	;volatile
	goto	u111
	goto	u110
u111:
	goto	l60
u110:
	goto	l536
	
l62:	
	line	76
;Lastre_Toral_LE2-2.c: 76: break;
	goto	l536
	line	77
;Lastre_Toral_LE2-2.c: 77: case 0x0D:
	
l63:	
	line	78
	
l560:	
;Lastre_Toral_LE2-2.c: 78: PORTA=0x00;
	clrf	(5)	;volatile
	line	79
;Lastre_Toral_LE2-2.c: 79: while(RD4 ==1);
	goto	l64
	
l65:	
	
l64:	
	btfsc	(68/8),(68)&7	;volatile
	goto	u121
	goto	u120
u121:
	goto	l64
u120:
	goto	l536
	
l66:	
	line	80
;Lastre_Toral_LE2-2.c: 80: break;
	goto	l536
	line	81
;Lastre_Toral_LE2-2.c: 81: case 0x0E:
	
l67:	
	line	82
	
l562:	
;Lastre_Toral_LE2-2.c: 82: PORTA=0xFF;
	movlw	(0FFh)
	movwf	(5)	;volatile
	line	83
;Lastre_Toral_LE2-2.c: 83: while(RD4 ==1);
	goto	l68
	
l69:	
	
l68:	
	btfsc	(68/8),(68)&7	;volatile
	goto	u131
	goto	u130
u131:
	goto	l68
u130:
	goto	l536
	
l70:	
	line	84
;Lastre_Toral_LE2-2.c: 84: break;
	goto	l536
	line	85
	
l564:	
;Lastre_Toral_LE2-2.c: 85: }
	goto	l536
	line	36
	
l21:	
	
l566:	
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
	goto	l604
	goto	l536
	opt asmopt_on
	
l604:	
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
	goto	l540
	xorlw	1^0	; case 1
	skipnz
	goto	l542
	xorlw	2^1	; case 2
	skipnz
	goto	l544
	xorlw	4^2	; case 4
	skipnz
	goto	l546
	xorlw	5^4	; case 5
	skipnz
	goto	l548
	xorlw	6^5	; case 6
	skipnz
	goto	l550
	xorlw	8^6	; case 8
	skipnz
	goto	l552
	xorlw	9^8	; case 9
	skipnz
	goto	l554
	xorlw	10^9	; case 10
	skipnz
	goto	l556
	xorlw	12^10	; case 12
	skipnz
	goto	l558
	xorlw	13^12	; case 13
	skipnz
	goto	l560
	xorlw	14^13	; case 14
	skipnz
	goto	l562
	goto	l536
	opt asmopt_on

	line	85
	
l26:	
	goto	l536
	line	88
	
l20:	
	goto	l536
	line	89
	
l71:	
	line	29
	goto	l536
	
l72:	
	line	91
	
l73:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
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
