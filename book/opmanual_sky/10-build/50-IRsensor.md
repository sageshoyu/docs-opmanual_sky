# Sharp Infrared Range Finder {#build-assignment-4 status=ready}
The Sharp IR sensor shoots out an infrared beam and measures distance by the angle at which that infrared light is bounced back.

It is an analog sensor, which means that it outputs a range of voltages to indicate its measurement, as opposed to a digital signal (1s and 0s). Unfortunately, the Raspberry Pi 3 does not have any way to read analog values, so we need a device to convert the analog voltage to a digital signal we can make sense of...

Enter the Analog to Digital Converter (ADC)!

<figure>
    <figcaption>ADC</figcaption>
    <img style='width:35em' src="ADC.png"/>
</figure>

This nifty little device can read four analog signals (A0 - A4) and outputs a digital protocol (i2c) which the Pi can read.

## Pi Hat!

<figure>
    <figcaption>Pi Hat</figcaption>
    <img style='width:35em' src="hat.png"/>
</figure>

Solder header pins to ADC
<figure>
    <figcaption>ADC Pins</figcaption>
    <img style='width:35em' src="adc_pins.png"/>
</figure>

<figure>
    <figcaption>Soldered ADC Pins</figcaption>
    <img style='width:35em' src="adc_1.png"/>
</figure>

Solder the  Pi header to the Pi hat.

<figure>
    <figcaption>Back of Pi Hat</figcaption>
    <img style='width:35em' src="solder_hat_back.png"/>
</figure>

<figure>
    <figcaption>Soldered Hat</figcaption>
    <img style='width:35em' src="soldered_hat.png"/>
</figure>

Solder ADC to Pi Hat in this position on the board

<figure>
    <figcaption>ADC Soldered to Pi Hat</figcaption>
    <img style='width:35em' src="soldered_hat_and_soldered_adc.png"/>
</figure>


Take your infrared connector cable and just cut the black connector off. Strip and tin the exposed wires.

<figure>
    <figcaption>Cut IR Wire</figcaption>
    <img style='width:35em' src="cut_ir_wire.png"/>
</figure>

##### Wiring diagram
Cut and strip red, yellow, green, and black 24 AWG stranded wires to fit where shown.

<figure>
    <figcaption>Pi Hat Wiring</figcaption>
    <img style='width:35em' src="pi_hat_wiring.png"/>
</figure>



What it should look like.

<figure>
    <figcaption>Finished Pi Hat</figcaption>
    <img style='width:35em' src="pi_hat_final.png"/>
</figure>

Note: The Ir sensor wires are quite weak and need to be stripped carefully and soldered securely to prevent them from breaking during flight.
