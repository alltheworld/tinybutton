#include <avr/io.h>
#define F_CPU 1200000UL  //(1.2 Mhz default fuses for ATTiny13A)
#include <util/delay.h>

#define LED_PIN PB4
#define INPUT_PIN PB3


int main (void)
{

	int ButtonPressed=0;
	int ButtonWaitingUnpressing=0;
	int ButtonUnpressingCount=0;

	   // output pin
	    DDRB |= (1 << LED_PIN);     // LED on pin
	    // input pin
	    DDRB &= ~(1 << INPUT_PIN);    // switch on pin
	    PORTB |= (1 << INPUT_PIN);    // enable pull-up resistor



		  while (1)
		  {
		    if (!bit_is_set(PINB,INPUT_PIN))  //button is pushed
		      {
		    	if (ButtonPressed==0 and ButtonWaitingUnpressing==0)
		    	{
		    		PORTB |= (1 << LED_PIN); // on led
		    		ButtonPressed=1;
		    		ButtonWaitingUnpressing=1;
		    		_delay_ms(100);
		    		PORTB &= ~(1 << LED_PIN);//off led
		    	}
		    	else
		    	{
		    		ButtonUnpressingCount=0;
		    	}
		      }
		    else
		    {

		    	ButtonPressed=0;
		    	ButtonUnpressingCount++;
		    	if (ButtonUnpressingCount>50)//15
		    	{
		    		ButtonWaitingUnpressing=0;ButtonUnpressingCount=0;
		    		ButtonPressed=0;
		    		_delay_ms(1);
		    	}//endif

		    }//end else

		  }//end while loop

}
