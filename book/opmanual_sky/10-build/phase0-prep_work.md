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

## Stripping and Tinning Wires
**Stripping** is the process of removing a portion of insulator from a wire in order to expose its strands. It is done by using a wire stripper.

![Alt](/X.png "Title") <before/after pic of stripped wire;>

**Tinning** is the process of coating exposed wire with solder. It is done by using a soldering iron to melt solder onto exposed wire.

![Alt](/X.png "Title") <before/after pic of tinned wire;>

The purpose of stripping and tinning wires is to allow them to be joined together. By itself, stripping would not allow wires to be joined because the exposed wires would have no way to "stick" to each other:

![Alt](/X.png "Title") <pic of stripped wires trying to be joined;>

However, tinning *does* allow exposed wires to "stick" (i.e. join) to each other; since solder turns into a liquid when exposed to high heat, but back into a solid when heat is removed, wires can be joined by:
1. Putting the tinned wires next to each other (so they are touching)

  ![Alt](/X.png "Title") <pic of tinned wires next to each other;>
  
2. Heating the solder on both wires simultaneously so each turns into a liquid blob. The liquid blobs will then combine into a larger liquid blob.

  ![Alt](/X.png "Title") <pic of simultaneous melting;>
  
3. Removing the heat so the larger liquid blob solidifies, thus joining the two wires.

  ![Alt](/X.png "Title") <pic of solidified blob, i.e. joined wires;>

Furthermore, since solder is conductive, the resulting joint acts as a bridge for electricity traveling between the connected wires!

**Your task**, then, is to strip and tin all of your parts so that they can be joined together in the next phases:
- ESCs

  ![Alt](/X.png "Title") <before/after pic of ESCs stripped and tinned;>
  
- Motors

  ![Alt](/X.png "Title") <before/after pic of motors stripped and tinned;>
  
- BEC (NOTE: only tin red and black wires on the IN side of BEC)
  
  ![Alt](/X.png "Title") <before/after pic of BEC stripped and tinned;>
  
- Red and brown wire pair in flight controller box (NOTE: do **not** substitute with another wire pair in the box)

  ![Alt](/X.png "Title") <before/after pic of red/brown wire stripped and tinned;>

## Soldering wires on ESC pads

1. Gather the following parts:
   - 4 ESCs
   - Heat Shrinks (recommend 13mm width)
   - 12 pieces of wire (recommend 4 red, 4 yellow, and 4 blue - each 3in. length)
   
   ![Alt](/X.png "Title") <pic of listed parts;>

For each ESC:

2. Use your fingers (or small wire cutters) to very *carefully* remove excess material from each ESC pad.

   ![Alt](/X.png "Title") <before/after pic of excess material removed from pads;>

3. Solder the following:
   - 1 red wire on pad A
   - 1 yellow wire on pad B
   - 1 blue wire on pad C
   
   (NOTE: the wire colors are purely our convention. Feel free to use other colors if needed.)
   
   ![Alt](/X.png "Title") <pic of pads A, B, and C; pic of red soldered on A, yellow soldered on B, blue soldered on C;>
   
4. Do a [connectivity check]() between each pair of soldered wires (recommend doing this now instead of in checkoff later).

5. Put a heat shrink over the ESC. The heat shrink should cover (length-wise) the exposed soldered wires on one end and half the ESC on the other end. Use a heat gun to shrink the heat shrink.

   ![Alt](/X.png "Title") <before/after pic of heat shrink on ESC;>
   
6. Strip and tin the completed ESC.

## Creating an XT60 Connector Cable
Please skip this step if your kit already contains a completed XT60 connector cable:

![Alt](/X.png "Title") <pic of complete XT60H connector cable;>

1. Gather the following parts:
    - XT60 connector (Female)
    - Protective casing for XT60 connector (optional)
    - 12AWG red wire, 12AWG black wire
    - Heat shrinks (recommend 5mm-9mm width)
    
    ![Alt](/X.png "Title") <pic of parts listed above;>
    
2. Follow this [guide](http://www.mindsensors.com/blog/how-to/tutorial-soldering-xt60-connectors) on creating an XT60 connector cable.
3. Slide the protective casing through the red and black wires, then attach to XT60 connector (optional).
4. Strip and tin your completed XT60 connector cable.

## Checkoff
- Do a [connectivity check]() on the XT60 connector cable; verify there is no short between the red and black wire.
- Do a [connectivity check]() on each ESC; for each ESC, verify there are no shorts between any two wires you soldered.
- Visually inspect each ESC and verify that the heat shrinks are on properly; there should be no exposed wires and each heat shrink should be a tight fit.
- Visually inspect that each of the following is stripped and tinned: 4 ESCs, 4 motors, BEC, XT60 connector, red and brown wire pair.
