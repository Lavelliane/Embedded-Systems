#include <xc.h>

#define _XTAL_FREQ 4M


#pragma config FOSC = XT 
#pragma config WDTE = OFF 
#pragma config PWRTE = ON 
#pragma config BOREN = ON 
#pragma config LVP = OFF 
#pragma config CPD = OFF 
#pragma config WRT = OFF 
#pragma config CP = OFF

#define button RA0
void main(void)
 {
    
    int cnt;
    ADCON1 = 0x06; //turn off
    CMCON = 0x07; // turn off
    TRISA = 0x01;
    TRISB = 0x00; //0000 0000
    PORTB = 0x00;
	
   // Write your code here
	while(1)
	{
		if(button == 1)
		{
			for(int i = 0 ; i < 3; i++) 
			     { 
				 for(cnt=0;cnt<10000;cnt++); // delay 
				 RB0 = 0x01;    // set RB0 to 1 (LED ON) 
				 for(cnt=0;cnt<10000;cnt++); // delay 
				 RB0 = 0x00;    // set RB0 to 0 (LED OFF) 
			     } 
		    
		}
	}

    

		
		
	


  
 }
 
