clear
avrdude -p attiny13 -c usbasp -U flash:w:obj/button.hex -B256
