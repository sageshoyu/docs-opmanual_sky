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