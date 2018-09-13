# Raspberry PI {#build-assignment-7 status=ready}
This step describes how to attach the PI to your drone.

## Flash the Pi SD Card
Download the SD card [image](). The image is not quite ready, but will be
posted shortly! Flash your SD card using the following
[instructions](https://www.raspberrypi.org/documentation/installation/installing-images/).
The image povided comes with Raspbian, ROS, and other software preinstalled.

Your card should now be flashed.

## Mount the PI
We designed and 3D printed a mount to attach the Raspberry Pi to the top of the drone.

For wire cleanliness try to fit all ESCs as shown below.
<figure>
    <figcaption>Compressed ESC Wires</figcaption>
    <img style='width:35em' src="pimount_wires.png"/>
</figure>

Place the Pimount on top and use the short m3 bolts to secure the mount to the standoffs

<figure>
    <figcaption>ESC Connectors Tucked Under Pimount</figcaption>
    <img style='width:35em' src="esc_connectors_tucked.png"/>
</figure>

Use the sliver screws included with the frame kit to secure the Pi to the mount. The USB ports should be toward the front of the drone.

<figure>
    <figcaption>Secured Pi</figcaption>
    <img style='width:35em' src="secured_pi.png"/>
</figure>

## Attach Heat Sinks
The Pi does not have a CPU cooling system, so it tends to heat up quickly and either slow the performance of the drone or flat out burn the processors. Attach the heat sinks to the CPU and network chips on the PI (the two biggest ICs). These will help dissipate heat during high CPU load.

## Pi Hat
With the Pi hat all soldered together place it on top of the Pi being sure the pins go into the Header holes.

### Camera
Also be sure to connect the camera before fully pressing down the Pi hat. Note the camera port on the pi is closer to the HDMI port.

### BEC
Attach the BEC to the top of the USB ports using some double sided tape.

<figure>
    <figcaption>Attached BEC</figcaption>
    <img style='width:35em' src="bec_attached_1.png"/>
</figure>

<figure>
    <figcaption>Secured Pi Hat</figcaption>
    <img style='width:35em' src="bec_attached_2.png"/>
</figure>

## Plug things in

1. Obtain an SD card and install it into the PI.

2. Plug the flight controller USB cable into the PI's USB port.

## Power on the Drone
After double checking that the wiring is correct, plug in the battery to power on the drone! Verify that
1. The red light on the PI turns on, and then the green flashing light.
2. The red and blue light on the flight controller turns out.
3. The green lights on the ESCs turn on.
4. The LEDs on the bottom of the power distribution board turn on.

If you see smoke coming from your drone, you probably have a short. Unplug it and inspect all solder joints for shorts.

Describe how you would debug each situation if the lights do not turn on.
