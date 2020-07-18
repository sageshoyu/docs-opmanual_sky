# Build: Part 1 Instructions {#build-part1-instructions status=ready}

**Expected Time**: 3 hours

## Attach the Pin Header to the Pi Hat

1) Identify the side of the Pi Hat that has writing on it - this side is the front, and the side without writing is the back.

<figure class="flow-subfigures">  
    <figcaption>Pi Hat</figcaption>
    <figure>
       <figcaption>Front</figcaption>
       <img style='width:220px' src="photos/pihat_front_view.jpg"/>
    </figure>
    <figure>  
       <figcaption>Back</figcaption>
       <img style='width:220px' src="photos/pihat_back_view.jpg"/>
    </figure>
</figure>

2) Insert the Pin Header into the back of the Pi Hat as shown in the image

<figure>  
   <figcaption>Pin Header Inserted into Back of Pi Hat</figcaption>
   <img style='width:216px' src="photos/pi_hat_header_board_soldered_back.jpg"/>
</figure>

3) Use the helping hands to solder the Pin Header to the Pi Hat.


<figure class="flow-subfigures">  
    <figcaption>Soldering the Pin Header</figcaption>
    <figure>
       <figcaption>Soldering Setup</figcaption>
       <img style='width:220px' src="photos/no_image.png"/>
    </figure>
    <figure>  
       <figcaption>Finished Result</figcaption>
       <img style='width:216px' src="photos/pi_hat_header_board_soldered_front.jpg"/>
    </figure>
</figure>

Recommended: [video instructions part 1](https://drive.google.com/file/d/1_3pavoqrBqVhaXVO_ckga5tiSTCBStaA/view?usp=sharing)

Recommended: [video instructions part 2](https://drive.google.com/file/d/1qAHN24WlXQ8VcRRAgeP4UyiBG9yFqq_5/view?usp=sharing)

Recommended: [video instructions part 3](https://drive.google.com/file/d/1bRUzxmqFLdeEPoKqYJNIGYimHYFPo2lI/view?usp=sharing)

<div class='check' markdown="1">

It's very easy to add too much solder and create a solder bridge between adjacent pins. Visually inspect your soldering to make sure that adjacent pins are not connected by globs of solder. If you have a solder bridge, try the technique shown in [this video](https://www.youtube.com/watch?v=gJPLs7J4oCk). If this does not work, you can use desoldering wick or a solder sucker to remove the excess solder.

</div>

TODO: link section on how to fix solder mistakes


## Attach the LED and Resistor to the Pi Hat

1) Insert the anode (the **long** end) of the LED into the Pi Hat pin labelled "#6".

<figure>  
   <figcaption>Insert anode Pi Hat hole Pin #6</figcaption>
   <img style='width:216px' src="photos/no_image.png"/>
</figure>

Remark: LEDs have polarity, meaning that electricity can only flow in one direction through the element. This is why the direction we insert the LED is important.

2) Insert the cathode (the **short** end) of the LED into one of the open holes near pin #6. Make sure that this pin is **not in the +3V or GDN rails**.

<figure>  
   <figcaption>Insert Cathode into unused hole</figcaption>
   <img style='width:216px' src="photos/no_image.png"/>
</figure>

3) Push in the LED in so that it is flush against the Pi Hat

<figure>  
   <figcaption>LED flush against the Pi Hat</figcaption>
   <img style='width:216px' src="photos/no_image.png"/>
</figure>

4) solder the LED to the Pi Hat.

5) Snip off the extra wire

<figure>  
   <figcaption>Extra LED wire snipped</figcaption>
   <img style='width:216px' src="photos/no_image.png"/>
</figure>

6) Insert one end of the resistor into one of the holes in the same row that you soldered the LED.

Remark: Remember that resistors do not have polarity; therefore, electricity can flow in either direction through the element.

Remark: Remember that all of the pins in a row are connected, so even though the wire from the resistor isn't touching the wire of the LED, they are connected by the Pi Hat. You can see this if you look at the back of the Pi Hat- there is thin metal that connects all of the holes in a row.

<figure>  
   <figcaption>Resistor inserted into a hole in the same row as the LED</figcaption>
   <img style='width:216px' src="photos/no_image.png"/>
</figure>

7) Insert the other end of the resistor into one of the holes in the GND rail adjacent to the 3V rail.

<figure>  
   <figcaption>Resistor inserted in a hole connected to GND</figcaption>
   <img style='width:216px' src="photos/no_image.png"/>
</figure>

8) Push in the resistor so that it is flush against the Pi Hat

<figure>  
   <figcaption>Resistor flush against Pi Hat</figcaption>
   <img style='width:216px' src="photos/no_image.png"/>
