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
	global	main@F1098
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"Z:\3201\LE6\6-3\LASTRE_TORAL_6-3.c"
	line	38

;initializer for main@F1098
	retlw	059h
	retlw	06Fh
	retlw	075h
	retlw	020h
	retlw	050h
	retlw	072h
	retlw	065h
	retlw	073h
	retlw	073h
	retlw	065h
	retlw	064h
	retlw	020h
	retlw	020h
	retlw	02Eh
	retlw	0Dh
	retlw	0Ah
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
; #config settings
	file	"LASTRE_TORAL_LE6-3.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"Z:\3201\LE6\6-3\LASTRE_TORAL_6-3.c"
	line	38
main@F1098:
       ds      16

	file	"LASTRE_TORAL_LE6-3.as"
	line	#
global btemp
psect inittext,class=CODE,delta=2
global init_fetch0,btemp
;	Called with low address in FSR and high address in W
init_fetch0:
	movf btemp,w
	movwf pclath
	movf btemp+1,w
	movwf pc
global init_ram0
;Called with:
;	high address of idata address in btemp 
;	low address of idata address in btemp+1 
;	low address of data in FSR
;	high address + 1 of data in btemp-1
init_ram0:
	fcall init_fetch0
	movwf indf,f
	incf fsr,f
	movf fsr,w
	xorwf btemp-1,w
	btfsc status,2
	retlw 0
	incf btemp+1,f
	btfsc status,2
	incf btemp,f
	goto init_ram0
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
global init_ram0, __pidataBANK0
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK0+16)
	movwf btemp-1,f
	movlw high(__pidataBANK0)
	movwf btemp,f
	movlw low(__pidataBANK0)
	movwf btemp+1,f
	movlw low(__pdataBANK0)
	movwf fsr,f
	fcall init_ram0
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
??_checkInput:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_checkInput:	; 1 bytes @ 0x0
	ds	1
	global	checkInput@data
checkInput@data:	; 1 bytes @ 0x1
	ds	1
	global	checkInput@output
checkInput@output:	; 1 bytes @ 0x2
	ds	1
??_main:	; 0 bytes @ 0x3
	ds	4
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	main@data
main@data:	; 16 bytes @ 0x0
	ds	16
	global	main@i
main@i:	; 2 bytes @ 0x10
	ds	2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        16
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      7       7
;!    BANK0            80     18      34
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
;;Main: autosize = 0, tempsize = 4, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                22    22      0     174
;!                                              3 COMMON     4     4      0
;!                                              0 BANK0     18    18      0
;!                         _checkInput
;! ---------------------------------------------------------------------------------
;! (1) _checkInput                                           3     3      0      57
;!                                              0 COMMON     3     3      0
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
;!BANK3               60      0       0       9        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!BANK2               60      0       0      11        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50     12      22       5       42.5%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      7       7       1       50.0%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      29      12        0.0%
;!ABS                  0      0      29       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 27 in file "Z:\3201\LE6\6-3\LASTRE_TORAL_6-3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  data           16    0[BANK0 ] unsigned char [16]
;;  i               2   16[BANK0 ] int 
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
;;      Locals:         0      18       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4      18       0       0       0
;;Total ram usage:       22 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_checkInput
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"Z:\3201\LE6\6-3\LASTRE_TORAL_6-3.c"
	line	27
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"Z:\3201\LE6\6-3\LASTRE_TORAL_6-3.c"
	line	27
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 7
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	29
	
l612:	
;LASTRE_TORAL_6-3.c: 29: SPBRG = 0x19;
	movlw	(019h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	31
	
l614:	
;LASTRE_TORAL_6-3.c: 31: SYNC = 0;
	bcf	(1220/8)^080h,(1220)&7	;volatile
	line	32
	
l616:	
;LASTRE_TORAL_6-3.c: 32: SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(199/8),(199)&7	;volatile
	line	33
	
l618:	
;LASTRE_TORAL_6-3.c: 33: TX9 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1222/8)^080h,(1222)&7	;volatile
	line	34
	
l620:	
;LASTRE_TORAL_6-3.c: 34: BRGH = 1;
	bsf	(1218/8)^080h,(1218)&7	;volatile
	line	35
	
l622:	
;LASTRE_TORAL_6-3.c: 35: TXEN = 1;
	bsf	(1221/8)^080h,(1221)&7	;volatile
	line	37
;LASTRE_TORAL_6-3.c: 37: TRISB = 0xFF;
	movlw	(0FFh)
	movwf	(134)^080h	;volatile
	line	38
	
l624:	
;LASTRE_TORAL_6-3.c: 38: int i = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@i)
	clrf	(main@i+1)
	line	39
	
