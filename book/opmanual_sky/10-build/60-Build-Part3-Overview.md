# Part 3 Overview {#build-part3-overview status=ready}

## Preface
In this phase of the build, you'll be adding the essential elements of every drone-- the motors, ESCs, and the flight controller.

## Required Materials

<col2 figure-caption="Build Part 1 Materials" class="labels-row1">
    <span style="text-align:center">Part</span>  <span style="text-align:center">Quantity</span>
    <span style="text-align:center">Flight Controller</span> <span style="text-align:center">1</span>
    <span style="text-align:center">CCW Motors</span> <span style="text-align:center">2</span>
    <span style="text-align:center">CW Motors</span> <span style="text-align:center">2</span>
    <span style="text-align:center">Motor Screws (included with motors)</span> <span style="text-align:center">20</span>
    <span style="text-align:center">ESCs</span> <span style="text-align:center">4</span>
    <span style="text-align:center">ESCs</span> <span style="text-align:center">4</span>
    <span style="text-align:center">red wire, cut to 3 inch length</span> <span style="text-align:center">4</span>
    <span style="text-align:center">blue wire, cut to 3 inch length</span> <span style="text-align:center">4</span>
    <span style="text-align:center">yellow wire, cut to 3 inch length</span> <span style="text-align:center">4</span>
    <span style="text-align:center">black wire, cut to **6** inch length</span> <span style="text-align:center">1</span>
    <span style="text-align:center">red wire, cut to **6** inch length</span> <span style="text-align:center">1</span>
    <span style="text-align:center">Velcro Strap</span> <span style="text-align:center">1</span>
    <span style="text-align:center">Bullet Connectors, Female</span> <span style="text-align:center">12</span>
    <span style="text-align:center">Bullet Connectors, Male</span> <span style="text-align:center">12</span>
    <span style="text-align:center">Metal Standoffs</span> <span style="text-align:center">4</span>
    <span style="text-align:center">Soldering Tools</span> <span style="text-align:center">N/A</span>

</col2>

Note: the different colors of the 3 inch wires is only to make it easier to follow the build instructions. If you only have one color wire, that will work, too.

## Hardware

### Motors

<figure>
     <figcaption>Motors</figcaption>
    <img src="photos/motors.png" width="300"/>
</figure>

### ESCs

An Electronic Speed Controller (ESC) is used to regulate the speed of a motor according to a signal from the flight controller. A brushless motor would not be able to spin without an ESC, as they are responsible for changing the magnetic fields that generate a moment to make the motor spin.

<figure>
     <figcaption>Electronic Speed Controllers</figcaption>
    <img src="photos/esc.jpg" width="300"/>
</figure>

### Bullet Connectors

Bullet connectors are used to connect two wires together in a way that allows them to be disconnected easily. It is useful to use these to connect the motors to the ECSs because if a motor is spinning in the wrong direction, you can simply switch two of the motor/ESC connections and the motor direction will reverse (more on this Later). Additionally, If an ESC or motor goes bad, bullet connectors makes it easier to swap out those parts.

<figure class="flow-subfigures">  
    <figcaption>Bullet Connectors</figcaption>
    <figure>
       <figcaption>Female</figcaption>
       <img style='width:150px' src="photos/bullet-connector-female.png"/>
    </figure>
    <figure>  
       <figcaption>Male</figcaption>
       <img style='width:150px' src="photos/bullet-connector-male.png"/>
    </figure>
</figure>


### Metal Standoffs

Standoffs are used to separate layers of electronic circuits.

<figure>  
  <figcaption>Metal Standoff</figcaption>
  <img style='width:150px' src="photos/standoff.png"/>
</figure>


### Battery Monitoring Wire

The 6 inch red and black wire that you've cut will allow the flight controller to *monitor* the power traversing the PDB. For this reason, this pair of wires is called the *battery monitor lead*. The battery monitor lead ultimately allows the flight controller to read the battery voltage, which helps the software and the user not drain the battery too low.
