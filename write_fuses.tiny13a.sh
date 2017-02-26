#defaults for a13
#avrdude -c usbasp -p t13 -B 250 -U lfuse:w:0x6a:m -U hfuse:w:0xff:m
#avrdude -c usbasp -p t13 -B 250 -U lfuse:w:0x6a:m -U hfuse:w:0xff:m -U efuse:w:0xff:m 


#set flags for attiny13a 
avrdude -c usbasp -p t13 -B 250 -U lfuse:w:0x6a:m -U hfuse:w:0xed:m
