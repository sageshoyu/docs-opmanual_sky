# Part 3 Overview {#build-part3-overview status=ready}

## Preface
In this phase of the build, you'll be adding the essential elements of every drone-- the motors, ESCs, and the flight controller.

## Required Materials

- **Part : Quantity**
- [Flight Controller](#materials-fc) : 1
- [Counter-clockwise Motors](#materials-motors-ccw) : 2
- [Clockwise Motors](#materials-motors-cw) : 2
- [Long M3 Bolts](#materials-bolt-m3) (included w/ motor) : 16
- [Short M3 Bolts](#materials-bolt-m3) (included w/ motor) : 4
- [Electronic Speed Controllers](#materials-esc) (ESCs) : 4
- [ESC Wires](#materials-wires-esc)
- [Velcro Strap](#materials-velcro) : 1
- [Bullet Connectors](#materials-bullet-connectors) : 12 Plugs, 12 Sockets
- [Brass Standoffs](#materials-brass-standoffs) : 4
- [Soldering Tools](#materials-soldering-tools)


## Detailed Hardware Descriptions

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

## Build Progress

After completing this section, your build will match the diagram below. Compare this diagram to the [completed drone diagram](#diagram-complete) to see how what you're doing now fits into the final result.

<figure>  
  <figcaption> Diagram for Build Part 3 </figcaption>
  <img style='width:400px' src="photos/diagram-part3.png"/>
</figure>

 The Pi receives IMU sensor data from the flight controller, and sends the flight controller values for roll, pitch, yaw, and throttle. The flight controller converts these values to PWM commands for each motor, and sends the values to each ESC. The ESCs receive power from the PDB, and use the PWM signal from the flight controller to control how fast the motors are spinning.