</figure>

9) Solder the resistor to the Pi Hat.

10) Snip off the extra wire

<figure>  
   <figcaption>Extra resistor wire snipped</figcaption>
   <img style='width:216px' src="photos/no_image.png"/>
</figure>


You've just finished the LED circuit! In a future lesson, you will learn how to send electricity through GPIO pin #6 to the LED and resistor, and then back to ground.

## Attach the BEC to the Pi Hat

1) Cut the black plastic piece off the BEC **OUT** wires

<figure>
   <figcaption>BEC preparation</figcaption>
   <figure>
       <figcaption>BEC wires pre-cut</figcaption>
       <img style='width:250px' src="photos/bec_precut.jpg"/>
   </figure>
   <figure>
       <figcaption>BEC wires post-cut (not yet stripped)</figcaption>
       <img style='width:250px' src="photos/bec_postcut.jpg"/>
   </figure>
</figure>

 2) Strip the end of the red and black OUT wires (the wires you just cut) so that there is about 5mm of exposed wire.

 <figure>
     <figcaption>BEC wires stripped</figcaption>
     <img style='width:250px' src="photos/no_image.png"/>
 </figure>

 3) Insert the BEC **red (+)** OUT wire to any hole on the +5V Rail.

 Remark: Any hole on the 5V rail will work; however, for wire organization, it is best to use a hole on the 5V rail that is near the small slot on the Pi Hat.

 <figure>
     <figcaption>BEC positive wire inserted into +5V rail</figcaption>
     <img style='width:250px' src="photos/no_image.png"/>
 </figure>


 Remark: The BEC wire is stranded so it can be difficult to push through the hole on the Pi Hat. It helps to twist the wire strands together using your index and thumb finger, like preparing to thread a needle.

 4) Solder the BEC **red (+)** OUT wire on the back of the Pi Hat

<figure>
    <figcaption>Positive wire soldered to +5V rail</figcaption>
    <img style='width:250px' src="photos/no_image.png"/>
</figure>

 5) Insert the BEC **black (-)** OUT wire to any pin on the GND Rail adjacent to the +5V Rail

 <figure>
     <figcaption>Ground wire inserted into GND rail</figcaption>
     <img style='width:250px' src="photos/no_image.png"/>
 </figure>

 6) Solder the BEC **black (-)** OUT wire on back of the Pi Hat

 <figure>
     <figcaption>Ground wire soldered to GND rail</figcaption>
     <img style='width:250px' src="photos/no_image.png"/>
 </figure>

Reference: [video instructions](https://drive.google.com/file/d/1dWkcTCSyBB6qZfQMVru1hSIyZC1fnxfx/view?usp=sharing) (please ignore the extra wires and components that are already attached to the Pi Hat in the video)

<div class='check' markdown="1">

Do a [connectivity check](https://docs.duckietown.org/daffy/opmanual_sky/out/build_multimeter.html) on the Pi Hat. Verify there is:

 - **no short** between the +5V rail and the GND rail

</div>

## Tin the PDB

Similar to exposed wires, the metal pads on a PDB need to be tinned. This will allow tinned wires to be joined to the pads - and therefore the PDB.


1) Tin every pad on the PDB, **except** the 5V and 12V pads.

Note: Unless stated otherwise, red wires should be soldered to positive (+) pads and black wires should be soldered to ground (-) pads.
Be careful not to aggresively push the soldering iron tip into the PDB, as too much force will cut the pads right off!

<figure>
    <figcaption>Tinned PDB</figcaption>
    <img style='width:300px' src="photos/pdbtinned.png"/>
</figure>

Reference: [video instructions](https://drive.google.com/file/d/1xVlTBsAtarXKaJycGvJ66VYyJhe6loq3/view?usp=sharing)

## Solder the BEC to the PDB

1) Tin the ends of the red and black wires that are connected to the side of the BEC that is labeled **IN**

2) Solder the BEC **red (+)** IN wire to one of the tinned positive **(+)** pads on the PDB

Note: Any of the tinned (+) pads will work; however, using the pad shown in the image will help with wire organization later on.

<figure>
    <figcaption>BEC positive wire soldered to PDB</figcaption>
    <img style='width:300px' src="photos/no_image.png"/>
</figure>

3) Solder the BEC **black (-)** IN wire to the adjacent tinned ground **(-)** pad on the PDB

<figure>
    <figcaption>BEC negative wire soldered to PDB</figcaption>
    <img style='width:300px' src="photos/no_image.png"/>
</figure>

