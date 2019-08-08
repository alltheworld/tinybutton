#default fuses for a13
#avrdude -c usbasp -p t13 -U lfuse:w:0x6a:m -U hfuse:w:0xff:m
clear
avrdude -c usbasp -p t13 -B 250  -U lfuse:w:0x2a:m -U hfuse:w:0xf9:m