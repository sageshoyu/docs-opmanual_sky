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

![](https://previews.dropbox.com/p/thumb/AAIuE0CXPbb0id5S31S6ekiYYSe1MCnUOFOnETGqyLT_vh5eiwRiE46K_l3pueWyDgg5Wb9yu9or6-UZe8STGwYEZs0uHivfbOghXL2UDQjnVPl6G0oGnqFrn5JVAaDfIhCI2Rai-x_V2ZiXa7BDljxfCPJwssRTdy21pr2zfAYKyw/p.jpeg?size=800x600&size_mode=3)

Use the sliver screws included with the frame kit ti secure the Pi to the mount. The USB ports should be toward the front of the drone.
![](https://previews.dropbox.com/p/thumb/AAL41VhRzMgfNnucj8_XWt_Pus2YFUjY5Im3apIVz2d2Ys8UKrOgKv4FJXcINA8FqInYjiAdFVB8rkGHzi7w2RrTv-kT1ECCgRPUWBo6VzqdcsRkMSlePNelKlxN5dUk2jMrFnusDzHLwjWwAJQrGi-grELRfx0mqs9zS29QlM1DNw/p.jpeg?size=800x600&size_mode=3)

## Attach the heat sync
We have had problems with PIs burning out, so attach heat sinks to the CPU and network chips on the PI (the two biggest ICs). This will help disappate heat during high CPU load.

 
## Pi Hat
With the Pi hat all soldered together place it on top of the Pi being sure the pins go into the Header holes. 
#### Camera
Also be sure to connect camera before fully pressing down the Pi hat. Note the camera port on the pi is closer to the HDMI port.


### BEC
Attach the BEC to the top of the USB ports using some double sided tape.

![](https://previews.dropbox.com/p/thumb/AAJ4jDU_FebpkrYCPCuS9FiPgUfZ5Jk6zF9HSZC3gk3mDr-8mCGvxqLcWKRga77Zhxpu26Xb47Dur4we6IEsQy0OsoFCcA66xgkGMbYb_IgB_fTgGRg3RpleM05Ywe_nvsjEDZpd23WF4YUsinRcI0gAD_KfhrCV_A4jghtUCJiIdA/p.jpeg?size=800x600&size_mode=3)

![](https://previews.dropbox.com/p/thumb/AAKZqPkwYofgf6oAvdrFLkKPd8TDgDkCosbNIjvLU044eGesvAo9Vl5koz6rPsFL_Jx-ac3uTNdejt6CKWBNJjqzWxTvD7YPxPghr0MNcItjwEkmWX-WGlhkhZxFrakaiK1BPv9jtdkTXQR29v-jQH3JtbKFRd3ygX3meZQ58FCNTg/p.jpeg?size=800x600&size_mode=3)

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
