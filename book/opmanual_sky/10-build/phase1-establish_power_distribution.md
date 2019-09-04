# Phase 1: Establish Power Distribution {#part:build-assignment-X status=ready}
**Expected Time**: 2 hours

## Preface

A drone contains many electronic components that enable it to fly. These components require power (via a voltage source) in order to function. 

In this phase of the build, you will establish power distribution to your drone so that all its components receive power. At a high level, establishing power distribution requires the following:
- A component(s) which requires power
- A power connector cable that provides power when a power source (e.g. battery) is connected to it
- A PDB (i.e. Power Distribution Board) that receives power from a power connector cable and provides it to each component that requires power.

Visually, the flow of power looks like:

![Alt](/X.png "Title") <diagram of power flow to/from PDB>

## Tin the PDB

Similar to exposed wires, the metal pads on a PDB need to be tinned. This will allow tinned wires to be joined to the pads - and therefore the PDB.

**Your task** is to tin the PDB:

![Alt](/X.png "Title") <pic of tinned PDB;>

NOTE: you do not need to tin the 5V and 12V pads.

**WARNING**: Be careful not to aggresively push the soldering iron tip into the PDB, as too much force will cut the pads right off!

## Solder ESCs to the PDB

An ESC (i.e. Electronic Speed Control) is a component which requires power. It takes this power and provides a variable amount of it to a motor; since a motor's RPM depends on how much power it gets, an ESC can control how fast a motor spins by controlling how much power it supplies the motor.

**Your task** is to solder each of your 4 ESCs to the PDB:

![Alt](/X.png "Title") <pic of 4 ESCs soldered to PDB>

**WARNING**: do **NOT** solder the wires flat against the PDB - solder them at ~15&deg; angle. If you solder them flat, then you will not be able to fit the PDB into the drone frame.

## Solder BEC to the PDB

A BEC (i.e. Battery Eliminator Circuit) is a component which requires power. It takes this power and outputs a constant amount of lower power (in technical terms, it performs a *voltage drop*. Our BEC does a 12V to 5V voltage drop). The BEC is important because some components in latter phases require lower power than supplied by the battery.

**Your task** is to solder your BEC to the PDB:

![Alt](/X.png "Title") <pic of BEC soldered to PDB>

**WARNING**: solder the wires on the IN side of the BEC (i.e. the wires you tinned in the Prep Work phase) to the PDB, not the OUT side. "IN" is short for "input", which is why its wires should connect to the PDB.

**WARNING**: like before, solder wires at ~15&deg; angle.

## Solder red and brown wire pair to the PDB

The red and brown wire pair (from the flight controller box) is a component which requires power. It takes this power and simply passes it along to the white stub on the other end. What is the point of this? In a latter phase, you will connect the white stub to your flight controller. This will allow the flight controller to *observe* or *monitor* the power traversing the PDB. For this reason, the red and brown wire pair is called the *battery monitor lead*.

**Your task** is to solder the red and brown wire pair to the PDB. Due to its small size, you will need to solder onto another pair of wires, e.g. BEC wires. The red wire should connect to a positive (+) pad and the brown wire should connect to a negative (-) pad:

![Alt](/X.png "Title") <pic of red and brown wire pair soldered to PDB>

**WARNING**: while trying to solder on these wires, you may accidentally unsolder the existing wires from the PDB. We recommend temporarily holding down the existing wires with a long-nose plier, tape, or helping hands.

## Checkoff

- Visually inspect the drone to verify the following:
  - All red wires connected to the PDB are connected to positive (+) pads
  - All black wires connected to the PDB are connected to negative (-) pads
  - The wires on the IN side - **not** the OUT side - of the BEC are soldered to the PDB
  - For the battery monitor lead, the red wire is connected to a positive (+) pad while the brown wire is connected to a negative (-) pad

- Do a [connectivity check]() on the PDB; verify there is:
  - a short between any positive (+) pad and any other positive (+) pad
  - a short between any negative (-) pad and any other negative (-) pad
  - **no short** between any positive (+) pad and any negative (-) pad

- **ONLY** if the connectivity check passed, do a [DC voltage check]() on the PDB; plug in a 12V battery and verify there is:
  - ~0V between any positive (+) pad and any other positive (+) pad
  - ~0V between any negative (-) pad and any other negative (-) pad
  - ~12V between any positive (+) pad and any negative (-) pad. 
  
    NOTE: if the battery is X volts instead of 12 volts (e.g. 10), then the multimeter will show X volts instead of 12 volts.
