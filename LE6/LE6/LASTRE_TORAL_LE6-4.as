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
	FNCALL	_main,_checkInput
	FNROOT	_main
	global	_PORTB
_PORTB	set	0x6
	global	_TXREG
_TXREG	set	0x19
	global	_RB4
_RB4	set	0x34
	global	_SPEN
_SPEN	set	0xC7
	global	_SPBRG
_SPBRG	set	0x99
	global	_TRISB
_TRISB	set	0x86
	global	_BRGH
_BRGH	set	0x4C2
	global	_SYNC
_SYNC	set	0x4C4
	global	_TRMT
_TRMT	set	0x4C1
	global	_TX9
_TX9	set	0x4C6
	global	_TXEN
_TXEN	set	0x4C5
psect	text0,local,class=CODE,delta=2,merge=1
; #config settings
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
	line	2761
global __ptext0
__ptext0:	;psect for function _checkInput
	file	"LASTRE_TORAL_LE6-4.as"
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
?_main:	; 0 bytes @ 0x0
	global	?_checkInput
?_checkInput:	; 2 bytes @ 0x0
	ds	2
??_checkInput:	; 0 bytes @ 0x2
	ds	2
	global	checkInput@data
checkInput@data:	; 2 bytes @ 0x4
	ds	2
	global	checkInput@output
checkInput@output:	; 2 bytes @ 0x6
	ds	2
??_main:	; 0 bytes @ 0x8
	global	main@i
main@i:	; 2 bytes @ 0x8
	ds	2
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
;!    COMMON           14     10      10
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
;!    _main->_checkInput
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
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 2     2      0      30
;!                                              8 COMMON     2     2      0
;!                         _checkInput
;! ---------------------------------------------------------------------------------
;! (1) _checkInput                                           8     6      2      30
;!                                              0 COMMON     8     6      2
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _checkInput
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      A       A       1       71.4%
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
;;		line 27 in file "Z:\3201\LE6\6-4\LASTRE_TORAL_LE6-4TX.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    8[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_checkInput
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"Z:\3201\LE6\6-4\LASTRE_TORAL_LE6-4TX.c"
	line	27
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"Z:\3201\LE6\6-4\LASTRE_TORAL_LE6-4TX.c"
	line	27
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 7
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	29
	
l542:	
;LASTRE_TORAL_LE6-4TX.c: 29: SPBRG = 0x19;
	movlw	(019h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	31
	
l544:	
;LASTRE_TORAL_LE6-4TX.c: 31: SYNC = 0;
	bcf	(1220/8)^080h,(1220)&7	;volatile
	line	32
	
l546:	
;LASTRE_TORAL_LE6-4TX.c: 32: SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(199/8),(199)&7	;volatile
	line	33
	
l548:	
;LASTRE_TORAL_LE6-4TX.c: 33: TX9 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1222/8)^080h,(1222)&7	;volatile
	line	34
	
l550:	
;LASTRE_TORAL_LE6-4TX.c: 34: BRGH = 1;
	bsf	(1218/8)^080h,(1218)&7	;volatile
	line	35
	
l552:	
;LASTRE_TORAL_LE6-4TX.c: 35: TXEN = 1;
	bsf	(1221/8)^080h,(1221)&7	;volatile
	line	36
;LASTRE_TORAL_LE6-4TX.c: 36: TRISB = 0xFF;
	movlw	(0FFh)
	movwf	(134)^080h	;volatile
	line	37
	
l554:	
;LASTRE_TORAL_LE6-4TX.c: 37: int i=0;
	clrf	(main@i)
	clrf	(main@i+1)
	goto	l556
	line	39
;LASTRE_TORAL_LE6-4TX.c: 38: for(;;)
	
l42:	
	line	40
	
l556:	
;LASTRE_TORAL_LE6-4TX.c: 39: {
;LASTRE_TORAL_LE6-4TX.c: 40: if(RB4==1) {
	bcf	status, 5	;RP0=0, select bank0
	btfss	(52/8),(52)&7	;volatile
	goto	u11
	goto	u10
u11:
	goto	l47
u10:
	goto	l44
	line	42
	
l558:	
;LASTRE_TORAL_LE6-4TX.c: 42: while(!TRMT);
	goto	l44
	
l45:	
	
l44:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1217/8)^080h,(1217)&7	;volatile
	goto	u21
	goto	u20
u21:
	goto	l44
u20:
	goto	l560
	
l46:	
	line	43
	
l560:	
;LASTRE_TORAL_LE6-4TX.c: 43: TXREG = checkInput();
	fcall	_checkInput
	movf	(0+(?_checkInput)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	goto	l47
	line	44
	
l43:	
;LASTRE_TORAL_LE6-4TX.c: 44: }while(RB4==1);
	goto	l47
	
l48:	
	
l47:	
	btfsc	(52/8),(52)&7	;volatile
	goto	u31
	goto	u30
u31:
	goto	l47
u30:
	goto	l556
	
l49:	
	line	45
;LASTRE_TORAL_LE6-4TX.c: 45: }
	goto	l556
	
l50:	
	line	46
	
l51:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_checkInput

