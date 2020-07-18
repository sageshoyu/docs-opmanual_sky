# Part 1 Overview {#build-part1-overview status=ready}

**Expected Time**: 1 hour

## Preface

In this first part of the build, you will create a circuit to provide power to the Raspberry Pi from the battery. You will make the circuit connections using the soldering skills that you've gained from the Soldering Module.

First, we will reintroduce you to the components that you will be working with. Then, you will do some preliminary tasks that will run in the background. As those tasks are running, you will go through the first portion of the build.


## Hardware Descriptions


### Battery

<figure>
     <figcaption>Battery</figcaption>
    <img src="photos/battery.png" width="300"/>
</figure>

The Battery on your drone is a 1500mAh 3S 20C LiPo Battery. Let's go over what all that means.

**Capacity**

The unit milliAmp hour, or mAh, is a measure of how much charge a battery can hold. The higher this number is, the more charge the battery can hold; therefore, the battery will "last" longer and your drone will fly for a longer time without needing to be recharged.

**Structure**

A Lithium-ion polymer (LiPo) battery is made up of one or more LiPo cells. Each cell has a voltage of 3.7 V when it is discharged, and 4.2 V when it is charged. The cells in your battery are connected in series, so that the voltages add together to get a total of 11.1 V when discharged, and 12.6 V when charged. There are *three cells* connected in *series* in your battery, so it is a **3S** battery.

**Current Output**

The "C" rating of a LiPo Battery determines how much current the battery can deliver. The maximum current current draw is equal to the battery's **C** rating multiplied by the battery's capacity. For the drone's 1500mAh 20C batteries, the maximum current draw is 1500mAh x 20C = 30A.

**Precautions**

Taking the proper precautions when using, storing, or charging is very important to keeping the battery safe. Only store the battery at room temperature and out of direct sun light.  Do not discharge a battery below 10.5 V. Do not leave the battery charging unattended. Unplug the battery once it is fully charged.

### Power Distribution Board (PDB)

<figure>
     <figcaption>Power Distribution Board (after tinning)</figcaption>
    <img src="photos/pdbtinned.png" width="300"/>
</figure>

The Power Distribution Board is used to distribute power from the battery to electrical components of the drone. The PDB an example of Printed Circuit Board (PCB), which is a circuit board that has connections within its structure. For the PDB, the internal wiring connects all of the positive (+) pads together, and all of the negative (-) pads together; this allows for the battery to be connected to one set of positive and negative pads, and all of the other pads receive power.

### BEC

<figure>
     <figcaption>Battery Eliminator Circuit</figcaption>
    <img src="photos/bec.png" width="300"/>
</figure>

A BEC (i.e. Battery Eliminator Circuit) is a component which requires power. It takes this power and outputs a constant amount of lower power (in technical terms, it performs a voltage drop. Our BEC does a 12V to 5V voltage drop). The BEC is important because some components in latter phases require lower power than supplied by the battery.

### Pi Hat

<figure>
    <figcaption>Pi Hat Front View</figcaption>
    <img style='width:350px' src="photos/pihat_front_view.jpg"/>
</figure>

The Pi hat is a special type of breadboard. One useful property of a breadboard is that it has *rails*. A rail is a sequence of holes that share an electrical connection:

<figure>
    <figcaption>Rails Highlighted on Back of Pi Hat</figcaption>
    <img style='width:350px' src="photos/pihat_rails.jpg"/>
</figure>

This is useful because: 1) it means every wire put on a rail will see the same measurement and 2) it does not matter into which hole on a rail a wire is inserted. For example, if wire A reports sensor measurements and is put into rail 1 hole 1, then wire B can go into any hole on rail 1 to receive the reports by wire A. Notice especially the long +5V rail; we can use any of the holes in this rails to provide power to components.


### Light Emitting Diode (LED)
<figure>  
  <figcaption> LED </figcaption>
  <img style='width:216px' src="photos/no_image.png"/>
</figure>

