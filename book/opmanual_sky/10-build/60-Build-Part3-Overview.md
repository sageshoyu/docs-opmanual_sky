# Part 3 Overview {#build-part3-overview status=ready}

## Preface
In this phase of the build, you'll be adding the essential elements of every drone-- the motors, ESCs, and the flight controller.

## Hardware

### Motors

<figure>
     <figcaption>Motors</figcaption>
    <img src="photos/motors.png" width="300"/>
</figure>

### ESCs

<figure>
     <figcaption>Electronic Speed Controllers</figcaption>
    <img src="photos/esc.jpg" width="300"/>
</figure>


### Battery Monitoring Wire

The red and brown wire pair (from the flight controller box) is a component which requires power. It takes this power and simply passes it along to the white stub on the other end. What is the point of this? In a latter phase, you will connect the white stub to your flight controller. This will allow the flight controller to *observe* or *monitor* the power traversing the PDB. For this reason, the red and brown wire pair is called the *battery monitor lead*.   

TODO: insert image