;; *************** function _checkInput *****************
;; Defined at:
;;		line 3 in file "Z:\3201\LE6\6-4\LASTRE_TORAL_LE6-4TX.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  output          2    6[COMMON] unsigned int 
;;  data            2    4[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	3
global __ptext1
__ptext1:	;psect for function _checkInput
psect	text1
	file	"Z:\3201\LE6\6-4\LASTRE_TORAL_LE6-4TX.c"
	line	3
	global	__size_of_checkInput
	__size_of_checkInput	equ	__end_of_checkInput-_checkInput
	
_checkInput:	
;incstack = 0
	opt	stack 7
; Regs used in _checkInput: [wreg-fsr0h+status,2+status,0]
	line	6
	
l508:	
;LASTRE_TORAL_LE6-4TX.c: 5: unsigned int data, output;
;LASTRE_TORAL_LE6-4TX.c: 6: data = PORTB & 0x0F;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	andlw	0Fh
	movwf	(??_checkInput+0)+0
	clrf	(??_checkInput+0)+0+1
	movf	0+(??_checkInput+0)+0,w
	movwf	(checkInput@data)
	movf	1+(??_checkInput+0)+0,w
	movwf	(checkInput@data+1)
	line	8
;LASTRE_TORAL_LE6-4TX.c: 8: switch(data)
	goto	l532
	line	10
;LASTRE_TORAL_LE6-4TX.c: 9: {
;LASTRE_TORAL_LE6-4TX.c: 10: case 0x00: output=0x01; break;
	
l26:	
	
l510:	
	movlw	low(01h)
	movwf	(checkInput@output)
	movlw	high(01h)
	movwf	((checkInput@output))+1
	goto	l534
	line	11
;LASTRE_TORAL_LE6-4TX.c: 11: case 0x01: output=0x02; break;
	
l28:	
	
l512:	
	movlw	low(02h)
	movwf	(checkInput@output)
	movlw	high(02h)
	movwf	((checkInput@output))+1
	goto	l534
	line	12
;LASTRE_TORAL_LE6-4TX.c: 12: case 0x02: output=0x03; break;
	
l29:	
	
l514:	
	movlw	low(03h)
	movwf	(checkInput@output)
	movlw	high(03h)
	movwf	((checkInput@output))+1
	goto	l534
	line	13
;LASTRE_TORAL_LE6-4TX.c: 13: case 0x04: output=0x04; break;
	
l30:	
	
l516:	
	movlw	low(04h)
	movwf	(checkInput@output)
	movlw	high(04h)
	movwf	((checkInput@output))+1
	goto	l534
	line	14
;LASTRE_TORAL_LE6-4TX.c: 14: case 0x05: output=0x05; break;
	
l31:	
	
l518:	
	movlw	low(05h)
	movwf	(checkInput@output)
	movlw	high(05h)
	movwf	((checkInput@output))+1
	goto	l534
	line	15
;LASTRE_TORAL_LE6-4TX.c: 15: case 0x06: output=0x06; break;
	
l32:	
	
l520:	
	movlw	low(06h)
	movwf	(checkInput@output)
	movlw	high(06h)
	movwf	((checkInput@output))+1
	goto	l534
	line	16
;LASTRE_TORAL_LE6-4TX.c: 16: case 0x08: output=0x07; break;
	
l33:	
	
l522:	
	movlw	low(07h)
	movwf	(checkInput@output)
	movlw	high(07h)
	movwf	((checkInput@output))+1
	goto	l534
	line	17
;LASTRE_TORAL_LE6-4TX.c: 17: case 0x09: output=0x08; break;
	
l34:	
	
l524:	
	movlw	low(08h)
	movwf	(checkInput@output)
	movlw	high(08h)
	movwf	((checkInput@output))+1
	goto	l534
	line	18
;LASTRE_TORAL_LE6-4TX.c: 18: case 0x0A: output=0x09; break;
	
l35:	
	
l526:	
	movlw	low(09h)
	movwf	(checkInput@output)
	movlw	high(09h)
	movwf	((checkInput@output))+1
	goto	l534
	line	19
;LASTRE_TORAL_LE6-4TX.c: 19: case 0x0C: ; break;
	
l36:	
	goto	l534
	line	20
;LASTRE_TORAL_LE6-4TX.c: 20: case 0x0D: output=0x00; break;
	
l37:	
	
l528:	
	clrf	(checkInput@output)
	clrf	(checkInput@output+1)
	goto	l534
	line	21
;LASTRE_TORAL_LE6-4TX.c: 21: case 0x0E: ; break;
	
l38:	
	goto	l534
	line	23
	
l530:	
;LASTRE_TORAL_LE6-4TX.c: 23: }
	goto	l534
	line	8
	
l25:	
	
l532:	
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           11     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (checkInput@data+1),w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l582
	goto	l534
	opt asmopt_on
	
l582:	
; Switch size 1, requested type "space"
; Number of cases is 12, Range of values is 0 to 14
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           37    19 (average)
; direct_byte           53     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (checkInput@data),w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l510
	xorlw	1^0	; case 1
	skipnz
	goto	l512
	xorlw	2^1	; case 2
	skipnz
	goto	l514
	xorlw	4^2	; case 4
	skipnz
	goto	l516
	xorlw	5^4	; case 5
	skipnz
	goto	l518
	xorlw	6^5	; case 6
	skipnz
	goto	l520
	xorlw	8^6	; case 8
	skipnz
	goto	l522
	xorlw	9^8	; case 9
	skipnz
	goto	l524
	xorlw	10^9	; case 10
	skipnz
	goto	l526
	xorlw	12^10	; case 12
	skipnz
	goto	l534
	xorlw	13^12	; case 13
	skipnz
	goto	l528
	xorlw	14^13	; case 14
	skipnz
	goto	l534
	goto	l534
	opt asmopt_on

	line	23
	
l27:	
	line	24
	
l534:	
;LASTRE_TORAL_LE6-4TX.c: 24: return output;
	movf	(checkInput@output+1),w
	clrf	(?_checkInput+1)
	addwf	(?_checkInput+1)
	movf	(checkInput@output),w
	clrf	(?_checkInput)
	addwf	(?_checkInput)

	goto	l39
	
l536:	
	line	25
	
l39:	
	return
	opt stack 0
GLOBAL	__end_of_checkInput
	__end_of_checkInput:
	signat	_checkInput,90
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
