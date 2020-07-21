# Part 3 Instructions {#build-part3-instructions status=ready}

**Expected Time**: 5 hours


In this phase, strip and tin all of your parts, so that in latter phases they can be joined together.  
- Notes:
    - Sometimes parts will have wires already tinned out-of-the-box by the manufacturer (i.e. pre-tinned). You can identify this by: 1) the "shininess" of the tip of a wire and 2) the inability to fray the wire strands of the tip of a wire. However, such tinning is often ineffective. Cut off any pre-tinned tips, then strip and tin the part yourself.
    - Only tin red and black wires on the IN side of BEC.
    - Do **not** substitute the red and brown wire pair in the flight controller box with any other wire pair in the box.
    - If the red and brown wire pair has a black connector on each wire, then cut off each black connector. Strip and tin the remaining portion of each wire.
    - Do **not** cut off the white connector from the red and brown wire pair. If you accidentally do, then seek the help of a TA or teacher to solder the white connector back on the wires.

<col3 figure-id="tab:tin_parts" figure-caption="Parts Need Tinning" class="labels-row1">
    <span style="text-align:center">Part Name</span>  <span style="text-align:center">Amount</span>  <span style="text-align:center">After Tinning Picture</span>
    <span style="text-align:center">ESC</span> <span style="text-align:center">4</span>  <span style="text-align:center"><img src="photos/tinned_esc_2.jpg" width="250" /></span>
    <span style="text-align:center">Motor</span> <span style="text-align:center">4</span> <span style="text-align:center"><img src="photos/tinned_motor.jpg" width="250" /></span>
    <span style="text-align:center">Battery Monitor Leads</span> <span style="text-align:center">1</span> <span style="text-align:center"><img src="photos/no_image.png" width="250"/></span>
</col3>

## Solder wires onto ESC pads

In this section, you will prepare your ESCs. Each ESC has 3 pads labeled A, B, and C. The labels are on the bottom of the ESC:

<figure>
    <figcaption>Pad Letters</figcaption>
    <img style='width:400px' src="photos/ABC_pads_on_ESC.jpg"/>
</figure>


1) Gather the following parts:

See: 4 ESCs

See: Heat Shrinks (recommend 13mm width)

See: 12 pieces of wire (recommend 4 red, 4 yellow, and 4 blue - each 3in. length)

2) For each ESC:

1. Use your fingers (or small wire cutters) to *very carefully* remove excess material from each ESC pad.

<figure class="flow-subfigures">  
    <figcaption>Clean ESC Pads</figcaption>
    <figure>
        <figcaption>Excess Material on ESC Pads</figcaption>
        <img style='width:200px' src="photos/ESC_pads_unclean_inked.jpg"/>
    </figure>
    <figure>  
        <figcaption>After Removing the Excess Material</figcaption>
        <img style='width:200px' src="photos/ESC_pads_clean_inked.jpg"/>
    </figure>
</figure>


2. Strip one end of a red wire. Wrap solder around the exposed strands, especially around the tip of the wire. DO NOT tin the wrapped solder.

3. Using long-nosed pliers, lightly push the wrapped wire end onto pad A.

<figure>
    <figcaption>Wire Pushed onto Pad</figcaption>
    <img style='width:400px' src="photos/wire_pushed_onto_esc_pad_inked.jpg"/>
</figure>


4. Use a soldering iron to simultaneously melt the wrapped solder into the wire and pad A. The best way to do this is to place the edge of the soldering iron tip against the left-hand side of the pad - thus touching both the pad and the wire. Smooth out the melted solder by carrying the soldering iron from the left-hand side to the top, then down the right-hand side of the pad. If needed, repeat the motion back-and-forth or focus on any side (i.e. left, top, right) of the joint.


