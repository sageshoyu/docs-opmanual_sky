# Part 3 FC Instructions {#build-part3-fc-instructions status=ready}

**Expected Time**: 1 hour

## Attach Flight Controller

1) Trim the all of the pins on the flight controller just like the four shown in the image. This helps the flight controller sit level on the drone frame.
Note: the image shows only 4 trimmed, but you will want to trim all of the pins (updated picture coming soon).

<figure>
 <figcaption>FC with pins cut</figcaption>
 <img style='width:220px' src="photos/fc-trim-pins.png"/>
</figure>

2) Put double sided mounting tape on the bottom of the FC. Cut off any excess tape.

3) Attach the FC to front of the drone. Ensure the FC is not skewed and it is pushed against the frame body. (Ignore the extra wires in the flight controller for now)

<figure>
 <figcaption>FC attached to frame</figcaption>
 <img style='width:220px' src="fc-attached.jpg"/>
</figure>

Note:  Try to minimize the FC skew as much as possible. (the following photos are an example of skew. ignore the difference of flight controller).

<figure class="flow-subfigures">  
     <figcaption>Attach FC (bottom-up view)</figcaption>
     <figure>
         <figcaption>FC without Skew</figcaption>
         <img style='width:220px' src="photos/fc_attached_no_skew.jpg"/>
     </figure>
     <figure>  
         <figcaption>FC with Skew</figcaption>
         <img style='width:220px' src="photos/fc_attached_skew.jpg"/>
     </figure>
</figure>


<div class='check' markdown="1">

Once the FC is attached, do a "rock test" (i.e. try to rock the FC back-and-forth by pushing the corners). If the FC rocks, then the double sided mounting tape used is too soft and is compressing under pressure. Detach the FC from the frame (e.g. _carefully_ use a flat-head screwdriver) and replace the tape with more robust tape.

</div>


## Flashing the Flight Controller

Before the FC can be configured, it must first be flashed with firmware. **Firmware** is a special type of software that allows hardware to be controlled programmatically. Once the FC is flashed, a program called **Cleanflight** can be used to configure it.

1) Download the [flight controller firmware](https://www.dropbox.com/s/3e1c6tbp3zrxeyr/cleanflight_2.4.1_SPRACINGF3.hex?dl=0)

Note: the file extension for this file should be **.hex**. Your computer might have added a **.txt** to the end of the file, rename the file and delete **.txt** so that the file ends in **.hex**

2) On a base station, install and open [Cleanflight](http://cleanflight.com/).

3) Click on "Firmware Flasher" on the left sidebar.

<figure>
   <figcaption>Firmware Flasher </figcaption>
   <img style='width:500px' src="photos/click_on_firmware_flasher.png"/>
</figure>

4) Toggle on the following options: "No reboot sequence", "Flash on connect", and "Full chip erase".

<figure>
   <figcaption>Toggled Options</figcaption>
   <img style='width:500px' src="photos/flash_firmware_toggled_options_inked.jpg"/>
</figure>

5) Click on "Load Firmware [Local]" in the bottom right corner of the window and select the firmware file that you downloaded (the one with the .hex extension).

<figure>  
  <figcaption>Loading Custom Firmware</figcaption>
  <img style='width:500px' src="photos/load_firmware.png"/>
</figure>

6) On the FC, there are two holes marked "boot" (i.e. *bootloader pins*). Take a short piece of wire that is stripped on both sides and short the two holes with the wire.

<figure class="flow-subfigures">  
   <figcaption>Use Bootloader</figcaption>
   <figure>
       <figcaption>Bootloader Pins on FC</figcaption>
       <img style='width:200px' src="photos/fc_labeled_with_bootloader.jpg"/>
   </figure>
   <figure>  
       <figcaption>Wire in Bootloader Pins</figcaption>
       <img style='width:200px' src="photos/fc_with_jumped_bootloader_wire.jpg"/>
   </figure>
</figure>

7) Connect the shorted FC to the workstation via a USB to micro USB cable. It should immediately start flashing because of the "flash on connect" option. Flashing will be complete once the bar at the bottom of the screen says "Programming: SUCCESSFUL".     

Note: If the bar instead reaches halfway and then says "Verifying: FAILED", do not worry - it has flashed successfully.     

<figure>
   <figcaption>Flashing</figcaption>
   <img style='width:500px' src="photos/flashing.png"/>
</figure>

8) Disconnect the FC from the workstation, remove the wire in the bootloader pins, and close Cleanflight.

## Configuring Your Flight Controller

Now that the FC has been flashed with firmware, it can be configured with Cleanflight.

1) If not already done: remove the bootloader wire from the FC, disconnect it from the workstation, and close Cleanflight.

