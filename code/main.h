/*
    main.h
 */
#ifndef _main_h_
	#define _main_h_
/*
---------------------------------------------------------------------------------------------
	Includes.
---------------------------------------------------------------------------------------------
*/
//#include <ctype.h>
//#include <string.h>
//#include <stdio.h>
#include <avr/io.h>
#include <util/delay.h>

#include <avr/interrupt.h>
#include <avr/sleep.h>

/*
---------------------------------------------------------------------------------------------
	define macros
---------------------------------------------------------------------------------------------
*/

// Utility macros
#define adc_disable_macro() (ADCSRA &= ~(1<<ADEN))   //save power . ADC uses ~320uA
#define adc_enable_macro()  (ADCSRA |=  (1<<ADEN)) 

#define turn_on_laser() (PORTB |= (1 << LED_PIN1) )// on led)   
#define turn_off_laser() (PORTB &= ~(1 << LED_PIN1)  )

#define turn_on_motor() (PORTB |= (1 << LED_PIN2) )// on led)   
#define turn_off_motor() (PORTB &= ~(1 << LED_PIN2)  ) 


/*
---------------------------------------------------------------------------------------------
*/


#endif//_main_h_

