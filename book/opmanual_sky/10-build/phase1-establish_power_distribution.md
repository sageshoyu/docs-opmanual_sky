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

Similar to exposed wires, the square metal pads on a PDB need to be tinned. This will allow tinned wires to be joined to the pads - and therefore the PDB.

**Your task** is to tin the PDB:

![Alt](/X.png "Title") <pic of tinned PDB>

NOTE: you do not need to tin the 5V and 12V pads.

## Solder ESCs to the PDB

An ESC (i.e. Electronic Speed Control) is a component which requires power. It takes this power and provides a variable amount of it to a motor; since a motor's RPM depends on how much power it gets, an ESC can control how fast a motor spins by controlling how much power it supplies the motor.

**Your task** is to solder each of your 4 ESCs to the PDB:

![Alt](/X.png "Title") <pic of 4 ESCs soldered to PDB>

**WARNING**: do **NOT** solder the wires flat against the PDB - solder them at ~15&deg; angle. If you solder them flat, then you will not be able to fit the PDB into the drone frame.

## Solder BEC to the PDB

A BEC (i.e. Battery Eliminator Circuit) is a component which requires power. It takes this power and outputs a constant amount of lower power (in technical terms, it performs a *voltage drop*. Our BEC does a 12V to 5V voltage drop). The BEC is important because some components in latter phases require lower power than supplied by the battery.

**Your task** is to solder your BEC to the PDB:

![Alt](/X.png "Title") <pic of BEC soldered to PDB>

**WARNING**: like before, solder the BEC wires at ~15&deg; angle.

## Checkoff
