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

| An unstripped wire        |  A stripped wire          |
|:-------------------------:|:-------------------------:|
|<img src="photos/wire.jpg" width="250"/>  |  <img src="photos/stripped_wire.jpg" width="250"/> |

**Tinning** is the process of applying solder to exposed wire. It is done by using a soldering iron to melt solder into the exposed wire.    

| A wire before tinning     |  A tinned wire            |
|:-------------------------:|:-------------------------:|
|<img src="photos/pre_tinned_1.jpg" width="237"/>  |  <img src="photos/post_tinned_1.jpg" width="250"/> |


The purpose of stripping and tinning wires is to allow them to be joined together. By itself, stripping would not allow wires to be joined because the exposed wires would have no way to "stick" to each other.

However, tinning *does* allow exposed wires to "stick" (i.e. join) to each other by using the fact that solder turns into a liquid when exposed to high heat, but into a solid when the heat is removed; this means wires can be joined by:

1. Putting the tinned wires next to each other so they are touching.

2. Heating solder on both wires simultaneously so each turns into a liquid. The liquids will then combine.

3. Removing the heat so the liquid solidifies, thus joining the two wires.

See this [tutorial](https://www.youtube.com/watch?v=pRPF4wpXX9Q) to learn how to tin and join two wires.

An alternate way to tin a wire would be to wrap the wire with solder, then melt with a soldering iron:

| A wire before tinning     |  A tinned wire            |
|:-------------------------:|:-------------------------:|
|<img src="photos/pre_tinned_2.jpg" width="244.5"/>  |  <img src="photos/post_tinned_2.jpg" width="250"/> |

Furthermore, since solder is conductive, the resulting joint acts as a bridge for electricity traveling between the connected wires! 

**Action Items:** 

- In this phase, strip and tin all of your parts, so that in latter phases they can be joined together.  
- Notes:
    - Sometimes parts will have wires already tinned out-of-the-box by the manufacturer (i.e. pre-tinned). You can identify this by: 1) the "shininess" of the tip of a wire and 2) the inability to fray the wire strands of the tip of a wire. However, such tinning is often ineffective. Cut off any pre-tinned tips, then strip and tin the part yourself.
    - Only tin red and black wires on the IN side of BEC.
    - Do **not** substitute the red and brown wire pair in the flight controller box with any other wire pair in the box.
    - If the red and brown wire pair has a black connector on each wire, then cut off each black connector. Strip and tin the remaining portion of each wire.
    - Do **not** cut off the white connector from the red and brown wire pair. If you accidentally do, then seek the help of a TA or teacher to solder the white connector back on the wires.

    | Part Name                           | Amount                    |  After Tinning Picture    |
    |:-----------------------------------:|:-------------------------:|:-------------------------:|
    | ESC                                 | 4                         |  <img src="photos/tinned_esc_2.jpg" width="250" /> |
    | Motor                               | 4                         |  <img src="photos/tinned_motor.jpg" width="250" /> |
    | BEC                                 | 1                         |  <img src="photos/tinned_bec.jpg" width="250" /> |
    | Red and brown wire pair (in FC box) | 1                         |  <img src="photos/tinned_red_brown.jpg" width="250"/> | 

## Solder wires onto ESC pads

In this section, you will prepare your ESCs. Each ESC has 3 pads labeled A, B, and C. The labels are on the bottom of the ESC:

| Pad letters
|:-------------------------:
| <img src="photos/ABC_pads_on_ESC.jpg" width="400"/>

1. Gather the following parts: 
    * 4 ESCs
    * Heat Shrinks (recommend 13mm width)
    * 12 pieces of wire (recommend 4 red, 4 yellow, and 4 blue - each 3in. length)

