# ESC Setup
The Afro ESC (electronic speed controller) stock firmware is called SimonK. In testing we found that the throttle response time for our ESCs on this firmware was not quick enough, and this would cause adverse flight effects during agressive maneuvers.

During this step you will reflash your ESCs with an alternative open-source firmware called BLHeli, which is has a faster response time and a convientient GUI for ESC configuration. The BLHeli firmware can only be flashed on Windows. If you do not have Windows, please come to office hours, where we have computers setup to flash BLHeli.

# Flashing ESCs 
Make sure you have no propellers on your motors. For each ESC:

1) Plug in the battery to your drone

2) Plug the ESC into the flashing tool. Pay careful attention that the yellow wire goes to s (signal) and the brown wire goes to - (ground).
![](https://github.com/h2r/pidrone-site/raw/master/website/projects/build/pics/fc_esc_setup/plug_in_1.JPG)
![](https://github.com/h2r/pidrone-site/raw/master/website/projects/build/pics/fc_esc_setup/plug_in_2.JPG)

3) Click the "Connect" button in BlHelisuite
![](https://github.com/h2r/pidrone-site/raw/master/website/projects/build/pics/fc_esc_setup/open_blheli.png)

4) Click the read setup button
![](https://github.com/h2r/pidrone-site/raw/master/website/projects/build/pics/fc_esc_setup/connected.png)

5) When prompted to flash your ESC, click "Yes"
![](https://github.com/h2r/pidrone-site/raw/master/website/projects/build/pics/fc_esc_setup/read.png)
6) You will be presented with a list of ESC firmwares. Select Afro 20A Multi from the list and click OK.

![](https://github.com/duckietown/docs-opmanual_sky/blob/draft/book/opmanual_sky/10-build/20%20amp%20afr0.JPG?raw=true)

7) Confirm that you want to flash your ESC
![](https://github.com/h2r/pidrone-site/raw/master/website/projects/build/pics/fc_esc_setup/confirmation.png)
![](https://github.com/h2r/pidrone-site/raw/master/website/projects/build/pics/fc_esc_setup/flashing.png)
8) When finished, a window will appear, notifying you that the ESC has properly been flashed. If there are any errors, call over a TA. Click "OK" to dismiss the window.
![](https://github.com/h2r/pidrone-site/raw/master/website/projects/build/pics/fc_esc_setup/flashed.png)
9) A window will appear notifying you that the ESC setup has been read successfully. Click "OK".
![](https://github.com/h2r/pidrone-site/raw/master/website/projects/build/pics/fc_esc_setup/done.png)
10) Change the "PPM Min Throttle" 1100 and the "PPM Max Throttle" to 1900.
![](https://github.com/h2r/pidrone-site/raw/master/website/projects/build/pics/fc_esc_setup/throttle.png)
If this was one of the motors for which you needed to change the direction in the previous section, change the 'Motor Direction' parameter accordingly.

![](https://github.com/h2r/pidrone-site/raw/master/website/projects/build/pics/fc_esc_setup/motor_direction.png)
11) Lastly turn off the beacon setting. To do this set it to infinite.
![](https://github.com/duckietown/docs-opmanual_sky/blob/draft/book/opmanual_sky/10-build/beacon.png?raw=true)

12) Write these changes to the ESC.
![](https://github.com/h2r/pidrone-site/raw/master/website/projects/build/pics/fc_esc_setup/write_setup.png)

13) Repeat until all ESCs are flashed.

## Checkoff
Come to TA hours to get checked off! We will check that you have **all four** motors flashed, spinning the right direction, and connected to your flight controller correctly.

Once you have been checked off, we will give you a flashed Micro SD card which will have the raspbian OS and packages for your Raspberry Pi 3 on it.