2) Open Cleanflight, reconnect the FC to the workstation, and click the "Connect" button in the top right corner of the screen (this is not needed if "auto-connect" is toggled on).

<figure>
   <figcaption>Connecting FC to Cleanflight</figcaption>
   <img style='width:500px' src="photos/connect.png"/>
</figure>

3) Go to "Ports" tab and make sure SerialRX for UART2 is disabled and click "Save and Reboot." UART2 is a pin on the flight controller, and we want to make sure it only uses the USB.

<figure>
   <figcaption>Ports Configuration</figcaption>
   <img style='width:500px' src="photos/ports.png"/>
</figure>

4) Go to "Configuration" tab. Change the ESC/Motor protocol to "MULTISHOT". Set the Minimum Throttle to 1100. Flip the yaw by 180&deg; (because the FC is rotated by 180&deg; when attached to the drone frame). Change the receiver to "MSP RX input" (by default it is configured to receive data from an RC receiver, but we want it to take commands over MSP). Finally, click "Save and Reboot."    

Note: On the configuration page, Cleanflight might show that the direction of your motors are reversed. This is a UI bug and can be ignored. You will ensure that your motors are spinning in the correct direction in later steps.    

<figure>  
   <figcaption>Configuration: Step 1</figcaption>
   <figure>
       <figcaption>Set Multishot</figcaption>
       <img style='width:500px' src="photos/multishot.png"/>
   </figure>
   <figure>  
       <figcaption>Set Minimum Throttle</figcaption>
       <img style='width:500px' src="photos/minimum_throttle.png"/>
   </figure>
</figure>

<figure>  
   <figcaption>Configuration: Step 2</figcaption>
   <figure>
       <figcaption>Flip Yaw</figcaption>
       <img style='width:500px' src="photos/flip_yaw.png"/>
   </figure>
   <figure>  
       <figcaption>MSP RX Input</figcaption>
       <img style='width:500px' src="photos/msprx.png"/>
   </figure>
</figure>

6) the FC needs to be in Angle mode for its entire available range - not just the range of acrobatic mode. Go to the "Modes" tab. Under the "Angle" option, click "Add Range". Drag the sliders so that the range spans from 900 to 2100 (i.e. entire range). Finally, click "Save".

<figure>
   <figcaption>Angle Mode Option</figcaption>
   <img style='width:500px' src="photos/add_range.png"/>
</figure>

<figure>  
   <figcaption>Modes Configuration</figcaption>
   <figure>
       <figcaption>Expand Range</figcaption>
       <img style='width:500px' src="photos/angle_range.png"/>
   </figure>
   <figure>  
       <figcaption>Expanded Range</figcaption>
       <img style='width:500px' src="photos/angle_range_2.png"/>
   </figure>
</figure>

7) The FC PID parameters need to be changed to work better with our drone. Go to the "PID Tuning" tab. Change the "ROLL" and "PITCH" PID terms to match the image. For reference: Roll should be (Proportional: 60, Integral: 40, Derivative: 50, RC Rate: 1.00, Super Rate: 0.00, Max Vel: 200). Pitch should be (Proportional: 60, Integral: 40, Derivative: 50, RC Rate: curly bracket, Super Rate: 0.00, Max Vel: 200). Change angle limit to 50. Finally, click "Save".

<figure>  
   <figcaption>PID Tuning Configuration</figcaption>
   <figure>
       <figcaption>PID Params</figcaption>
       <img style='width:500px' src="photos/pid_settings.png"/>
   </figure>
   <figure>  
       <figcaption>Set Angle Limit</figcaption>
       <img style='width:500px' src="photos/angle_limit.png"/>
   </figure>
</figure>

<div class='check' markdown="1">

Double check that all of the settings in cleanflight match up to the ones above. Make sure to save the settings when possible.

</div>


## Connecting the ESCs to the Flight Controller

Now that the FC has been configured, it can be connected to the ESCs via the PWM wires (i.e. the white and black wires on the ESCs). Take a moment not find the numbers **1-8** on the flight controller, adjacent to the pins that your soldered in. We will be connecting the PWM wires to number **1-4** because we have 4 motors. These numbers on the flight controller indicate which PWM wire should be connected to which set of pins on the flight controller. For example, in the image below, motor 1 is in the bottom right; therefore you will take the PWM wire from the ESC connected to the motor in the bottom right of your drone, and connect this to the pins labelled **1** on the flight controller.

<figure>
    <figcaption>Motors Diagram</figcaption>
    <img src="photos/correct_motors_diagram.jpg" width="200"/>
</figure>  

Where the red arrow indicates the front direction of the drone. Recall that for your drone, the FC is on the front and the camera is on the back.

