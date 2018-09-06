## Sharp Infrared Range Finder
The Sharp IR sensor shoots out an infrared beam and measures distance by the angle at which that infrared light is bounced back.

It is an analog sensor, which means that it outputs a range of voltages to indicate its measurement, as opposed to a digital signal (1s and 0s). Unfortunately, the Raspberry Pi 3 does not have any way to read analog values, so we need a device to convert the analog voltage to a digital signal we can make sense of...

Enter the Analog to Digital Converter (ADC)!

![](https://github.com/duckietown/docs-opmanual_sky/blob/draft/book/opmanual_sky/10-build/ADC.jpg?raw=true "fig")

This nifty little device can read four analog signals (A0 - A4) and outputs a digital protocal (i2c) which the Pi can read.

## Pi Hat![](https://rlx.sk/8789-large_default/adafruit-perma-proto-hat-for-pi-mini-kit-no-eeprom-adafruit-2310.jpg "fig")
Solder header pins to ADC
![](https://github.com/duckietown/docs-opmanual_sky/blob/draft/book/opmanual_sky/10-build/adc%20pins.JPG?raw=true)
![](https://github.com/duckietown/docs-opmanual_sky/blob/draft/book/opmanual_sky/10-build/adc%201.JPG?raw=true)

Solder the  Pi header to the Pi hat.
![](https://github.com/duckietown/docs-opmanual_sky/blob/draft/book/opmanual_sky/10-build/solder%20hat%20back.JPG?raw=true)
![](https://github.com/duckietown/docs-opmanual_sky/blob/draft/book/opmanual_sky/10-build/soldered%20hat.JPG?raw=true)

Solder ADC to Pi Hat in this position on the board
![](https://github.com/duckietown/docs-opmanual_sky/blob/draft/book/opmanual_sky/10-build/soldered%20hat%20+%20soldered%20adc.JPG?raw=true)


Take your infrared connector cable and just cut the black connector off. Strip and tin the exposed wires.

![](https://github.com/h2r/pidrone-site/raw/master/website/projects/build/pics/ir_setup/cut-ir-wire.jpg)

##### Wiring diagram
Cut and strip red, yellow, green, and black 24 AWG stranded wires to fit where shown. 
![](https://github.com/duckietown/docs-opmanual_sky/blob/draft/book/opmanual_sky/10-build/pi%20hat%20wiring.jpg?raw=true)



What it should look like.
![](https://github.com/duckietown/docs-opmanual_sky/blob/draft/book/opmanual_sky/10-build/pi%20hat%20final.jpg?raw=true)

Note: The Ir sensor wires are quite weak and need to be stripped carefully and soldered securely to prevent them from breaking during flight.