l626:	
;LASTRE_TORAL_6-3.c: 39: unsigned char data[16] = {'Y','o','u',' ','P','r','e','s','s','e','d',' ',' ','.','\r','\n'};
	movlw	(main@data)&0ffh
	movwf	fsr0
	movlw	low(main@F1098)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	16
	movwf	((??_main+0)+0+2)
u70:
	movf	(??_main+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	
	movf	indf,w
	movwf	((??_main+0)+0+3)
	incf	(??_main+0)+0,f
	movf	((??_main+0)+0+1),w
	movwf	fsr0
	
	movf	((??_main+0)+0+3),w
	movwf	indf
	incf	((??_main+0)+0+1),f
	decfsz	((??_main+0)+0+2),f
	goto	u70
	goto	l628
	line	41
;LASTRE_TORAL_6-3.c: 40: for(;;)
	
l44:	
	line	42
	
l628:	
;LASTRE_TORAL_6-3.c: 41: {
;LASTRE_TORAL_6-3.c: 42: if(RB4==1) {
	btfss	(52/8),(52)&7	;volatile
	goto	u81
	goto	u80
u81:
	goto	l628
u80:
	line	43
	
l630:	
;LASTRE_TORAL_6-3.c: 43: data[12] = checkInput();
	fcall	_checkInput
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(main@data)+0Ch
	line	44
	
l632:	
;LASTRE_TORAL_6-3.c: 44: for(i=0;i<16;i++) {
	clrf	(main@i)
	clrf	(main@i+1)
	
l634:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(010h))^80h
	subwf	btemp+1,w
	skipz
	goto	u95
	movlw	low(010h)
	subwf	(main@i),w
u95:

	skipc
	goto	u91
	goto	u90
u91:
	goto	l48
u90:
	goto	l51
	
l636:	
	goto	l51
	
l46:	
	line	45
;LASTRE_TORAL_6-3.c: 45: while(!TRMT);
	goto	l48
	
l49:	
	
l48:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1217/8)^080h,(1217)&7	;volatile
	goto	u101
	goto	u100
u101:
	goto	l48
u100:
	goto	l638
	
l50:	
	line	46
	
l638:	
;LASTRE_TORAL_6-3.c: 46: TXREG = data[i];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	addlw	main@data&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(25)	;volatile
	line	44
	
l640:	
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	
l642:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(010h))^80h
	subwf	btemp+1,w
	skipz
	goto	u115
	movlw	low(010h)
	subwf	(main@i),w
u115:

	skipc
	goto	u111
	goto	u110
u111:
	goto	l48
u110:
	goto	l51
	
l47:	
	line	48
;LASTRE_TORAL_6-3.c: 47: }
;LASTRE_TORAL_6-3.c: 48: while(RB4==1);
	goto	l51
	
l52:	
	
l51:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(52/8),(52)&7	;volatile
	goto	u121
	goto	u120
u121:
	goto	l51
u120:
	goto	l628
	
l53:	
	goto	l628
	line	49
	
l45:	
	line	50
;LASTRE_TORAL_6-3.c: 49: }
;LASTRE_TORAL_6-3.c: 50: }
	goto	l628
	
l54:	
	line	51
	
l55:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_checkInput

;; *************** function _checkInput *****************
;; Defined at:
;;		line 3 in file "Z:\3201\LE6\6-3\LASTRE_TORAL_6-3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  output          1    2[COMMON] unsigned char 
;;  data            1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
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
	file	"Z:\3201\LE6\6-3\LASTRE_TORAL_6-3.c"
	line	3
	global	__size_of_checkInput
	__size_of_checkInput	equ	__end_of_checkInput-_checkInput
	
_checkInput:	
;incstack = 0
	opt	stack 7
; Regs used in _checkInput: [wreg-fsr0h+status,2+status,0]
	line	5
	
l578:	
;LASTRE_TORAL_6-3.c: 4: unsigned char data, output;
;LASTRE_TORAL_6-3.c: 5: data = PORTB & 0x0F;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	andlw	0Fh
	movwf	(??_checkInput+0)+0
	movf	(??_checkInput+0)+0,w
	movwf	(checkInput@data)
	line	7
;LASTRE_TORAL_6-3.c: 7: switch(data)
	goto	l606
	line	9
