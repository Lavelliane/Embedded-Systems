#include <xc.h>

 char checkInput(void) {        // function to check input
    unsigned char data, output;
    data = PORTB & 0x0F; // mask input
    
       switch(data)
     {
         case 0x00: output='1'; break;
         case 0x01: output='2'; break;
         case 0x02: output='3'; break;
         case 0x04: output='4'; break;
         case 0x05: output='5'; break;
         case 0x06: output='6'; break;
         case 0x08: output='7'; break;
         case 0x09: output='8'; break;
         case 0x0A: output='9'; break;
         case 0x0C: output='*'; break;
         case 0x0D: output='0'; break;
         case 0x0E: output='#'; break;

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
    int i = 0;
    unsigned char data[16] = {'Y','o','u',' ','P','r','e','s','s','e','d',' ',' ','.','\r','\n'}; // array to store phrase
    for(;;) // foreground routine 
    { 
        if(RB4==1) {                // check if button is pressed
            data[12] = checkInput();
            for(i=0;i<16;i++) {        // loop for all characters in the array
                while(!TRMT);         // wait until transmit shift register is empty 
                TXREG = data[i];     // write data to be sent to TXREG 
            }
            while(RB4==1); // wait until RB4==0
        }
    } 
}