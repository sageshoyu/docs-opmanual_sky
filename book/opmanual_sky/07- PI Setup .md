## Rasberry PI
This step describes how to attach the PI to your drone.

### Flash the Pi SD Card
Download the sd card image from [this link](https://drive.google.com/file/d/0B3p6mSLy0S-sc1FCak1ORE9STFk/view?usp=sharing). Flash your sd card using the following commands (on linux).

```sudo dd if=<path to image downloaded above> of=<path to sd card (ej. /dev/disk1)> bs=4M```

Your card should now be flashed.

## Mount the PI
We designed and 3D printed a mount to attach the Rasberry Pi to the top of the drone.

For wire cleanliness try to fit all ESC as shown below.
![](https://github.com/h2r/pidrone-site/raw/master/website/projects/build/pics/pimount-wires.jpg)
Place the Pimount on top and use the short m3 bolts to secure the mount to the standoffs

![](https://github.com/duckietown/docs-opmanual_sky/blob/draft/book/opmanual_sky/10-build/esc%20connectors%20tucked.JPG?raw=true)

Use the sliver screws included with the frame kit ti secure the Pi to the mount. The USB ports should be toward the front of the drone.
![](https://github.com/duckietown/docs-opmanual_sky/blob/draft/book/opmanual_sky/10-build/IMG_3735.JPG?raw=true)

## Attach the heat sync
We have had problems with PIs burning out, so attach heat sinks to the CPU and network chips on the PI (the two biggest ICs). This will help disappate heat during high CPU load.

 
## Pi Hat
With the Pi hat all soldered together place it on top of the Pi being sure the pins go into the Header holes. 
#### Camera
Also be sure to connect camera before fully pressing down the Pi hat. Note the camera port on the pi is closer to the HDMI port.


### BEC
Attach the BEC to the top of the USB ports using some double sided tape.

![](https://github.com/duckietown/docs-opmanual_sky/blob/draft/book/opmanual_sky/10-build/IMG_3741.JPG?raw=true)

![](https://github.com/duckietown/docs-opmanual_sky/blob/draft/book/opmanual_sky/10-build/IMG_3745.JPG?raw=true)

## Plug things in

Obtain an SD card and install it into the PI. We are providing pre-flashed SD cards with Rasbian, ROS, and other software preinstalled.

Plug the flight controller USB cable into the PI's USB port.

## Power on the Drone
After double checking the wiring is correct, plug in the battery to power on the drone! Verify that

The red light on the PI turns on, and then the green flashing light.
The red and blue light on the flight controller turns out.
The green lights on the ESCs turn on.
The LEDs on the power distribution board turn on.
If you see smoke coming from your drone, you probably have a short. Unplug it and inspect all solder joints for shorts.

Describe how you would debug each situation if the lights do not turn on.
