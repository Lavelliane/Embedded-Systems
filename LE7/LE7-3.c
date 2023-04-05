#include<xc.h>
#include<stdio.h> 
#include<math.h>

// global variables
int RH;
float T;

// delay
void delay_ms(int cnt);

// LCD Functions
void initLCD();
void instCtrl(unsigned char INST);
void dataCtrl(unsigned char DATA);

// Display Functions
void dispRH();
void dispT();

// I2C_master_mode
void I2C_Wait(void);
void I2C_Start(void);
void I2C_Stop(void);
void init_I2C_Master(void);
void I2C_RepeatedStart(void);
void I2C_Send(unsigned char data);
unsigned char I2C_Receive(unsigned char ack);

void main(void) {
	int res = (int)(pow(2,14));
	unsigned int RH_temp = 0x0000, T_temp = 0x0000;
	unsigned char temp = 0x00;
	TRISB = 0x00;	// set all ports of PORTB to output
	TRISD = 0x00;	// set all ports of PORTD to output
	PORTB = 0x00;
	PORTD = 0x00;
	init_I2C_Master(); // initialize I2C as master
	
	initLCD();		// initialize LCD

	for(;;)
	{
		// for reading relative humidity
		I2C_Start(); 				// init start condition
		I2C_Send(0x80); 			// sending slave address + write
		I2C_Send(0xE5); 			// 11100101 -> command for reading humidity
		I2C_RepeatedStart();		// read data from another address without stop
		I2C_Send(0x81); 			// send the slave address + read
		RH_temp = I2C_Receive(1); 	// read MSB and acknowledge 
		temp = I2C_Receive(0); 		// read LSB and not acknowledge 
		I2C_Stop(); 				// initiate stop condition
		delay_ms(200); 				// delay
			
		RH_temp = RH_temp << 6; 	// shift left 6 times
		temp = temp >> 2; 			// shift right 2 times
		RH_temp = RH_temp | temp; 	// combine MSB and LSB
		
		RH = (int)(-6+(125*((float)RH_temp/(float)res)));
		
		// ACK POLLING
		I2C_Start(); 		// init start condition
		I2C_Send(0x80); 	// sending slave address + write
		I2C_Send(0xE3); 	// 11100101 -> command for reading humidity
		I2C_Stop();
		delay_ms(200);
		
		temp = 0x00;		// reset temp value
		
		// for reading temperature
		I2C_Start(); 				// initiate start condition
		I2C_Send(0x80); 			// sending slave address + write
		I2C_Send(0xE3); 			// 11100101 -> command for temperature
		I2C_RepeatedStart();		// read data from another address without stop
		I2C_Send(0x81); 			// sending slave address + read
		T_temp = I2C_Receive(1); 	// read MSB and acknowledge
		temp = I2C_Receive(0); 		// read LSB and not acknowledge
		I2C_Stop(); 				// init stop condition
		delay_ms(200); 				// delay
		
		T_temp = T_temp << 6; 		// shift left 6 times
		temp = temp >> 2; 			// shift right 2 times
		T_temp = T_temp | temp; 	// combine MSB and LSB

		T = (float)(-46.85+(175.72*((float)T_temp/(float)res)));

		// ACK POLLING
		I2C_Start(); 		// initiate start condition
		I2C_Send(0x80); 	// send the slave address + write
		I2C_Send(0xE5); 	// 11100101 -> command for reading humidity
		I2C_Stop();
		delay_ms(200);

		dispRH();
		dispT();
	}
}
void delay_ms(int cnt) {
	int i, j;
	for (i = cnt; i != 0; i--)// loop until i=0
	{
	 for (j = 0; j < 5000; j++); // loop until j=4999
	}
}


