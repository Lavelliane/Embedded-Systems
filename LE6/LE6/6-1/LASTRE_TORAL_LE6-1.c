#include <xc.h>

void main(void)
{
 SPBRG = 0x19; // 9.6K baud rate @ FOSC=4MHz, asynchronous high speed
 // (see formula in Table 10-1)
 SYNC = 0; // asynchronous mode (TXSTA reg)
 SPEN = 1; // enable serial port (RCSTA reg)
 TX9 = 0; // 8-bit transmission (TXSTA reg)
 BRGH = 1; // asynchronous high-speed (TXSTA reg)
 TXEN = 1; // transmit enable (TXSTA reg)
 for(;;) // foreground routine
 {
 while(!TRMT); // wait until transmit shift register is empty
 TXREG = 'A'; // write data to be sent to TXREG
 }
} 