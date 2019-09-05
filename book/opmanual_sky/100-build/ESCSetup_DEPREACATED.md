# ESC Setup {status=draft}
The Afro ESC (electronic speed controller) stock firmware is called SimonK. In testing we found that the throttle response time for our ESCs on this firmware was not quick enough, and this would cause adverse flight effects during aggressive maneuvers.

During this step you will reflash your ESCs with an alternative open-source firmware called BLHeli, which is has a faster response time and a convenient GUI for ESC configuration. The BLHeli firmware can only be flashed on Windows. If you do not have Windows, please come to office hours, where we have computers setup to flash BLHeli.

## Flashing ESCs
Make sure you have no propellers on your motors. For each ESC:

1) Plug in the battery to your drone

2) Plug the ESC into the flashing tool. Pay careful attention that the yellow wire goes to s (signal) and the brown wire goes to - (ground).

<figure>
    <figcaption>Plug ESC into Flashing Tool</figcaption>
    <img style='width:35em' src="plug_in_1.png"/>
</figure>
<figure>
    <figcaption>Plug ESC into Flashing Tool</figcaption>
    <img style='width:35em' src="plug_in_2.png"/>
</figure>

3) Click the "Connect" button in BlHeliSuite
<figure>
    <figcaption>Connect</figcaption>
    <img style='width:35em' src="open_blheli.png"/>
</figure>

4) Click the read setup button
<figure>
    <figcaption>Read Setup</figcaption>
    <img style='width:35em' src="connected.png"/>
</figure>

5) When prompted to flash your ESC, click "Yes"
<figure>
    <figcaption>Flash your ESC</figcaption>
    <img style='width:35em' src="read.png"/>
</figure>

6) You will be presented with a list of ESC firmwares. Select Afro 20A Multi from the list and click OK.
<figure>
    <figcaption>Select Firmware</figcaption>
    <img style='width:35em' src="twenty_amp_afro.png"/>
</figure>

7) Confirm that you want to flash your ESC
<figure>
    <figcaption>Confirm</figcaption>
    <img style='width:35em' src="confirmation.png"/>
</figure>

<figure>
    <figcaption>Flashing</figcaption>
    <img style='width:35em' src="flashing.png"/>
</figure>

8) When finished, a window will appear, notifying you that the ESC has properly been flashed. If there are any errors, call over a TA. Click "OK" to dismiss the window.
<figure>
    <figcaption>Finish Flashing</figcaption>
    <img style='width:35em' src="flashed.png"/>
</figure>

9) A window will appear notifying you that the ESC setup has been read successfully. Click "OK".
<figure>
    <figcaption>Done!</figcaption>
    <img style='width:35em' src="done.png"/>
</figure>

10) Change the "PPM Min Throttle" 1100 and the "PPM Max Throttle" to 1900.
<figure>
    <figcaption>Throttle Config</figcaption>
    <img style='width:35em' src="throttle.png"/>
</figure>

If this was one of the motors for which you needed to change the direction in the previous section, change the 'Motor Direction' parameter accordingly.
<figure>
    <figcaption>Correct Motor Directions</figcaption>
    <img style='width:35em' src="motor_directions.png"/>
</figure>

11) Lastly turn off the beacon setting. To do this set it to infinite. This prevents the motors from beeping if the flight controller is plugged in but not receiving controls.
12)
<figure>
    <figcaption>Beacon Setting</figcaption>
    <img style='width:35em' src="beacon.png"/>
</figure>

12) Write these changes to the ESC.
<figure>
    <figcaption>Save Changes to ESC</figcaption>
    <img style='width:35em' src="write_setup.png"/>
</figure>

13) Repeat until all ESCs are flashed.

## Checkoff
Come to TA hours to get checked off! We will check that you have **all four** motors flashed, spinning the right direction, and connected to your flight controller correctly.