2. For each ESC:
    1. Use your fingers (or small wire cutters) to *very carefully* remove excess material from each ESC pad.
    
        | Excess material on ESC pads | After removal of excess material 
        |:---------------------------:|:-----------------------------:
        | <img src="photos/ESC_pads_unclean_inked.jpg" width="250"/> | <img src="photos/ESC_pads_clean_inked.jpg" width="250"/> |


    2. Strip one end of a red wire. Wrap solder around the exposed strands, especially around the tip of the wire. DO NOT tin the wrapped solder.
        
    3. Using long-nosed pliers, lightly push the wrapped wire end onto pad A.
    
        | Wire pushed onto pad
        |:---------------------------: 
        | <img src="photos/wire_pushed_onto_esc_pad_inked.jpg" width="750"/> |
    
    
    4. Use a soldering iron to simultaneously melt the wrapped solder into the wire and pad A. The best way to do this is to place the edge of the soldering iron tip against the left-hand side of the pad - thus touching both the pad and the wire. Smooth out the melted solder by carrying the soldering iron from the left-hand side to the top, then down the right-hand side of the pad. If needed, repeat the motion back-and-forth or focus on any side (i.e. left, top, right) of the joint.
    
        | Motion 1  | Motion 2 | Motion 3 | 
        |:---------:|:--------:|:---------:
        | <img src="photos/solder_onto_pad_motion_1_inked.jpg" width="250"/> | <img src="photos/solder_onto_pad_motion_2_inked.jpg" width="250"/> | <img src="photos/solder_onto_pad_motion_3_inked.jpg" width="250"/>
    
    5. Lightly pull the wire soldered to the pad and verify it stays on. If it does, melt the rest of the wrapped solder into the wire (i.e. tin it).
    
    6. Repeat the previous four steps for the other pads, specifically a yellow wire on pad B and a blue wire on pad C.
    
       **NOTE:** the wire colors are purely our convention. Feel free to use other colors if needed.
   
    7. Do a [connectivity check](https://docs.duckietown.org/daffy/opmanual_sky/out/build_multimeter.html) between each pair of soldered wires (recommend doing this now instead of in checkoff later).

        | RY check | RB check | YB check
        |:--------:|:--------:|:---------:
        | <img src="photos/conn_check_RY.jpg" width="250"/> | <img src="photos/conn_check_RB.jpg" width="250"/> | <img src="photos/conn_check_YB.jpg" width="250"/>  

    8. Put a heat shrink over the ESC. The heat shrink should cover (length-wise) the exposed soldered wires on one end and half the ESC on the other end. Apply heat to shrink the heat shrink.
   
        | A Prepared ESC | A Prepared ESC with heat shrink |
        |:-------------------------:|:-------------------------:
        | <img src="photos/colorful_esc.jpg" width="250"/> | <img src="photos/colorful_esc_shrinkwrap2.jpg" width="250"/>   
   
    9. Strip and tin all wires of the completed ESC (if not already done). This effectively amounts to stripping and tinning the other end of the red, yellow, and blue wires.

## Solder bullet connectors

Before beginning this section, please refer to a bullet connector soldering [tutorial](https://www.youtube.com/watch?v=u--Kvz8hksE).

**NOTE:** You can use any setup to hold the bullet connector, so long as the setup is not thermally conductive.

1. Gather the following parts:

   - 4 completed ESCs

   - 4 motors

   - 12 bullet connectors, female

   - 12 bullet connectors, male

   - Heat shrinks (recommend 4mm in width)

2. For each ESC:
    
    1. Solder a female bullet connector to each of the 3 ESC wires (i.e. red, yellow, blue).
    
        | Female bullet connectors on ESC wires (ignore wrong color of wires)
        |:-------------------------:
        | <img src="photos/bullet_connectors_in_esc.jpg" width="400"/>
    
    
    2. Put a heat shrink over each solder joint. For female connectors: the heat shrink should cover the solder joint on one end and run the entire length of the bullet connector. Apply heat to shrink the heat shrink.
    
        | Female bullet connect with heat shrink
        |:-------------------------:
        | <img src="photos/ESC_bullet_connectors_heat_shrinked.jpg" width="400"/>

3. For each motor:

    1. Solder a male bullet connector to each of the motor's wires.
        
        | Male bullet connectors on motor wires
        |:-------------------------:
        | <img src="photos/motor_with_bullet_connectors.jpg" width="400"/>
        
    2. Put a heat shrink over each solder joint. For male connectors: the heat shrink should cover the solder joint on one end and run only the short length of the cylindrical part. Apply heat to shrink the heat shrink.
    
        | Male bullet connector with heat shrink
        |:-------------------------:
        | <img src="photos/motor_bullet_connector_heat_shrinked.jpg" width="400"/> 

## Create an XT60 Connector Cable
Please skip this step if your kit already contains a completed XT60 connector cable:

| Completed XT60 Connector
|:-------------------------:
| <img src="photos/xt60_complete.png" width="250"/>

1. Gather the following parts:

    - XT60 connector (Female)

    - Protective casing for XT60 connector

    - 12AWG red wire, 12AWG black wire

    - Heat shrinks (recommend 5mm-9mm width)
    
      | Parts for XT60 connector
      |:-------------------------:
      | <img src="photos/XT60_connector_plus_red_and_black_wires.jpg" width="300"/> 
    
    
2. Strip the red and black wires.

    | Stripped red and black wires
    |:-------------------------:
    | <img src="photos/12awg_red_black_stripped.jpg" width="400"/> 

3. Insert the XT60 connector into one of the alligator clips of a pair of helping hands, with the positive (+) pin facing up.

4. Insert the exposed strands of the red wire into the positive (+) pin of the XT60 connector. If several extraneous strands lie outside the pin, then twist the wire in your fingers - this will get the strands to curl into the pin. Once sure that nearly all exposed strands are in the pin, attach the other alligator clip to the wire.

    | Wire and XT60 connector in helping hands
    |:-------------------------:
    | <img src="photos/xt60_and_wire_in_helping_hands_inked.jpg" width="750"/>

5. **Key Step:** Use a soldering iron to heat the top-side of the wire. Melt a pool of solder onto the wire (**not** onto the soldering iron tip directly). Once a medium-sized pool has formed, stop feeding solder into the pool. Then drag and smooth the pool of solder onto the top-side of the rest of the exposed wire and the top-side of the corresponding XT60 pin. 

    **NOTE:** Minimize the time spent applying heat to the pin via the soldering iron. Heat applied for too long will dislodge the pin from the casing!

    | Creating solder pool | Dragging pool through
    |:--------------------:|:----------------------:
    | <img src="photos/xt60_solder_top_1.jpg" width="400"/> | <img src="photos/xt60_solder_top_2.jpg" width="400"/>


6. Rotate the helping hands up by ~90&deg; so that the front-side of the wire/pin is now facing up. Repeat the key step for this side.

    | Creating solder pool | Dragging pool through
    |:--------------------:|:----------------------:
    | <img src="photos/xt60_solder_front_1.jpg" width="400"/> | <img src="photos/xt60_solder_front_2.jpg" width="400"/>

7. Rotate the helping hands back down by ~90&deg;. Then take the wire and XT60 connector out of the alligator clips, roll by 180&deg;, and put back into the alligator clips; this effectively turns the setup outside-in, making the bottom-side (i.e. side in-between the two pins) of the wire/pin face up. Repeat the key step for this side.

    | Creating solder pool | Dragging pool through
    |:--------------------:|:----------------------:
    | <img src="photos/xt60_solder_bottom_1.jpg" width="400"/> | <img src="photos/xt60_solder_bottom_2.jpg" width="400"/>

8. Rotate the helping hands up by ~90&deg; so that the front-side (i.e. original back-side) is facing up. Repeat the key step for this side.

    | Creating solder pool | Dragging pool through
    |:--------------------:|:----------------------:
    | <img src="photos/xt60_solder_back_1.jpg" width="400"/> | <img src="photos/xt60_solder_back_2.jpg" width="400"/>

9. Repeat the previous six steps for the negative (-) pin.

10. Apply heat shrinks to the red and black wires. Make sure the connector pins are covered by the heat shrinks.

11. Slide the protective casing through the red and black wires, then attach to the XT60 connector.

    **NOTE:** It may help to lightly use a pair of long-nose pliers to attach the XT60 connector.
    
    | Attaching casing with pliers
    |:-------------------------:
    | <img src="photos/using_pliers_to_attach_xt60_casing.jpg" width="250"/>

12. Strip and tin all wires of the completed XT60 connector cable (if not already done). This effectively amounts to stripping and tinning the other end of the red and black wires.

## Checkoff

- Visually inspect each ESC and verify that the heat shrinks are on properly; there should be no exposed wires and each heat shrink should be a tight fit.

- Visually inspect that each of the following is stripped and tinned: 4 ESCs, 4 motors, BEC, XT60 connector, red and brown wire pair.

- Do a [connectivity check](https://docs.duckietown.org/daffy/opmanual_sky/out/build_multimeter.html) on the XT60 connector cable; verify there is no short between the red and black wire.

- Do a [connectivity check](https://docs.duckietown.org/daffy/opmanual_sky/out/build_multimeter.html) on each ESC; for each ESC, verify there are no shorts between any two wires you soldered.
