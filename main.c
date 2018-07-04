/*
 * ver 2.2
 * button PB0
  * Load PB5
 * we need delay 250 ms. or like current delay div by 2
 * actual required delay 150 ms
 */

#define F_CPU 1200000UL  //(1.2 Mhz default fuses for ATtiny13A)
#define LED_PIN PB3
#define INPUT_PIN PB0


#include <avr/io.h>
#include <util/delay.h>

/*
PB0 - leg 5  (MOSI) 
PB3 - leg 2  

*/



int main (void)
{
	//define variables
	int ButtonPressed=0;
	int ButtonWaitingUnpressing=0;
	int ButtonUnpressingCount=0;



//power save
	ADCSRA &= ~(1<<ADEN);     //turn off ADC
	ACSR |= _BV(ACD);         // disable analog comparator


	   // output pin
	    DDRB |= (1 << LED_PIN);     // LED on pin
	    // input pin
	    DDRB &= ~(1 << INPUT_PIN);    // switch on pin
	    PORTB |= (1 << INPUT_PIN);    // enable pull-up resistor

			PORTB &= ~(1 << LED_PIN);//off led  initial disable
	    _delay_us(500000);//0.5 sec delay



		  while (1)
		  {
		    if (!bit_is_set(PINB,INPUT_PIN))  //button is pushed
		      {
			    	if (ButtonPressed==0 && ButtonWaitingUnpressing==0)
				    	{
				    		PORTB |= (1 << LED_PIN); // on led
				    		ButtonPressed=1;
				    		ButtonWaitingUnpressing=1;
				    		//_delay_ms(50);//_delay_ms(100);//old was 100. now we will set divide 2
				    		_delay_us(50000);//

				    		PORTB &= ~(1 << LED_PIN);//off led

				    	}
			    	else
				    	{
				    		ButtonUnpressingCount=0;
				    		_delay_us(1000);//1ms
				    	}
		      }
			    else
			    {

			    	ButtonPressed=0;
			    	ButtonUnpressingCount++;
			    	if (ButtonUnpressingCount>35)//15
			    	{
			    		ButtonWaitingUnpressing=0;ButtonUnpressingCount=0;
			    		ButtonPressed=0;
			    		_delay_us(1000);//1ms
			    	}//endif

			    }//end else

		  }//end while loop

}
