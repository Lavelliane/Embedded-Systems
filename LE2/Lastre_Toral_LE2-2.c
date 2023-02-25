#include <xc.h>

#define _XTAL_FREQ 4M
#define RS RC0
#define EN RC1
#define RW RC2
#define delay for(j=0;j<100;j++)

#pragma config FOSC = XT 
#pragma config WDTE = OFF 
#pragma config PWRTE = ON 
#pragma config BOREN = ON 
#pragma config LVP = OFF 
#pragma config CPD = OFF 
#pragma config WRT = OFF 
#pragma config CP = OFF

int j;

void main(void)
 {
    ADCON1 = 0x06; //turn off
    CMCON = 0x07; // turn off
    TRISA = 0x00;
    TRISD = 0XFF;
    int read;
     PORTA=0x00;
   
     while(1)
     {
	if(RD4 == 1)
      {
	 
	  read = PORTD & 0x0F;
	  
	 switch(read)
	 {
	     case 0x00:
		 PORTA=0x01;while(RD4 ==1);
		  break;
	       case 0x01:
		  PORTA=0x02;
		  while(RD4 ==1);
		  break;
	       case 0x02:
		  PORTA=0x03;
		  while(RD4 ==1);
		  break;
	       case 0x04:
		  PORTA=0x04;
		  while(RD4 ==1);
		  break;
	        case 0x05:
		   PORTA=0x05;
		  while(RD4 ==1);
		  break;
		 case 0x06:
		    PORTA=0x06;
		  while(RD4 ==1);
		  break;
		  case 0x08:
		     PORTA=0x07;
		  while(RD4 ==1);
		  break;
		  case 0x09:
		     PORTA=0x08;
		  while(RD4 ==1);
		  break;
		  case 0x0A:
		     PORTA=0x09;
		  while(RD4 ==1);
		  break;
		  case 0x0C:
		     PORTA=0xFF;
		  while(RD4 ==1);
		  break;
		  case 0x0D:
		     PORTA=0x00;
		  while(RD4 ==1);
		  break;
		  case 0x0E:
		   PORTA=0xFF;
		  while(RD4 ==1);
		  break;
	 }

 
 }
     }
     
  }   

 