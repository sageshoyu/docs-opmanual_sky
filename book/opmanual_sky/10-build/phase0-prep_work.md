# Phase 0: Prep Work {#part:build-assignment-X status=ready}
**Expected Time**: 3.5 hours

## Preface

Before you begin, please ensure you have all the parts in the [parts and materials list]().

In this phase of the build, you will do prep work for the next phases of the build. This phase will require a lot of soldering, so please go through a [soldering tutorial](https://www.youtube.com/watch?v=Qps9woUGkvI) before starting.

Safety tips:
- Be careful holding wires and components with your bare hands while soldering, as they will get very hot very quickly. We recommend using a long-nose plier or helping hands whenever possible.
- Don't touch the soldering iron tip (or any other metal piece) while the soldering iron is on, since doing so can cause burns. If you get burned, rinse the affected area with cold water immediately.
- Likewise, don't use the soldering iron on anything you don't intend to solder. The high heat will cause things to melt or burn.
- Don't breathe soldering fumes; use a soldering fan whenever possible.
- If you have difficulty soldering (e.g. shaky hands), please seek the advice of a TA or teacher.

## Strip and Tin Wires
**Stripping** is the process of removing a portion of insulator from a wire in order to expose its strands. It is done by using a wire stripper.

<figure>
    <figcaption>An unstripped wire</figcaption>
    <img style='width:35em' src="phase_0_photos/wire.jpg" width="500"/>
</figure>  

<figure>
    <figcaption>A stripped wire</figcaption>
    <img style='width:35em' src="phase_0_photos/stripped_wire.jpg" width="500"/>
</figure>  

**Tinning** is the process of applying solder to exposed wire. It is done by using a soldering iron to melt solder into the exposed wire.

<figure>
    <figcaption>A wire before tinning</figcaption>
    <img style='width:35em' src="phase_0_photos/untinned_wire.jpg" width="500"/>
</figure>  

<figure>
    <figcaption>A tinned wire</figcaption>
    <img style='width:35em' src="phase_0_photos/tinned_wire.jpg" width="500"/>
</figure>  

The purpose of stripping and tinning wires is to allow them to be joined together. By itself, stripping would not allow wires to be joined because the exposed wires would have no way to "stick" to each other.

However, tinning *does* allow exposed wires to "stick" (i.e. join) to each other by using the fact that solder turns into a liquid when exposed to high heat, but into a solid when the heat is removed; this means wires can be joined by:
1. Putting the tinned wires next to each other so they are touching.
2. Heating solder on both wires simultaneously so each turns into a liquid. The liquids will then combine.
3. Removing the heat so the liquid solidifies, thus joining the two wires.

See this [tutorial](https://www.youtube.com/watch?v=pRPF4wpXX9Q) to learn how to tin and join two wires.

Furthermore, since solder is conductive, the resulting joint acts as a bridge for electricity traveling between the connected wires! 

**Your task** in this phase is to strip and tin all of your parts, so that in latter phases they can be joined together:

- 4 ESCs

<figure>
    <figcaption>A tinned ESC</figcaption>
    <img style='width:35em' src="phase_0_photos/tinned_esc_2.jpg" width="500"/>
</figure>  
  
- 4 Motors

<figure>
    <figcaption>A tinned motor</figcaption>
    <img style='width:35em' src="phase_0_photos/tinned_motor.jpg" width="500"/>
</figure>  
  
- BEC (NOTE: only tin red and black wires on the IN side of BEC)
  
<figure>
    <figcaption>A tinned BEC</figcaption>
    <img style='width:35em' src="phase_0_photos/tinned_bec.jpg" width="500"/>
</figure>  
  
- Red and brown wire pair in flight controller box (NOTE: do **NOT** substitute with any other wire pair in the box)

<figure>
    <figcaption>A tinned red and brown wire pair</figcaption>
    <img style='width:35em' src="phase_0_photos/tinned_red_brown.jpg" width="500"/>
</figure>  

## Solder wires onto ESC pads

In this section, you will prepare your ESCs:

1. Gather the following parts:
   - 4 ESCs
   - Heat Shrinks (recommend 13mm width)
   - 12 pieces of wire (recommend 4 red, 4 yellow, and 4 blue - each 3in. length)

For each ESC:

2. Use your fingers (or small wire cutters) to *very carefully* remove excess material from each ESC pad.

<figure>
    <figcaption>Excess material on ESC pads</figcaption>
    <img style='width:35em' src="phase_0_photos/uncut_esc_pads.jpg" width="500"/>
</figure>  

<figure>
    <figcaption>ESC pads without excess material</figcaption>
    <img style='width:35em' src="phase_0_photos/improved_esc_pads.jpg" width="500"/>
</figure>  

3. Solder the following:
   - 1 red wire on pad A
   - 1 yellow wire on pad B
   - 1 blue wire on pad C
   
   (NOTE: the wire colors are purely our convention. Feel free to use other colors if needed.)
   
<figure>
    <figcaption>A prepared ESC</figcaption>
    <img style='width:35em' src="phase_0_photos/colorful_esc.jpg" width="500"/>
</figure>  
   
4. Do a [connectivity check]() between each pair of soldered wires (recommend doing this now instead of in checkoff later).

5. Put a heat shrink over the ESC. The heat shrink should cover (length-wise) the exposed soldered wires on one end and half the ESC on the other end. Use a heat gun to shrink the heat shrink.

<figure>
    <figcaption>A prepared ESC with heat shrink on</figcaption>
    <img style='width:35em' src="phase_0_photos/colorful_esc_shrinkwrap2.jpg" width="500"/>
</figure>  
   
6. Strip and tin all wires of the completed ESC (if not already done).

## Create an XT60 Connector Cable
Please skip this step if your kit already contains a completed XT60 connector cable:

<figure>Completed XT60 Connector</figcaption>
    <img style='width:35em' src="phase_0_photos/xt60_complete.png" height="500"/>
    </figure>  

1. Gather the following parts:
    - XT60 connector (Female)
    - Protective casing for XT60 connector (optional)
    - 12AWG red wire, 12AWG black wire
    - Heat shrinks (recommend 5mm-9mm width)
    
    <figure>
    <figcaption>Parts of XT60 connector</figcaption>
    <img style='width:35em' src="phase_0_photos/XT60_connector_plus_red_and_black_wires.jpg" height="500"/>
    </figure>  
    
2. Follow this [guide](http://www.mindsensors.com/blog/how-to/tutorial-soldering-xt60-connectors) on creating an XT60 connector cable.
3. Slide the protective casing through the red and black wires, then attach to XT60 connector (optional).
4. Strip and tin all wires of the completed XT60 connector cable (if not already done).

## Checkoff
- Do a [connectivity check]() on the XT60 connector cable; verify there is no short between the red and black wire.
- Do a [connectivity check]() on each ESC; for each ESC, verify there are no shorts between any two wires you soldered.
- Visually inspect each ESC and verify that the heat shrinks are on properly; there should be no exposed wires and each heat shrink should be a tight fit.
- Visually inspect that each of the following is stripped and tinned: 4 ESCs, 4 motors, BEC, XT60 connector, red and brown wire pair.
