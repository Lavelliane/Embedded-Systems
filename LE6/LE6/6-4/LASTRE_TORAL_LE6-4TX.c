#include <xc.h>

 int checkInput(void) {        
  // function to check input
    unsigned int data, output;
    data = PORTB & 0x0F; // mask input
    
       switch(data)
     {
         case 0x00: output=0x01; break;
         case 0x01: output=0x02; break;
         case 0x02: output=0x03; break;
         case 0x04: output=0x04; break;
         case 0x05: output=0x05; break;
         case 0x06: output=0x06; break;
         case 0x08: output=0x07; break;
         case 0x09: output=0x08; break;
         case 0x0A: output=0x09; break;
		 case 0x0C: ; break;
         case 0x0D: output=0x00; break;
		 case 0x0E: ; break;

     }
    return output;
}

void main(void) 
{ 
    SPBRG = 0x19; // 9.6K baud rate @ FOSC=4MHz, asynchronous high speed 
    // (see formula in Table 10-1) 
    SYNC = 0; // asynchronous mode (TXSTA reg) 
    SPEN = 1; // enable serial port (RCSTA reg) 
    TX9 = 0; // 8-bit transmission (TXSTA reg) 
    BRGH = 1; // asynchronous high-speed (TXSTA reg) 
    TXEN = 1; // transmit enable (TXSTA reg) 
    TRISB = 0xFF;    // sets PORTB as input
	int i=0;
    for(;;) // foreground routine 
    { 
        if(RB4==1) {                // check if button is pressed
            // loop for all characters in the array
            while(!TRMT);         // wait until transmit shift register is empty 
            TXREG = checkInput();     // write data to be sent to TXREG 
        }while(RB4==1); // wait until RB4==0
     }
    } 