;LASTRE_TORAL_6-3.c: 8: {
;LASTRE_TORAL_6-3.c: 9: case 0x00: output='1'; break;
	
l26:	
	
l580:	
	movlw	(031h)
	movwf	(??_checkInput+0)+0
	movf	(??_checkInput+0)+0,w
	movwf	(checkInput@output)
	goto	l608
	line	10
;LASTRE_TORAL_6-3.c: 10: case 0x01: output='2'; break;
	
l28:	
	
l582:	
	movlw	(032h)
	movwf	(??_checkInput+0)+0
	movf	(??_checkInput+0)+0,w
	movwf	(checkInput@output)
	goto	l608
	line	11
;LASTRE_TORAL_6-3.c: 11: case 0x02: output='3'; break;
	
l29:	
	
l584:	
	movlw	(033h)
	movwf	(??_checkInput+0)+0
	movf	(??_checkInput+0)+0,w
	movwf	(checkInput@output)
	goto	l608
	line	12
;LASTRE_TORAL_6-3.c: 12: case 0x04: output='4'; break;
	
l30:	
	
l586:	
	movlw	(034h)
	movwf	(??_checkInput+0)+0
	movf	(??_checkInput+0)+0,w
	movwf	(checkInput@output)
	goto	l608
	line	13
;LASTRE_TORAL_6-3.c: 13: case 0x05: output='5'; break;
	
l31:	
	
l588:	
	movlw	(035h)
	movwf	(??_checkInput+0)+0
	movf	(??_checkInput+0)+0,w
	movwf	(checkInput@output)
	goto	l608
	line	14
;LASTRE_TORAL_6-3.c: 14: case 0x06: output='6'; break;
	
l32:	
	
l590:	
	movlw	(036h)
	movwf	(??_checkInput+0)+0
	movf	(??_checkInput+0)+0,w
	movwf	(checkInput@output)
	goto	l608
	line	15
;LASTRE_TORAL_6-3.c: 15: case 0x08: output='7'; break;
	
l33:	
	
l592:	
	movlw	(037h)
	movwf	(??_checkInput+0)+0
	movf	(??_checkInput+0)+0,w
	movwf	(checkInput@output)
	goto	l608
	line	16
;LASTRE_TORAL_6-3.c: 16: case 0x09: output='8'; break;
	
l34:	
	
l594:	
	movlw	(038h)
	movwf	(??_checkInput+0)+0
	movf	(??_checkInput+0)+0,w
	movwf	(checkInput@output)
	goto	l608
	line	17
;LASTRE_TORAL_6-3.c: 17: case 0x0A: output='9'; break;
	
l35:	
	
l596:	
	movlw	(039h)
	movwf	(??_checkInput+0)+0
	movf	(??_checkInput+0)+0,w
	movwf	(checkInput@output)
	goto	l608
	line	18
;LASTRE_TORAL_6-3.c: 18: case 0x0C: output='*'; break;
	
l36:	
	
l598:	
	movlw	(02Ah)
	movwf	(??_checkInput+0)+0
	movf	(??_checkInput+0)+0,w
	movwf	(checkInput@output)
	goto	l608
	line	19
;LASTRE_TORAL_6-3.c: 19: case 0x0D: output='0'; break;
	
l37:	
	
l600:	
	movlw	(030h)
	movwf	(??_checkInput+0)+0
	movf	(??_checkInput+0)+0,w
	movwf	(checkInput@output)
	goto	l608
	line	20
;LASTRE_TORAL_6-3.c: 20: case 0x0E: output='#'; break;
	
l38:	
	
l602:	
	movlw	(023h)
	movwf	(??_checkInput+0)+0
	movf	(??_checkInput+0)+0,w
	movwf	(checkInput@output)
	goto	l608
	line	22
	
l604:	
;LASTRE_TORAL_6-3.c: 22: }
	goto	l608
	line	7
	
l25:	
	
l606:	
	movf	(checkInput@data),w
	; Switch size 1, requested type "space"
; Number of cases is 12, Range of values is 0 to 14
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           37    19 (average)
; direct_byte           53     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l580
	xorlw	1^0	; case 1
	skipnz
	goto	l582
	xorlw	2^1	; case 2
	skipnz
	goto	l584
	xorlw	4^2	; case 4
	skipnz
	goto	l586
	xorlw	5^4	; case 5
	skipnz
	goto	l588
	xorlw	6^5	; case 6
	skipnz
	goto	l590
	xorlw	8^6	; case 8
	skipnz
	goto	l592
	xorlw	9^8	; case 9
	skipnz
	goto	l594
	xorlw	10^9	; case 10
	skipnz
	goto	l596
	xorlw	12^10	; case 12
	skipnz
	goto	l598
	xorlw	13^12	; case 13
	skipnz
	goto	l600
	xorlw	14^13	; case 14
	skipnz
	goto	l602
	goto	l608
	opt asmopt_on

	line	22
	
l27:	
	line	24
	
l608:	
;LASTRE_TORAL_6-3.c: 24: return output;
	movf	(checkInput@output),w
	goto	l39
	
l610:	
	line	25
	
l39:	
	return
	opt stack 0
GLOBAL	__end_of_checkInput
	__end_of_checkInput:
	signat	_checkInput,89
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
