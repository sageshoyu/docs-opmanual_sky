# Part 1 Instructions {#build-part1-instructions status=ready}

**Expected Time**: 3 hours

## Preliminary Tasks

### Charge the Battery

1) Start charging your drone battery so it is ready when you need it.

Note: **Never** leave the battery charging unattended. The battery takes about 2 hours to charge

### Flash the SD card

1) On a base station, download the image flashing tool [Etcher](https://www.balena.io/etcher/).

2) On a base station, download the latest drone [image](https://drive.google.com/file/d/1IEPpTi_UdoHvHh666DSqhcXnP5OrQBo4/view?usp=sharing).

3) Connect the micro SD card to the workstation. Use the micro SD to USB card reader if the base station does not have a micro SD port.

4) Open Etcher and select the downloaded drone image. Then select the micro SD card as the drive to flash. Finally, click the "Flash" button.

Note: Double check that the "drive" is your micro SD card. You may be prompted to enter the base station password to proceed. This is normal; flashing an SD card deletes everything that is on it, so Etcher is making sure this process is OK with you.

Note: flashing will take 1 - 2 hours. In the meantime, you can move on to the next sections.

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

    <figure>
       <figcaption>Soldering Setup</figcaption>
       <img style='width:220px' src="photos/no_image.png"/>
    </figure>

Recommended: [video instructions part 1](https://drive.google.com/file/d/1_3pavoqrBqVhaXVO_ckga5tiSTCBStaA/view?usp=sharing)

Recommended: [video instructions part 2](https://drive.google.com/file/d/1qAHN24WlXQ8VcRRAgeP4UyiBG9yFqq_5/view?usp=sharing)

Recommended: [video instructions part 3](https://drive.google.com/file/d/1bRUzxmqFLdeEPoKqYJNIGYimHYFPo2lI/view?usp=sharing)

Note: It's very easy to add too much solder and create a solder bridge between adjacent pins. Visually inspect your soldering to make sure that adjacent pins are not connected by globs of solder. If you have a solder bridge, try the technique shown in [this video](https://www.youtube.com/watch?v=gJPLs7J4oCk). If this does not work, you can use desoldering wick or a solder sucker to remove the excess solder.

<div class='check' markdown="1">
Do a [connectivity check](https://docs.duckietown.org/daffy/opmanual_sky/out/build_multimeter.html) on the Pi Hat; verify there is:

- A short between the SDA on the Pi Hat and

</div>

TODO: link section on how to fix solder mistakes


## Attach the LED and Resistor to the Pi Hat

1) Solder the 680 Ohm resistor and your LED to the Pi Hat as shown in the image.

Note: The direction of the resistor does not matter, but the direction of the LED **does matter.** Be sure to place the cathode (shorter end) into the GND rail.

<figure>  
   <figcaption>Extra resistor wire snipped</figcaption>
   <img style='width:216px' src="photos/pihat-with-led.png"/>
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

 2) Strip the end of the red and black **OUT** wires (the wires you just cut) so that there is about 5mm of exposed wire.

 3) Solder the BEC **red (+)** OUT wire to the +5V Rail, and solder the BEC **black (-)** OUT wire to the GND rail, as shown in the image.

 Remark: Any hole on the 5V rail will work; however, for wire organization, it is best to use a hole on the 5V rail that is shown.

 <figure>
     <figcaption>BEC Soldered to Pi Hat</figcaption>
     <img style='width:250px' src="photos/pihat-with-bec.png"/>
 </figure>


 Remark: The BEC wire is stranded so it can be difficult to push through the hole on the Pi Hat. It helps to twist the wire strands together using your index and thumb finger, like preparing to thread a needle.

Reference: [video instructions](https://drive.google.com/file/d/1dWkcTCSyBB6qZfQMVru1hSIyZC1fnxfx/view?usp=sharing) (please ignore the extra wires and components that are already attached to the Pi Hat in the video)

<div class='check' markdown="1">

Do a [connectivity check](https://docs.duckietown.org/daffy/opmanual_sky/out/build_multimeter.html) on the Pi Hat. Verify there is:

 - **no short** between the +5V rail and the GND rail on the Pi Hat

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

2) Solder the BEC **red (+)** IN wire to the **positive (+)** pad on the PDB, and solder the **black (-)** IN wire to the **negative (-)** pad on the PDB, as shown in the image.

Note: Any of the tinned (+) pads will work; however, using the pad shown in the image will help with wire organization later on.

<figure>
    <figcaption>BEC positive wire soldered to PDB</figcaption>
    <img style='width:300px' src="photos/pdb-with-bec.png"/>
</figure>

Reference: [video instructions](https://drive.google.com/file/d/1j81xCk6fAeutRMZY-X9wH2JQ-ylNwIOQ/view?usp=sharing) (Please ignore the additional wires on the PDB, as well as which pads the BEC is soldered to - just observe the technique)

## Solder the XT60 Battery Connector to the PDB

1) Strip the ends of the battery connector so that about 1cm of wire is exposed

2) Tin the exposed ends of the XT60 connector

2) Solder the XT60 **red (+)** wire to the tinned positive (+) pad on the PDB, and solder the **black (-)** wire to the tinned ground (-) pad on the PDB, as shown in the image.

Note: This wire is very thick and it will take a while for the solder to melt. Make sure your soldering iron is turned all the way up and be patient.

Note: Do **not** solder the wires flat against the PDB - solder them at ~40&deg; angle away from the board. If you solder them flat, then you will not be able to fit the PDB into the drone frame.   


<figure>
    <figcaption>XT60 soldered to PDB</figcaption>
    <img style='width:300px' src="photos/pdb-with-xt60.png"/>
</figure>


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

2) Verify that the BEC has a solid greed light.

3) Verify that the Pi has a solid red light.

## Insert the SD card into the Pi

Insert your (now flashed) SD card into the SD card slot on the bottom of the Pi.

Note: The SD card direction does matter - the lettering on the SD card should be facing downward.

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