// function definitions for the LCD
void instCtrl(unsigned char INST) {
	PORTB = INST;
	RD0 = 0;
	RD1 = 1; 
	delay_ms(1);
	RD1 = 0;
}
void initLCD() {
	delay_ms(1);
	instCtrl(0x38); // set function to 8 bits, 2 line display
	instCtrl(0x01); // Display clear
	instCtrl(0x06); // entry mode set: increase, display is not shifted
	instCtrl(0x0E); // display on, cursor off, blink off
	
	instCtrl(0x80); // Set Line 1
    dataCtrl('H');
    dataCtrl('u');
    dataCtrl('m');
    dataCtrl('i');
    dataCtrl('d');
	dataCtrl('i');
    dataCtrl('t');
    dataCtrl('y');
    dataCtrl(':');
	
	instCtrl(0xC0); // Set Line 2
    dataCtrl('T');
    dataCtrl('e');
    dataCtrl('m');
    dataCtrl('p');
    dataCtrl('e');
    dataCtrl('r');
    dataCtrl('a');
    dataCtrl('t');
    dataCtrl('u');
    dataCtrl('r');
    dataCtrl('e');
    dataCtrl(':');
}

void dataCtrl(unsigned char DATA) {
 	PORTB = DATA;
	RD0 = 1;	
	RD1 = 1;    
	delay_ms(5); 
	RD1 = 0;   
}

// function definitions for displaying to the LCD
void dispRH() {
   	instCtrl(0x8A); // set display address
   	
    char val[4] = {' ',' ',' ',' '};
    sprintf(val, "%d", RH);
   
    dataCtrl(val[0]);
    dataCtrl(val[1]);
    dataCtrl(val[2]);
    dataCtrl('%');
}

void dispT() {
   	instCtrl(0xCD); // // set display address
   
    char val[5] = {' ',' ',' ',' ',' '};
    sprintf(val, "%f", T);
   
    dataCtrl(val[0]);
    dataCtrl(val[1]);
    dataCtrl(val[2]);
	dataCtrl(val[3]);
	dataCtrl(val[4]);
	dataCtrl(' ');
    dataCtrl('C');
}

// function definitions for I2C_master_mode
void init_I2C_Master(void){
	TRISC3 = 1; 		// set RC3 (SCL) to input
	TRISC4 = 1; 		// set RC4 (SDA) to input
	SSPCON = 0x28; 		// SSP enabled, I2C master mode
	SSPCON2 = 0x00; 	// start condition idle, stop condition idle
	
	// receive idle
	SSPSTAT = 0x00; 	// slew rate enabled
	SSPADD = 0x09; 		// clock frequency at 100 KHz (FOSC = 4MHz)
}

void I2C_Wait(void)
{
/* wait until all I2C operation are finished*/
while((SSPCON2 & 0x1F) || (SSPSTAT & 0x04));
}

void I2C_Start(void){
	/* wait until all I2C operation are finished*/
	I2C_Wait();
	/* enable start condition */
	SEN = 1; // SSPCON2
}

void I2C_Stop(void){
	/* wait until all I2C operation are finished*/
	I2C_Wait();
	/* enable stop condition */
	PEN = 1; // SSPCON2
}

void I2C_RepeatedStart(void){
	/* wait until all I2C operation are finished*/
	I2C_Wait();
	/* enable repeated start */
	RSEN = 1; // SSPCON2
}

void I2C_Send(unsigned char data){
	/* wait until all I2C operation are finished*/
	I2C_Wait();
	/* write data to buffer and transmit */
	SSPBUF = data;
}

unsigned char I2C_Receive(unsigned char ack){
	unsigned char temp;
	I2C_Wait(); 		// wait until all I2C operation are finished
	RCEN = 1; 			// enable receive (SSPCON2 reg)
	I2C_Wait(); 		// wait until all I2C operation are finished
	temp = SSPBUF; 		// read SSP buffer
	I2C_Wait(); 		// wait until all I2C operation are finished
	ACKDT = (ack)?0:1; 	// set acknowledge (ACK) or not acknowledge (NACK)
	ACKEN = 1; 			// enable acknowledge sequence
	return temp;
}

