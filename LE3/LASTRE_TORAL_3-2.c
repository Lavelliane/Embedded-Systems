/* Main.c file generated by New Project wizard
 *
 * Created:   Tue Feb 21 2023
 * Processor: PIC16F877A
 * Compiler:  MPLAB XC8
 */

#include <xc.h>
#include <pic.h>
#include <stdlib.h>


#pragma config FOSC = XT 
#pragma config WDTE = OFF 
#pragma config PWRTE = ON 
#pragma config BOREN = ON 
#pragma config LVP = OFF 
#pragma config CPD = OFF 
#pragma config WRT = OFF 
#pragma config CP = OFF

#define _XTAL_FREQ 4M


int count_flag = 1;

void interrupt ISR() 
 { 
   GIE = 0; // disables all unmasked interrupts to prevent interrupt overlap 
    if (INTF) // check the interrupt flag 
    { 
    
    /* write the interrupt service routine here for RB0/INT external interrupt */ 
       int read;  
       read = PORTD & 0x0F;
	  
	 switch(read)
	 {
	     case 0x00:
		 PORTC=0x01;
		  break;
	       case 0x01:
		  PORTC=0x02;
		  break;
	       case 0x02:
		  PORTC=0x03;
		  break;
	       case 0x04:
		  PORTC=0x04;
		  break;
	        case 0x05:
		   PORTC=0x05;
		  break;
		 case 0x06:
		   PORTC=0x06;
		  break;
		  case 0x08:
		    PORTC=0x07;
		  break;
		  case 0x09:
		     PORTC=0x08;
		  break;
		  case 0x0A:
		    PORTC=0x09;
		  break;
		  case 0x0C:
		     PORTC=0x00;
		  break;
		  case 0x0D:
		     PORTC=0x00;
		  break;
		  case 0x0E:
		     PORTC=0x00;
		  break;
	 }
	
	 INTF = 0; // clears the interrupt flag 
       
       
    } 
    else if (TMR0IF)
    {
      
       count_flag = 1; // this is a global variable which will be in the main routine (toggle) 
        TMR0IF = 0; // clears the interrupt flag 
    }
    
   GIE = 1; // enable interrupts again 
 }

 void delay(int counter)
 {
      int of_count = 0;
    
      while(of_count < counter)
      {
	 if(count_flag)
	 {
	     of_count++;
	    count_flag=0;
	 }
      }
 }
 
void main(void)
 {
    GIE  = 1; //Enabling Global Interrupt
    INTE = 1; //Enabling RB0/INT interrupt
    INTF = 0; //Setting RB0/INT interrupt flag to 0
    OPTION_REG = 0x43; // PS2:PS0 - prescaler 1:16 
			              // PSA - prescaler assignment to TMR0 
                                      // T0CS - internal instruction cycle clock 
                                       // T0SE - not used since clock is internal 
    TMR0IE = 1; // enable Timer0 overflow interrupt 
    TMR0IF = 0; // clears the interrupt flag
    
    TRISA = 0x00;
    ADCON1 = 0x06;
    TRISB = 0x01;
    TRISC = 0x00;
    TRISD= 0xFF;
    PORTC = 0x05;
    

   // Write your code here
   while (1)
   {
	RA0= 1;
        delay(244);
	RA0=0;
        delay(244);
	 
   }  
   
 }