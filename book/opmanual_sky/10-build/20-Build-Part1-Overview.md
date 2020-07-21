# Part 1 Overview {#build-part1-overview status=ready}

## Preface

In this first part of the build, you will create a circuit to provide power to the Raspberry Pi from the battery. You will make the circuit connections using the soldering skills that you've gained from the Soldering Module.

First, we will reintroduce you to the components that you will be working with. Then, you will do some preliminary tasks that will run in the background. As those tasks are running, you will go through the first portion of the build.

## Required Materials

<col2 figure-caption="Build Part 1 Materials" class="labels-row1">
    <span style="text-align:center">Part</span>  <span style="text-align:center">Quantity</span>  
    <span style="text-align:center">Battery</span> <span style="text-align:center">1</span>
    <span style="text-align:center">Battery Charger</span> <span style="text-align:center">1</span>
    <span style="text-align:center">Battery Charging Cable</span> <span style="text-align:center">1</span>
    <span style="text-align:center">Power Distribution Board</span> <span style="text-align:center">1</span>
    <span style="text-align:center">Battery Eliminator Circuit</span> <span style="text-align:center">1</span>
    <span style="text-align:center">Pi Hat</span> <span style="text-align:center">1</span>
    <span style="text-align:center">LED</span> <span style="text-align:center">1</span>  
    <span style="text-align:center">Resistor</span> <span style="text-align:center">1</span>
    <span style="text-align:center">XT60 Connector</span> <span style="text-align:center">1</span>
    <span style="text-align:center">Soldering Tools</span> <span style="text-align:center">N/A</span>
    <span style="text-align:center">Raspberry Pi</span> <span style="text-align:center">1</span>
    <span style="text-align:center">Micro SD Card</span> <span style="text-align:center">1</span>
    <span style="text-align:center">Mirco SD Card Reader</span> <span style="text-align:center">N/A</span>
    <span style="text-align:center">Base Station</span> <span style="text-align:center">1</span>
</col2>


## Hardware Descriptions

### Battery

<figure>
     <figcaption>Battery</figcaption>
    <img src="photos/battery.png" width="250"/>
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
    <img src="photos/pdbtinned.png" width="250"/>
</figure>

The Power Distribution Board is used to distribute power from the battery to electrical components of the drone. The PDB an example of Printed Circuit Board (PCB), which is a circuit board that has connections within its structure. For the PDB, the internal wiring connects all of the positive (+) pads together, and all of the negative (-) pads together; this allows for the battery to be connected to one set of positive and negative pads, and all of the other pads receive power.

### BEC

<figure>
     <figcaption>Battery Eliminator Circuit</figcaption>
    <img src="photos/bec.png" width="250"/>
</figure>

The Battery Eliminator Circuit, or BEC, solves the issue that arises from different electrical components requiring different supply voltages. In the case of the drone, the LiPo battery used for outputs around 12V; this is the required voltage for the motors, but not for the Raspberry Pi, which requires 5V. The Battery Eliminator Circuit eliminates the need to carry multiple batteries of different voltages by converting the 12V supply from the battery down to a 5V supply for the Pi.

### Raspberry Pi

<figure>
    <figcaption>Raspberry Pi</figcaption>
    <img style='width:250px' src="photos/pi.jpg"/>
</figure>

The Raspberry Pi, or, Pi, is a low-cost, single-board computer. The Pi is capable of running a full desktop operating system; you can use it as a computer similar to the one you're using now. The Pi is used on the drone as the main computer that reads and processes all of the sensor data and user inputs, and then sends commands to the flight controller to control the drone motors. The drone would be able to fly without the Pi if a person had a remote controller to manually steer the drone. However, for the DuckieSky Drone, the person with a remote controller is replaced by software and sensors on the Pi. The Pi, as well as the sensors you will connect later, makes autonomous flight possible.

### Pi Hat

<figure>
    <figcaption>Pi Hat Front View</figcaption>
    <img style='width:250px' src="photos/pihat_front_view.jpg"/>
</figure>

The Pi hat is a special type of breadboard. One useful property of a breadboard is that it has *rails*. A rail is a sequence of holes that share an electrical connection:

<figure>
    <figcaption>Rails Highlighted on Back of Pi Hat</figcaption>
    <img style='width:250px' src="photos/pihat_rails.jpg"/>
</figure>

This is useful because: 1) it means every wire put on a rail will see the same measurement and 2) it does not matter into which hole on a rail a wire is inserted. For example, if wire A reports sensor measurements and is put into rail 1 hole 1, then wire B can go into any hole on rail 1 to receive the reports by wire A. Notice especially the long +5V rail; we can use any of the holes in this rails to provide power to components.

### Micro SD Card

The Micro SD card stores the operating system on the pi, as well as all of the software needed for autonomous flight.

<figure>
    <figcaption>Micro SD Card and Adapter</figcaption>
    <img style='width:200px' src="photos/sd-card.jpg"/>
</figure>

### Light Emitting Diode (LED)

<figure>  
  <figcaption> LED </figcaption>
  <img style='width:200px' src="photos/green-led.jpg"/>
</figure>

An LED is a device that emits light as current flows through it; the color of the light is based on the material properties of the LED. An LED has a polarity, meaning that current can only flow through the device in one direction. If electricity flows in the wrong direction, the device will be damaged; be sure to double check the LED direction before soldering. The correct direction of flow is from the **anode** (the positive terminal) to the **cathode** (the negative terminal). You will be able to identify the anode because it has a longer terminal, as shown in the image.

Another property of an LED is that it has very little resistance. Recall that Ohms states that **I = V / R**. The resistance of an LED is so low that we can assume it is zero. Plug zero into the equation and we get an infinite amount of current. In reality, the current is limited by the power source. Since there is such little resistance with the LED, if we created a circuit with only this element, it would burn out from too much current.

Q: Can you think of a way that we could limit the current passing through the LED?

A: If you though of using a resistor, then you're right!

### Resistor

Resistors are passive elements that add resistance to a circuit. Each resistor has a specific resistance and a tolerance. To determine the resistance of a resistor, one must look up the color code of the colored bands on the resistor. The resistor in the image is 680 Ohms.

Remark: if you have poor eyesight or experience difficulty seeing colors, it is useful to ask a friend to read the colors they see and you can look up the colors on the chart.

<figure>
    <figcaption>Resistor</figcaption>
    <img style='width:200px' src="photos/680-ohm.jpg"/>
</figure>

<figure>
    <figcaption>Resistor Color Chart</figcaption>
    <img style='width:250px' src="photos/resistor-color-chart.png"/>
</figure>

Q: Can you think of one reason for adding resistance to a circuit?

Hint: Think about Ohm's Law

A: According to Ohm's Law, if there is no resistance in a circuit

However, according to Ohm's law, **V = I x R**. If there is no resistance in a circuit, then there is no voltage, either. Image you have a battery and you connect just a wire from the positive terminal to the negative terminal. Sine the wire has very little resistance (metals are conductors), then the charge on the battery will immediately began to flow through the wire to create an equipotential across the wire (no voltage). There will be so many charges flowing (there will be a lot of current), that the wire may burn up, and the battery will likely be damaged.

In comes the resistor. If you connect just a resistor between the positive and negative terminal, then there won't be a surge of charge that will damage the battery. The current through the resistor will be limited by the resistors resistance, and there will be a voltage across the resistor according to Ohm's Law. From this example, we see that one important use of resistors is to limit the current though a circuit.


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
  <img style='width:216px' src="photos/part-1-circuit.png"/>
</figure>

The arrows represent the flow of electricity from the battery, through the PDB, into the Pi Hat, and finally to the Pi and the LED.
