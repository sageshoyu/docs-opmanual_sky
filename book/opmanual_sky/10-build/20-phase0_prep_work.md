# Phase 0: Prep Work {#build-phase0 status=ready}

**Expected Time**: 5 hours

## Preface

Before you begin, please ensure you have all the parts in the [parts and materials list](https://docs.duckietown.org/daffy/opmanual_sky/out/build_parts_and_materials.html).

In this phase of the build, you will do prep work for the next phases of the build. This phase will require a lot of soldering, so please go through a [soldering tutorial](https://www.youtube.com/watch?v=Qps9woUGkvI) before starting.

**Safety Tips:**

- Be careful holding wires and components with your bare hands while soldering, as they will get very hot very quickly. We recommend using long-nose pliers or helping hands whenever possible.

- Don't touch the soldering iron tip (or any other metal piece) while the soldering iron is on, since doing so can cause burns. If you get burned, rinse the affected area with cold water immediately. 
   
- Likewise, don't use the soldering iron on anything you don't intend to solder. The high heat will cause things to melt or burn.

- Don't breathe soldering fumes; use a soldering fan whenever possible.

- If you have difficulty soldering (e.g. shaky hands), please seek the advice of a TA or teacher.

## Strip and Tin Wires

**Stripping** is the process of removing a portion of insulator from a wire in order to expose its strands. It is done by using a wire stripper.    
<figure class="flow-subfigures">  
    <figcaption>To Strip a Wire</figcaption>
    <figure>
        <figcaption>An unstripped wire</figcaption>
        <img style='width:220px' src="photos/wire.jpg"/>
    </figure>
    <figure>  
        <figcaption>A stripped wire</figcaption>
        <img style='width:220px' src="photos/stripped_wire.jpg"/>
    </figure>
</figure>


**Tinning** is the process of applying solder to exposed wire. It is done by using a soldering iron to melt solder into the exposed wire.    

<figure class="flow-subfigures">  
    <figcaption>To Tin a Wire</figcaption>
    <figure>
        <figcaption>An untinned wire</figcaption>
        <img style='width:209px' src="photos/pre_tinned_1.jpg"/>
    </figure>
    <figure>  
        <figcaption>A tinned wire</figcaption>
        <img style='width:220px' src="photos/post_tinned_1.jpg"/>
    </figure>
</figure>


The purpose of stripping and tinning wires is to allow them to be joined together. By itself, stripping would not allow wires to be joined because the exposed wires would have no way to "stick" to each other.

However, tinning *does* allow exposed wires to "stick" (i.e. join) to each other by using the fact that solder turns into a liquid when exposed to high heat, but into a solid when the heat is removed; this means wires can be joined by:

1. Putting the tinned wires next to each other so they are touching.

2. Heating solder on both wires simultaneously so each turns into a liquid. The liquids will then combine.

3. Removing the heat so the liquid solidifies, thus joining the two wires.

See this [tutorial](https://www.youtube.com/watch?v=pRPF4wpXX9Q) to learn how to tin and join two wires.

An alternate way to tin a wire would be to wrap the wire with solder, then melt with a soldering iron:

<figure class="flow-subfigures">  
    <figcaption>An Alternate Way to Tin a Wire</figcaption>
    <figure>
        <figcaption>An untinned wire</figcaption>
        <img style='width:196px' src="photos/pre_tinned_2.jpg"/>
    </figure>
    <figure>  
        <figcaption>A tinned wire</figcaption>
        <img style='width:200px' src="photos/post_tinned_2.jpg"/>
    </figure>
</figure>

Furthermore, since solder is conductive, the resulting joint acts as a bridge for electricity traveling between the connected wires! 


TODO: 

- In this phase, strip and tin all of your parts, so that in latter phases they can be joined together.  
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
        <span style="text-align:center">BEC</span> <span style="text-align:center">1</span> <span style="text-align:center"><img src="photos/tinned_bec.jpg" width="250" /></span>
        <span style="text-align:center">Red and brown wire pair (in FC box)</span> <span style="text-align:center">1</span> <span style="text-align:center"><img src="photos/tinned_red_brown.jpg" width="250"/></span>
    </col3>

## Solder wires onto ESC pads

In this section, you will prepare your ESCs. Each ESC has 3 pads labeled A, B, and C. The labels are on the bottom of the ESC:

<figure>
    <figcaption>Pad Letters</figcaption>
    <img style='width:400px' src="photos/ABC_pads_on_ESC.jpg"/>
</figure>


1. Gather the following parts: 
    * 4 ESCs
    * Heat Shrinks (recommend 13mm width)
    * 12 pieces of wire (recommend 4 red, 4 yellow, and 4 blue - each 3in. length)

2. For each ESC:
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

   - 4 completed ESCs

   - 4 motors

   - 12 bullet connectors, female

   - 12 bullet connectors, male

   - Heat shrinks (recommend 4mm in width)

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


## Create an XT60 Connector Cable
Please skip this step if your kit already contains a completed XT60 connector cable:

<figure>
    <figcaption>Completed XT60 Connector</figcaption>
    <img style='width:220px' src="photos/xt60_complete.png"/>
</figure>

1. Gather the following parts:

    - XT60 connector (Female)

    - Protective casing for XT60 connector

    - 12AWG red wire, 12AWG black wire

    - Heat shrinks (recommend 5mm-9mm width)


    <figure>
        <figcaption>Parts for XT60 Connector</figcaption>
        <img style='width:300px' src="photos/XT60_connector_plus_red_and_black_wires.jpg"/>
    </figure>
    
    
2. Strip the red and black wires.

    <figure>
        <figcaption>Stripped Red and Black Wires</figcaption>
        <img style='width:300px' src="photos/12awg_red_black_stripped.jpg"/>
    </figure>

3. Insert the XT60 connector into one of the alligator clips of a pair of helping hands, with the positive (+) pin facing up.

4. Insert the exposed strands of the red wire into the positive (+) pin of the XT60 connector. If several extraneous strands lie outside the pin, then twist the wire in your fingers - this will get the strands to curl into the pin. Once sure that nearly all exposed strands are in the pin, attach the other alligator clip to the wire.

    <figure>
        <figcaption>Wire and XT60 Connector in Helping Hands</figcaption>
        <img style='width:400px' src="photos/xt60_and_wire_in_helping_hands_inked.jpg"/>
    </figure>

5. **Key Step:** Use a soldering iron to heat the top-side of the wire. Melt a pool of solder onto the wire (**not** onto the soldering iron tip directly). Once a medium-sized pool has formed, stop feeding solder into the pool. Then drag and smooth the pool of solder onto the top-side of the rest of the exposed wire and the top-side of the corresponding XT60 pin.     


    NOTE: Minimize the time spent applying heat to the pin via the soldering iron. Heat applied for too long will dislodge the pin from the casing!

    <figure class="flow-subfigures">  
        <figcaption>Solder XT60 Connector: Step 1, Solder Top</figcaption>
            <figure>
                <figcaption>Creating Solder Pool</figcaption>
                <img style='width:220px' src="photos/xt60_solder_top_1.jpg"/>
            </figure>
            <figure>  
                <figcaption>Dragging Pool Through</figcaption>
                <img style='width:222px' src="photos/xt60_solder_top_2.jpg"/>
            </figure>
    </figure>  


6. Rotate the helping hands up by ~90&deg; so that the front-side of the wire/pin is now facing up. Repeat the key step for this side.

    <figure class="flow-subfigures">  
        <figcaption>Solder XT60 Connector: Step 2, Solder Front</figcaption>
            <figure>
                <figcaption>Creating Solder Pool</figcaption>
                <img style='width:228px' src="photos/xt60_solder_front_1.jpg"/>
            </figure>
            <figure>  
                <figcaption>Dragging Pool Through</figcaption>
                <img style='width:200px' src="photos/xt60_solder_front_2.jpg"/>
            </figure>
    </figure>  

7. Rotate the helping hands back down by ~90&deg;. Then take the wire and XT60 connector out of the alligator clips, roll by 180&deg;, and put back into the alligator clips; this effectively turns the setup outside-in, making the bottom-side (i.e. side in-between the two pins) of the wire/pin face up. Repeat the key step for this side.

    <figure class="flow-subfigures">  
        <figcaption>Solder XT60 Connector: Step 3, Solder Bottom</figcaption>
            <figure>
                <figcaption>Creating Solder Pool</figcaption>
                <img style='width:220px' src="photos/xt60_solder_bottom_1.jpg"/>
            </figure>
            <figure>  
                <figcaption>Dragging Pool Through</figcaption>
                <img style='width:238px' src="photos/xt60_solder_bottom_2.jpg"/>
            </figure>
    </figure>

8. Rotate the helping hands up by ~90&deg; so that the front-side (i.e. original back-side) is facing up. Repeat the key step for this side.

    <figure class="flow-subfigures">  
        <figcaption>Solder XT60 Connector: Step 4, Solder Back</figcaption>
            <figure>
                <figcaption>Creating Solder Pool</figcaption>
                <img style='width:220px' src="photos/xt60_solder_back_1.jpg"/>
            </figure>
            <figure>  
                <figcaption>Dragging Pool Through</figcaption>
                <img style='width:220px' src="photos/xt60_solder_back_2.jpg"/>
            </figure>
    </figure>

9. Repeat the previous six steps for the negative (-) pin. Once complete, **verify that a red wire is connected to the positive (+) XT60 pin and a black wire is connected to the negative (-) XT60 pin**.

10. Apply heat shrinks to the red and black wires. Make sure the connector pins are covered by the heat shrinks.

11. Slide the protective casing through the red and black wires, then attach to the XT60 connector.       

    NOTE: It may help to lightly use a pair of long-nose pliers to attach the XT60 connector.
    
    <figure>
        <figcaption>Attaching Casing with Pliers</figcaption>
        <img style='width:200px' src="photos/using_pliers_to_attach_xt60_casing.jpg"/>
    </figure>

12. Strip and tin all wires of the completed XT60 connector cable (if not already done). This effectively amounts to stripping and tinning the other end of the red and black wires.

## Checkoff

- Visually inspect each ESC and verify that the heat shrinks are on properly; there should be no exposed wires and each heat shrink should be a tight fit.

- Visually inspect that each of the following is stripped and tinned: 4 ESCs, 4 motors, BEC, XT60 connector, red and brown wire pair.

- Visually inspect that a red wire is connected to the positive (+) XT60 pin and a black wire is connected to the negative (-) XT60 pin. A simple way to verify: a red wire should be connected to the pin on the flat side of the XT60 connector and a black wire should be connected to the pin on the rounded side of the XT60 connector.

- Do a [connectivity check](https://docs.duckietown.org/daffy/opmanual_sky/out/build_multimeter.html) on the XT60 connector cable; verify there is no short between the red and black wire.

- Do a [connectivity check](https://docs.duckietown.org/daffy/opmanual_sky/out/build_multimeter.html) on each ESC; for each ESC, verify there are no shorts between any two wires you soldered.