Reference: [video instructions](https://drive.google.com/file/d/1j81xCk6fAeutRMZY-X9wH2JQ-ylNwIOQ/view?usp=sharing) (Please ignore the additional wires on the PDB, as well as which pads the BEC is soldered to - just observe the technique)

## Solder the XT60 Battery Connector to the PDB

1) Strip the ends of the battery connector so that about 1cm of wire is exposed

<figure>
    <figcaption>Stripped XT60</figcaption>
    <img style='width:300px' src="photos/no_image.png"/>
</figure>

2) Tin the exposed ends of the XT60 connector

<figure>
    <figcaption>Tinned XT60</figcaption>
    <img style='width:300px' src="photos/no_image.png"/>
</figure>

2) Solder the XT60 **red (+)** wire to the tinned positive (+) pad on the PDB as shown in the image.

Note: This wire is very thick and it will take a while for the solder to melt. Make sure your soldering iron is turned all the way up and be patient.

<figure>
    <figcaption>XT60 positive lead soldered to PDB</figcaption>
    <img style='width:300px' src="photos/no_image.png"/>
</figure>

3) Solder the XT60 **black (-)** wire to the tinned ground (-) pad on the PDB as shown in the image

<figure>
    <figcaption>XT60 negative lead soldered to PDB</figcaption>
    <img style='width:300px' src="photos/no_image.png"/>
</figure>

- Do **not** solder the wires flat against the PDB - solder them at ~40&deg; angle away from the board. If you solder them flat, then you will not be able to fit the PDB into the drone frame.   



<div class='check' markdown="1">

Visually inspect the drone to verify the following:

  - All red wires connected to the PDB are connected to positive (+) pads

  - All black wires connected to the PDB are connected to negative (-) pads

  - The wires on the IN side - **NOT** the OUT side - of the BEC are soldered to the PDB

Do a [connectivity check](https://docs.duckietown.org/daffy/opmanual_sky/out/build_multimeter.html) on the PDB; verify there is:

  - a short between any positive (+) pad and any other positive (+) pad

  - a short between any negative (-) pad and any other negative (-) pad

  - **no short** between any positive (+) pad and any negative (-) pad

**ONLY** if the connectivity check passed, do a [DC voltage check](https://docs.duckietown.org/daffy/opmanual_sky/out/build_multimeter.html) on the PDB; plug in a 12V battery and verify there is:

  - ~0V between any positive (+) pad and any other positive (+) pad

  - ~0V between any negative (-) pad and any other negative (-) pad

  - ~12V between any positive (+) pad and any negative (-) pad.

  NOTE: If the battery is X volts instead of 12 volts (e.g. 10), then the multimeter will show X volts instead of 12 volts.

**ONLY** if the DC voltage check passed, re-connect a battery to your drone and verify the following:

  - The bottom of the drone frame is illuminating, due to the LEDs on the bottom of the PDB.

</div>

## Attach the Pi Hat to the Pi

1) Align the 2x40 GPIO pins on the Raspberry Pi with the 2x40 pin header that you soldered to the Pi Hat as shown in the image. (please ignore additional wires on the Pi Hat)

TODO: crop out extra wires

<figure>
    <figcaption>Pi Hat lined up</figcaption>
    <img style='width:300px' src="photos/pihat_lined_up.jpg"/>
</figure>

2) Press the pin header down onto the GPIO pins to connect the Pi Hat

<figure>
    <figcaption>Pi Hat lined up</figcaption>
    <img style='width:300px' src="photos/pihat_fully_connected.jpg"/>
</figure>

## Verify that the Pi has power

<div class='check' markdown="1">
Do another [connectivity check](https://docs.duckietown.org/daffy/opmanual_sky/out/build_multimeter.html) to verify that there is **no short** between the +5V rail and the GND rail on the Pi Hat.
</div>

1) Connect the battery

2) Verify that the BEC has a solid greed light

3) Verify that the Pi has a solid red light

<figure>  
  <figcaption>Pi power indicator LED </figcaption>
  <img style='width:216px' src="photos/no_image.png"/>
</figure>

## Insert the SD card into the Pi

Insert your (now flashed) SD card into the SD card slot on the bottom of the Pi.

Note: The SD card direction does matter - the lettering on the SD card should be facingS downward.

<figure class="flow-subfigures">  
    <figcaption>SD Card inserted in the Pi</figcaption>
    <figure>
        <figcaption>Top View</figcaption>
        <img style='width:230px' src="photos/sd_card_in_pi_top_view.jpg"/>
    </figure>
    <figure>  
        <figcaption>Bottom View</figcaption>
        <img style='width:230px' src="photos/sd_card_in_pi_bottom_view.jpg"/>
    </figure>
</figure>  