Note: There is a correct way to connect an ESC to the Flight Controller. Make sure the white wire of the ESC signal wire pair is facing toward the board, and the black wire is facing away. Equivalently, make sure the white wire is on the side.

<figure>
    <figcaption>Connecting ESCs. White wire on the inside. </figcaption>
    <img src="photos/fc-pwm.png" width="350"/>
</figure>  

1) Plug each PWM wire into its corresponding ESC signal wire pair.

## Test the Motors

With the ESCs connected to the FC, your drone's motors can be tested. In this section, you will verify that the motors are spinning correctly.

1) **Make sure no propellers are attached to your drone's motors**!

2) Open up Cleanflight on a computer. Plug your drone's FC into a computer (via the USB to micro USB cable) and connect to Cleanflight. Plug in a power supply to your drone.

3) Go to the Motors tab in Cleanflight. Read the safety notice and check the box that says **“I understand the risks, propellers are removed - Enable motor control”**.

4) Slowly spin up each motor. Use the motors diagram to verify that: 1) the correct motor spins and 2) it spins in the correct direction. Keep note of which motors do not spin in the correct direction - you will fix them in the next step.

Remark: One way to find out which direction the motor is spinning is to use an object, such as an eraser or something with a little bit of grip, and touch it to the outside of the motor as it is spinning. Then, feel which way the motors drags the object-- clockwise or counter-clockwise.

Note: **DO NOT** follow the incorrect motors diagram. If Cleanflight shows the incorrect motors diagram, then ignore it - the diagram is a UI bug and does not affect the spin directions of the motors.

<figure class="flow-subfigures">  
   <figcaption>Motors Diagram</figcaption>
   <figure>
       <figcaption>Correct Motors Diagram</figcaption>
       <img style='width:200px' src="photos/correct_motors_diagram.jpg"/>
   </figure>
   <figure>  
       <figcaption>Incorrect Motors Diagram. **DO NOT FOLLOW**.</figcaption>
       <img style='width:200px' src="photos/incorrect_motors_diagram.jpg"/>
   </figure>
</figure>

5) Power your drone off by disconnecting the power supply. For each motor that is spinning in the **incorrect** direction: disconnect any 2 of the 3 ESC pad wires from the motor, e.g. disconnect the red and yellow ESC pad wires from their corresponding motor wires. Then swap the connections, e.g. plug the female bullet connector of the red ESC pad wire into the male bullet connector of the motor wire previously connected to the yellow ESC pad wire and vice-versa.


6) Re-connect a power supply to your drone. Repeat step 4 to verify all motors are spinning correctly.

## Calibrate the ESCs

By this point, your drone's FC should be able to spin up each of the 4 motors. This is possible because the FC is sending *PWM signals* to each of the 4 ESCs, which in turn send electrical signals to each of the 4 motors.

A **PWM signal** is a higher-level signal than an eletrical signal; it communicates at how much RPM an ESC should spin a motor. For example, the PWM signal "1000" might correspond to 2300 RPM.

However, note that your drone has not 1, but 4 ESCs - which may not all have the same PWM-to-RPM understanding. For example, ESC 1 might think the PWM signal "1100" from the FC means 2300 RPM while ESC 2 might think the PWM signal "1000" means 2300 RPM.

The solution to this problem is to *calibrate* the ESCs with the FC. In this context, **calibration** means getting all the ESCs to have the same PWM-to-RPM understanding from the FC. In this section, you will calibrate your ESCs.

Note that symptoms of no calibration include: scorching hot motors, a drone that lifts to one side during flight, motors that appear to spin at different speeds.

1) **Make sure no propellers are attached to your drone's motors**!   

2) Unplug any power source from your drone.

3) Connect the FC to a computer, then open up CleanFlight.

4) Go to the Motors tab. Read the safety notice and check the box that says **“I understand the risks, propellers are removed - Enable motor control”**.

6) Drag the master slider up to full. All 4 motor sliders should automatically move up to full accordingly (e.g. 2000).

7) Plug a power source into your drone.

8) The ESCs will make an interesting set of sounds, kind of like music. If they do not, stop and try the previous steps again.
After the music stops, drag the master slider to the bottom of the bar. Correspondingly, all 4 motor sliders should automatically be at the bottoms of their bars (e.g. 1000). The motors will make another set of sounds.

9) After the sounds stop, spin up each motor and verify it is spinning in the correct direction (i.e. according to the motors diagram in this doc).

<div class='check' markdown="1">

- Make sure the motors spin in the correct direction, i.e. according to the motors diagram in this doc.

- When you connect the drone to power, the ESCs should make a "boop boop boop" sound, followed by a "beep BEEEEEP" sound.

</div>
