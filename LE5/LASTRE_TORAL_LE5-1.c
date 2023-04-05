/* Main.c file generated by New Project wizard
 *
 * Created:   Fri Mar 10 2023
 * Processor: PIC16F877A
 * Compiler:  MPLAB XC8
 */

#include<xc.h> // include file for the XC8 compiler 


#define _XTAL_FREQ 4M   
#define delayLoop for(j=0;j<100;j++)

#pragma config FOSC = XT 
#pragma config WDTE = OFF 
#pragma config PWRTE = ON 
#pragma config BOREN = ON 
#pragma config LVP = OFF 
#pragma config CPD = OFF 
#pragma config WRT = OFF 
#pragma config CP = OFF


void delay(int cnt) 
{ 
 while(cnt--); 
} 

int readADC(void) 
{ 
   int temp = 0;
    temp = ADRESH; // read ADRESH 
    temp = temp << 8; // move to correct position 
    temp = temp | ADRESL; // read ADRESL 
    return temp; 
} 

void interrupt ISR()
{
   
   GIE = 0;
   int d_value = 0;
   if(ADIF == 1)
   {

      ADIF = 0;
       d_value = readADC(); // get ADC value 
       /* setting the LEDs */ 
       if(d_value>=0 && d_value<=169) 
        PORTB = 0x00; // all LEDs OFF 
       else if(d_value>=170 && d_value<=340) 
        PORTB = 0x01; // RB0 LED ON 
        else if(d_value>=341 && d_value<=511) 
        PORTB = 0x03; // RB1 LED ON 
     else if(d_value>=512 && d_value<=682) 
        PORTB = 0x07; // RB2 LED ON 
      else if(d_value>=683 && d_value<=853) 
        PORTB = 0x0F; // RB3 LED ON 
      else if(d_value>=854 && d_value<=1024) 
        PORTB = 0x1F; // RB4 LED ON 
   }
   delay(1000);
   GO = 1;
   GIE = 1;
}

void main(void) 
{ 
    TRISB = 0x00; // set all PORTB as output 
    PORTB = 0x00; // all LEDs are off 
    ADCON1 = 0x80; // result: right Justified, clock: FOSC/2 
    // all ports in PORTA are analog 
    // VREF+: VDD, VREF-: VSS 
    ADCON0 = 0x41; // clock: FOSC/2, analog channel: AN0, 
    // A/D conversion: STOP, A/D module: ON 
   PEIE = 1;
   ADIE = 1;
   ADIF = 0;
   GIE = 1;
   GO = 1;
    for(;;) // foreground routine 
    { 
      
   } 
}