<figure>  
    <figcaption>Solder onto ESC Pads</figcaption>
    <figure>
        <figcaption>Motion 1</figcaption>
        <img style='width:280px' src="photos/solder_onto_pad_motion_1_inked.jpg"/>
    </figure>
    <figure>  
        <figcaption>Motion 2</figcaption>
        <img style='width:280px' src="photos/solder_onto_pad_motion_2_inked.jpg"/>
    </figure>
    <figure>  
        <figcaption>Motion 3</figcaption>
        <img style='width:280px' src="photos/solder_onto_pad_motion_3_inked.jpg"/>
    </figure>
</figure>

5. Lightly pull the wire soldered to the pad and verify it stays on. If it does, melt the rest of the wrapped solder into the wire (i.e. tin it).

6. Repeat the previous four steps for the other pads, specifically a yellow wire on pad B and a blue wire on pad C.

   NOTE: the wire colors are purely our convention. Feel free to use other colors if needed.

7. Do a [connectivity check](https://docs.duckietown.org/daffy/opmanual_sky/out/build_multimeter.html) between each pair of soldered wires (recommend doing this now instead of in checkoff later). The multimeter *should* **not** beep, otherwise there is a short between the pair; if the multimeter does hold a continuous beep, then you will need to fix the short by removing any excess solder forming a bridge between the problematic pair of wires.

<figure>  
    <figcaption>Connectivity Check on Wires</figcaption>
    <figure>
        <figcaption>RY Check</figcaption>
        <img style='width:300px' src="photos/conn_check_RY.jpg"/>
    </figure>
    <figure>  
        <figcaption>RB Check</figcaption>
        <img style='width:300px' src="photos/conn_check_RB.jpg"/>
    </figure>
    <figure>  
        <figcaption>YB Check</figcaption>
        <img style='width:300px' src="photos/conn_check_YB.jpg"/>
    </figure>
</figure>


8. Put a heat shrink over the ESC. The heat shrink should cover (length-wise) the exposed soldered wires on one end and half the ESC on the other end. Apply heat to shrink the heat shrink.

<figure class="flow-subfigures">  
    <figcaption>Put Heat Shrinks on ESCs</figcaption>
    <figure>
        <figcaption>A Prepared ESC</figcaption>
        <img style='width:220px' src="photos/colorful_esc.jpg"/>
    </figure>
    <figure>  
        <figcaption>A Prepared ESC with Heat Shrinks</figcaption>
        <img style='width:220px' src="photos/colorful_esc_shrinkwrap2.jpg"/>
    </figure>
</figure>  

9. Strip and tin all wires of the completed ESC (if not already done). This effectively amounts to stripping and tinning the other end of the red, yellow, and blue wires.

## Solder bullet connectors

Before beginning this section, please refer to a bullet connector soldering [tutorial](https://youtu.be/3oBy-jV9ajE).    

NOTE: You can use any setup to hold the bullet connector, so long as the setup is not thermally conductive.

1. Gather the following parts:

See: 4 completed ESCs

See: 4 motors

See: 12 bullet connectors, female

See: 12 bullet connectors, male

See: Heat shrinks (recommend 4mm in width)

2. For each ESC:

    1. Solder a female bullet connector to each of the 3 ESC wires (i.e. red, yellow, blue).

    2. Put a heat shrink over each solder joint. For female connectors: the heat shrink should cover the solder joint on one end and run the entire length of the bullet connector. Apply heat to shrink the heat shrink.

<figure>  
    <figcaption>Put Heat Shrinks on Female Bullet Connectors</figcaption>
    <figure>
        <figcaption>Female Bullet Connectors on ESCs (Ignore color of wires)</figcaption>
        <img style='width:250px' src="photos/bullet_connectors_in_esc.jpg"/>
    </figure>
    <figure>  
        <figcaption>Female Bullet Connector with Heat Shrinks</figcaption>
        <img style='width:250px' src="photos/ESC_bullet_connectors_heat_shrinked.jpg"/>
    </figure>
</figure>  

3. For each motor:

    1. Solder a male bullet connector to each of the motor's wires.

    2. Put a heat shrink over each solder joint. For male connectors: the heat shrink should cover the solder joint on one end and run only the short length of the cylindrical part. Apply heat to shrink the heat shrink.

<figure>  
    <figcaption>Put Heat Shrinks on Male Bullet Connectors</figcaption>
    <figure>
        <figcaption>Male Bullet Connectors on Motor wires</figcaption>
        <img style='width:250px' src="photos/motor_with_bullet_connectors.jpg"/>
    </figure>
    <figure>  
        <figcaption>Male Bullet Connector with Heat Shrinks</figcaption>
        <img style='width:250px' src="photos/motor_bullet_connector_heat_shrinked.jpg"/>
    </figure>
</figure>     

<div class='check' markdown="1">

Visually inspect each ESC and verify that the heat shrinks are on properly; there should be no exposed wires and each heat shrink should be a tight fit.

- Visually inspect that each of the following is stripped and tinned: 4 ESCs, 4 motors, BEC, red and brown wire pair.

- Do a [connectivity check](https://docs.duckietown.org/daffy/opmanual_sky/out/build_multimeter.html) on the XT60 connector cable; verify there is no short between the red and black wire.

- Do a [connectivity check](https://docs.duckietown.org/daffy/opmanual_sky/out/build_multimeter.html) on each ESC; for each ESC, verify there are no shorts between any two wires you soldered.

</div>


## Solder ESCs to the PDB

An ESC (i.e. Electronic Speed Control) is a component which requires power. It takes this power and provides a variable amount of it to a motor; since a motor's RPM depends on how much power it gets, an ESC can control how fast a motor spins by controlling how much power it supplies the motor.

1) Solder each of your 4 ESCs to the PDB.   

<figure>
    <figcaption>BEC Soldered to PDB</figcaption>
    <img style='width:400px' src="photos/added_bec.jpg"/>
</figure>


Note: Do **not** solder the wires flat against the PDB - solder them at ~40&deg; angle. If you solder them flat, then you will not be able to fit the PDB into the drone frame.   


## Solder red and brown wire pair to the PDB

1) Solder the red and brown wire pair to the PDB. Due to its small size, you will need to solder onto another pair of wires, e.g. BEC wires. The red wire should connect to a positive (+) pad and the brown wire should connect to a negative (-) pad.     

<figure>
    <figcaption>Battery Monitor Lead Soldered to PDB</figcaption>
    <img style='width:400px' src="photos/added_red_brown.jpg"/>
</figure>


Note: While trying to solder on these wires, you may accidentally unsolder the existing wires from the PDB. We recommend temporarily holding down the existing wires with long-nose pliers, tape, or helping hands.  

- Do **not** substitute the red and brown wire pair in the flight controller box with any other wire pair in the box.
- If the red and brown wire pair has a black connector on each wire, then cut off each black connector. Strip and tin the remaining portion of each wire.
- Do **not** cut off the white connector from the red and brown wire pair. If you accidentally do, then seek the help of a TA or teacher to solder the white connector back on the wires.

## Attach parts to drone frame

This section will cover attaching the first set of items to the drone frame.

Before beginning, verify the PDB is completely soldered with all necessary parts (as covered in previous sections).

For reference, here are the motor directions with respect to the frame:

<figure>
    <figcaption>Motor Directions on Drone</figcaption>
    <img style='width:400px' src="photos/motor_directions.png"/>
</figure>


1. Gather the following:
    - Drone frame
    - Completed PDB
    - 4 motors (2 CW, 2 CCW)
    - Velcro
    - 4 standoffs
    - 12 black screws (in motors box, **not** drone frame box)

2. Place the drone frame on a flat surface so that the back is facing you.

<figure>
    <figcaption>Orientation of Drone Frame</figcaption>
    <img style='width:350px' src="photos/drone_frame_labeled_orientation.jpg"/>
</figure>

3. Feed the velcro through the center of the drone frame. Make sure the fuzzy side is facing down.

<figure>
    <figcaption>Velcro through Drone Frame</figcaption>
    <img style='width:350px' src="photos/velcro_in_frame.jpg"/>
</figure>

4. Screw a black screw into each of the standoffs.

<figure>
    <figcaption>Putting Screws in Standoffs</figcaption>
    <img style='width:200px' src="photos/standoffs_with_screws.png"/>
</figure>

5. Place the completed PDB into the center of the drone frame. For each of the 4 corner screw holes of the PDB, screw a standoff through the hole and into the drone frame. Note that the drone frame doesn't have screw grooves for the standoffs - you will create these grooves by lightly applying downward force while screwing.

<figure class="flow-subfigures">  
    <figcaption>Put PDB on Drone Frame</figcaption>
    <figure>
        <figcaption>Applying Downward Force</figcaption>
        <img style='height:297px' src="photos/putting_standoffs_in_frame.jpg"/>
    </figure>
    <figure>  
        <figcaption>PDB Secured in Drone Frame</figcaption>
        <img style='height:297px' src="photos/pdb_in_drone_frame.jpg"/>
    </figure>
</figure>  

6. Attach CW motors to the bottom-right and top-left of the drone frame, using 2 black screws for each attachment.

<figure class="flow-subfigures">  
    <figcaption>Attaching CW Motors</figcaption>
    <figure>
        <figcaption>Top View</figcaption>
        <img style='height:297px' src="photos/attach_cw_motors_to_frame_inked.jpg"/>
    </figure>
    <figure>  
        <figcaption>Bottom View</figcaption>
        <img style='height:297px' src="photos/motor_bottom.png"/>
    </figure>
</figure>  

7. Attach CCW motors to the bottom-left and top-right of the drone frame, using 2 black screws for each attachment.

<figure class="flow-subfigures">  
    <figcaption>Attaching CCW Motors</figcaption>
    <figure>
        <figcaption>Top View</figcaption>
        <img style='height:297px' src="photos/attach_ccw_motors_to_frame_inked.jpg"/>
    </figure>
    <figure>  
        <figcaption>Bottom View</figcaption>
        <img style='height:297px' src="photos/motor_bottom.png"/>
    </figure>
</figure>  

8. For each motor, connect its male bullect connectors to the female bullet connectors of the ESC in the motor's corner (e.g. top-left motor connects to top-left ESC). Any connection order will suffice for now, as you will be able to change them in a latter phase.

<figure>
    <figcaption>Connecting Bullet Connectors</figcaption>
    <img style='width:350px' src="photos/connecting_bullet_connectors.jpg"/>
</figure>

## Checkoff

- Visually inspect the drone to verify the following:

  - All red wires connected to the PDB are connected to positive (+) pads

  - All black wires connected to the PDB are connected to negative (-) pads

  - The wires on the IN side - **NOT** the OUT side - of the BEC are soldered to the PDB

  - For the battery monitor lead: the red wire is connected to a positive (+) pad while the brown wire is connected to a negative (-) pad

- Do a [connectivity check](https://docs.duckietown.org/daffy/opmanual_sky/out/build_multimeter.html) on the PDB; verify there is:

  - a short between any positive (+) pad and any other positive (+) pad

  - a short between any negative (-) pad and any other negative (-) pad

  - **no short** between any positive (+) pad and any negative (-) pad

- **ONLY** if the connectivity check passed, do a [DC voltage check](https://docs.duckietown.org/daffy/opmanual_sky/out/build_multimeter.html) on the PDB; plug in a 12V battery and verify there is:

  - ~0V between any positive (+) pad and any other positive (+) pad

  - ~0V between any negative (-) pad and any other negative (-) pad

  - ~12V between any positive (+) pad and any negative (-) pad.

  NOTE: If the battery is X volts instead of 12 volts (e.g. 10), then the multimeter will show X volts instead of 12 volts.

- **ONLY** if the DC voltage check passed, re-connect a battery to your drone and verify the following:

  - The ESCs emitted a quick succession of 3 beeps.

  - The bottom of the drone frame is illuminating, due to the LEDs on the bottom of the PDB.
