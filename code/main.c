/*
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Project : Button for LTF
Version : 0.0.0.2
Date    : 
Author  : 
Mail to : 
Chip type       : Attiny13A
Fuses Settings	: CKSEL = , SUT = , CKOPT =    
Program type    : Application
Clock frequency : 1,200 000 Hz
Memory model    : Small
Heap			: 
Data Stack		: 
Return Stack	: 
Compiler		: GCC
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
*/

#define F_CPU 1200000UL  //(1.2 Mhz default fuses for ATtiny13A)

#define SpecialStateTimeVal 60000  //around 58seconds before special state will be active

//define PIN'S for Attiny13A
#define INPUT_PIN PB0   
#define LED_PIN1  PB3   //for Laser
#define LED_PIN2  PB4   //for Motor

#include "main.h"


int main(void)
{

  //define variables
	uint16_t ButtonPressed=0;
	uint16_t ButtonWaitingUnpressing=0;
	uint16_t ButtonUnpressingCount=0;

	uint32_t SpecialStateTimePressButton=0;//for new feature
	uint8_t SpecialStateFlag=0;
//------------------------------------------------------
  // set output pin
  DDRB |= (1 << LED_PIN1);    // LED on pin1
  DDRB |= (1 << LED_PIN2);    // LED on pin2
  // set input pin
  DDRB &= ~(1 << INPUT_PIN);    // switch on pin
  PORTB |= (1 << INPUT_PIN);    // enable pull-up resistor
  //init default state for output pins
  PORTB &= ~(1 << LED_PIN1);//off pin1  initial disable
	PORTB &= ~(1 << LED_PIN2);//off pin2  initial disable
  
  //start delay
	
  while (1) //infinite loop
	{
		  	//Test whether bit bit in IO register sfr is set. 
        //This will return a 0 if the bit is clear, and non-zero if the bit is set.
        uint8_t buttonIsPressed = bit_is_set(PINB,INPUT_PIN); 

    if (SpecialStateFlag==0)
    {
      if (!buttonIsPressed)  //button is pushed // negative logic
        {
          if (ButtonPressed==0 && ButtonWaitingUnpressing==0)
                {
                  turn_on_laser();
                  turn_on_motor();
                  ButtonPressed=1;
                  ButtonWaitingUnpressing=1;
                  _delay_ms(50);// looks like 50ms is normal time for sensort to detect pulse
                    turn_off_laser();
                    turn_off_motor();
                    SpecialStateTimePressButton=0;
                }
              else
                {  //just waiting when user will stop pressing button. to start unpressing procedure
                  ButtonUnpressingCount=1;
                  _delay_ms(1);//1ms
                    SpecialStateTimePressButton++;//10ms 
                    if (SpecialStateTimePressButton>=SpecialStateTimeVal)
                    {
                      SpecialStateFlag=1;
                    }

                }
            }
            else
            {
              if (ButtonUnpressingCount==0)
              {
                _delay_ms(10);//1ms
              }
              else 
              {

                ButtonPressed=0;
                ButtonUnpressingCount++;
                if (ButtonUnpressingCount>35)//15
                {
                  ButtonWaitingUnpressing=0;ButtonUnpressingCount=0;
                  ButtonPressed=0;
                  _delay_ms(1);//1ms
                }//endif
              }
        }//end else
      } //end of default procedure
    //--------------------------------------------------------------------------------
          else  
          {  //special state procedure
              //simple on and off logic
              //need for testing ,calibration and some training lessons.
              if (!buttonIsPressed)  //button is pushed // negative logic
                    {
                            turn_on_laser();
                }
                    else 
                    {
                            turn_off_laser();
                    }
          }

	}//end while loop
}//end main