An LED is a device that emits light as current flows through it; the color of the light is based on the material properties of the LED. An LED has a polarity, meaning that current can only flow through the device in one direction. If electricity flows in the wrong direction, the device will be damaged; be sure to double check the LED direction before soldering. The correct direction of flow is from the **anode** (the positive terminal) to the **cathode** (the negative terminal). You will be able to identify the anode because it has a longer terminal, as shown in the image.

Another property of an LED is that it has very little resistance. Recall that Ohms states that **I = V / R**. The resistance of an LED is so low that we can assume it is zero. Plug zero into the equation and we get an infinite amount of current. In reality, the current is limited by the power source. Since there is such little resistance with the LED, if we created a circuit with only this element, it would burn out from too much current.

Q: Can you think of a way that we could limit the current passing through the LED?

A: If you though of using a resistor, then you're right!

### Resistor
Resistors are passive elements that add resistance to a circuit. It might seem counter-intuitive at first to add resistance. However, according to Ohm's law, **V = I x R**. If there is no resistance in a circuit, then there is no voltage, either. Image you have a battery and you connect just a wire from the positive terminal to the negative terminal. Sine the wire has very little resistance (metals are conductors), then the charge on the battery will immediately began to flow through the wire to create an equipotential across the wire (no voltage). There will be so many charges flowing (there will be a lot of current), that the wire may burn up, and the battery will likely be damaged.

In comes the resistor. If you connect just a resistor between the positive and negative terminal, then there won't be a surge of charge that will damage the battery. The current through the resistor will be limited by Ohm's law, and there will be a voltage across the resistor. From this example, we see that one important use of resistors is to limit the current in a circuit.

<!-- TODO: what LED's are we using?

Let's get back to our LED problem. The LED you have has a forward voltage of 3V, and can handle up to 20mA of current. The forward voltage is the minimum amount of voltage needed for current to flow through the device. To calculate the resistance needed, the formula is R = (V_s-V_f) / I, where V_s is the source voltage, V_f is the forward voltage, and I is the desired current. For our LED, we find the minimum resistance to be  -->

<figure>  
  <figcaption> Resistor </figcaption>
  <img style='width:216px' src="photos/no_image.png"/>
</figure>


### XT60 Connector

<figure>  
  <figcaption> XT60 Connector </figcaption>
  <img style='width:216px' src="xt60_complete.png"/>
</figure>


An XT60 connector cable is a component which provides power when a power source (e.g. battery) is connected to it. By soldering it to the PDB, the PDB will get power to distribute to other components.

## Circuit Diagram

You are going to create a simple circuit using an LED and resistor that will allow you to control the LED using the Raspberry Pi. Later in the course, you'll learn how to write a script to turn the LED on and off, as well as vary its brightness!

The circuit you'll be making looks like this:

<figure>  
  <figcaption> Circuit Diagram for Build Part 1 </figcaption>
  <img style='width:216px' src="photos/no_image.png"/>
</figure>

The arrows represent the flow of electricity from the battery, through the PDB, into the Pi Hat, and finally to the Pi and the LED.


## Preliminary Tasks

### Charge the Battery

1) Plug the power cord into a wall outlet

2) Plug the round end of the power cord into the battery charger

3) Plug the white connector on the battery into the charger with the ridges facing up

<figure>  
  <figcaption> Charging Setup </figcaption>
  <img style='width:216px' src="photos/no_image.png"/>
</figure>

### Flash the SD card

In order for the drone to operate autonomously, it must have an intelligent system in place which dictates what to do. Our software stack will be such a system, which we will load into the drone's computer using an SD card.

1) Gather the following:
    - A workstation (or personal computer)
    - Micro SD card

2) On a workstation, download the image flashing tool [Etcher](https://www.balena.io/etcher/).

3) On a workstation, download the latest drone [image](https://drive.google.com/file/d/1ogPrxXBpXa6Tbv3xpYZcvCc_7EXD-w7S/view?usp=sharing).

4) Connect the micro SD card to the workstation.

5) Open Etcher and select the downloaded drone image. Then select the micro SD card as the drive to flash. Finally, click the "Flash" button.

NOTE: flashing will take 1 - 2 hours. In the meantime, you can move on to the next sections.
