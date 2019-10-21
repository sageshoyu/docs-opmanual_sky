# Phase 3: Device Configuration {#build-phase3 status=ready}

**Expected Time**: 1 hour

## Preface

In this phase of the buid, you will configure and calibrate the drone's devices. This includes:

- Flashing your SD card with our software stack
- Configuring the flight controller for our desired mode of operation
- Calibrating the ESCs with respect to the flight controller

The flight controller will receive roll, pitch, yaw, and thrust instructions from the drone's computer and send corresponding electrical signals to the ESCs (i.e. *PWM signals*). The ESCs will use those signals to send variable amounts of power to the motors. Then, the motors will spin in such a way so that the desired roll, pitch, yaw, and thrust are achieved. The flight controller knows what signals to send to the ESCs because it has an **IMU** (i.e. Inertial Measurement Unit), which measures the roll, pitch, and yaw of the drone.

## Flashing Your SD Card

In order for the drone to operate autonomously, it must have an intelligent system in place which dictates what to do. Our software stack will be such a system, which we will load into the drone's computer using an SD card.

1. Gather the following:
    - A workstation (or personal computer)
    - Micro SD card
    
2. On a workstation, downlaod the image flashing tool [Etcher](https://www.balena.io/etcher/).

3. On a workstation, download the latest drone [image](https://drive.google.com/file/d/1ogPrxXBpXa6Tbv3xpYZcvCc_7EXD-w7S/view?usp=sharing).

4. Connect the micro SD card to the workstation.

5. Open Etcher and select the downloaded drone image. Then select the micro SD card as the drive to flash. Finally, click the "Flash" button.

NOTE: flashing will take 1 - 2 hours. In the meantime, you can move on to the next sections.

## Flashing the Flight Controller

Before the FC can be configured, it must first be flashed with firmware. **Firmware** is a special type of software that allows hardware to be controlled programmatically. Once the FC is flashed, a program called **Cleanflight** can be used to configure it.

1. Gather the following:
    - A workstation (or personal computer)
    - Flight controller (by this phase, it should be attached to drone)
    - USB to micro USB cable (by this phase, it should be connected to FC)

2. On a workstation, install and open [Cleanflight](http://cleanflight.com/).

3. Click on "Firmware Flasher" on the left sidebar.

    <figure>
        <figcaption>Firmware Flasher </figcaption>
        <img style='width:500px' src="photos/click_on_firmware_flasher.png"/>
    </figure>

4. Toggle on the following options: "No reboot sequence", "Flash on connect", and "Full chip erase". 

    <figure>
        <figcaption>Toggled Options</figcaption>
        <img style='width:500px' src="photos/flash_firmware_toggled_options_inked.jpg"/>
    </figure>

5. Select "NAZE" and firmware version "2.1" from the dropdowns. Alternatively, if you have custom firmware to flash, instead click on "Load Firmware [Local]" in the bottom right corner of the window and select your custom fireware file.

    <figure>  
        <figcaption>Firmware Flash</figcaption>
        <figure>
            <figcaption>Selecting Firmware from Dropdowns</figcaption>
            <img style='width:500px' src="photos/flash_firmware_dropdowns_inked.jpg"/>
        </figure>
        <figure>  
            <figcaption>Loading Custom Firmware</figcaption>
            <img style='width:500px' src="photos/load_firmware.png"/>
        </figure>
    </figure> 

6. On the FC, there are two holes marked "boot" (i.e. *bootloader pins*). Take a short piece of wire that is stripped on both sides and short the two holes with the wire.

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

7. Connect the shorted FC to the workstation via a USB to micro USB cable. It should immediately start flashing because of the "flash on connect" option. Flashing will be complete once the bar at the bottom of the screen says "Programming: SUCCESSFUL".     

    NOTE:    

    - If the bar instead reaches halfway and then says "Verifying: FAILED", do not worry - it has flashed successfully.     

    <figure>
        <figcaption>Flashing</figcaption>
        <img style='width:500px' src="photos/flashing.png"/>
    </figure>
    
8. Disconnect the FC from the workstation, remove the wire in the bootloader pins, and close Cleanflight.

## Configuring Your Flight Controller

Now that the FC has been flashed with firmware, it can be configured with Cleanflight.

1. Gather the following:
    - A workstation (or personal computer) with Cleanflight installed
    - Flight controller (by this phase, it should be attached to drone)
    - USB to micro USB cable (by this phase, it should be connected to FC)

2. If not already done: remove the bootloader wire from the FC, disconnect it from the workstation, and close Cleanflight.

3. Open Cleanflight, reconnect the FC to the workstation, and click the "Connect" button in the top right corner of the screen (this is not needed if "auto-connect" is toggled on).

    <figure>
        <figcaption>Connecting FC to Cleanflight</figcaption>
        <img style='width:500px' src="photos/connect.png"/>
    </figure>

4. Go to "Ports" tab and make sure SerialRX for UART2 is disabled and click "Save and Reboot." UART2 is a pin on the flight controller, and we want to make sure it only uses the USB.

    <figure>
        <figcaption>Ports Configuration</figcaption>
        <img style='width:500px' src="photos/ports.png"/>
    </figure>

5. Go to "Configuration" tab. Change the ESC/Motor protocol to "MULTISHOT". Set the Minimum Throttle to 1100. Flip the yaw by 180&deg; (because the FC is rotated by 180&deg; when attached to the drone frame). Change the receiver to "MSP RX input" (by default it is configured to receive data from an RC receiver, but we want it to take commands over MSP). Finally, click "Save and Reboot."    

    NOTE:     

    - On the configuration page, Cleanflight might show that the direction of your motors are reversed. This is a UI bug and can be ignored. You will ensure that your motors are spinning in the correct direction in later steps.    

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

6. the FC needs to be in Angle mode for its entire available range - not just the range of acrobatic mode. Go to the "Modes" tab. Under the "Angle" option, click "Add Range". Drag the sliders so that the range spans from 900 to 2100 (i.e. entire range). Finally, click "Save".

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

7. The FC PID parameters need to be changed to work better with our drone. Go to the "PID Tuning" tab. Change the "ROLL" and "PITCH" PID terms to match the image. For reference: Roll should be (Proportional: 60, Integral: 40, Derivative: 50, RC Rate: 1.00, Super Rate: 0.00, Max Vel: 200). Pitch should be (Proportional: 60, Integral: 40, Derivative: 50, RC Rate: curly bracket, Super Rate: 0.00, Max Vel: 200). Change angle limit to 50. Finally, click "Save".

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


## Connecting the ESCs to the Flight Controller

Now that the FC has been configured, it can be connected to the ESCs via the PWM wires (i.e. the yellow wire set plugged into the FC). The numbers on each PWM wire indicate which motor each should be connected to. For example, the wire labeled "PWM1" should be connected to motor 1. For reference, the motor numbers with respect to the drone are: 

<figure>
    <figcaption>Motors Diagram</figcaption>
    <img src="photos/correct_motors_diagram.jpg" width="200"/>
</figure>  

Where the red arrow indicates the front direction of the drone. Recall that for your drone, the FC is on the front and the camera is on the back.

**Note that there is a correct way to connect a PWM wire to an ESC**. Make sure the white wire of the ESC signal wire pair is in line with the yellow wire of the PWM wire. Equivalently, make sure the metallic part of the ESC signal wire pair is facing the same side as the word "PWM" on the PWM wire.

<figure>
    <figcaption>Connecting PWMs. White wire in line with the yellow wire (in blue). Metallic part on same side as "PWM" (in red) </figcaption>
    <img src="photos/connecting_pwm_inked.jpg" width="350"/>
</figure>  

TODO:     

- Plug each PWM wire into its corresponding ESC signal wire pair. Note that the PWM wires labeled "PWM5" and "PWM6" can be snipped, since the drone only has 4 ESCs.

## Test the Motors

With the ESCs connected to the FC, your drone's motors can be tested. In this section, you will verify that the motors are spinning correctly.

1. **Make sure no propellers are attached to your drone's motors**!

2. Open up Cleanflight on a computer. Plug your drone's FC into a computer (via the USB to micro USB cable) and connect to Cleanflight. Plug in a power supply to your drone.

2. Go to the Motors tab in Cleanflight. Read the safety notice and check the box that says **“I understand the risks, propellers are removed - Enable motor control”**.

4. Slowly spin up each motor. Use the motors diagram to verify that: 1) the correct motor spins and 2) it spins in the correct direction. Keep note of which motors do not spin in the correct direction - you will fix them in the next step.

    NOTE: **DO NOT** follow the incorrect motors diagram. If Cleanflight shows the incorrect motors diagram, then ignore it - the diagram is a UI bug and does not affect the spin directions of the motors.

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

5. Power your drone off by disconnecting the power supply. For each motor that is spinning in the incorrect direction: disconnect any 2 of the 3 ESC pad wires from the motor, e.g. disconnect the red and yellow ESC pad wires from their corresponding motor wires. Then swap the connections, e.g. plug the female bullet connector of the red ESC pad wire into the male bullet connector of the motor wire previously connected to the yellow ESC pad wire and vice-versa.

    <figure class="flow-subfigures">  
        <figcaption>Changing Motor Direction</figcaption>
        <figure>
            <figcaption>Disconnecting red and yellow ESC pad wires</figcaption>
            <img style='width:200px' src="photos/changing_motor_direction_1.jpg"/>
        </figure>
        <figure>  
            <figcaption>Reconnecting swapped red and yellow ESC pad wires</figcaption>
            <img style='width:200px' src="photos/changing_motor_direction_2.jpg"/>
        </figure>
    </figure>

6. Re-connect a power supply to your drone. Repeat step 4 to verify all motors are spinning correctly.

## Calibrate the ESCs

By this point, your drone's FC should be able to spin up each of the 4 motors. This is possible because the FC is sending *PWM signals* to each of the 4 ESCs, which in turn send electrical signals to each of the 4 motors. 

A **PWM signal** is a higher-level signal than an eletrical signal; it communicates at how much RPM an ESC should spin a motor. For example, the PWM signal "1000" might correspond to 2300 RPM. 

However, note that your drone has not 1, but 4 ESCs - which may not all have the same PWM-to-RPM understanding. For example, ESC 1 might think the PWM signal "1100" from the FC means 2300 RPM while ESC 2 might think the PWM signal "1000" means 2300 RPM.

The solution to this problem is to *calibrate* the ESCs with the FC. In this context, **calibration** means getting all the ESCs to have the same PWM-to-RPM understanding from the FC. In this section, you will calibrate your ESCs.

Note that symptoms of no calibration include: scorching hot motors, a drone that lists to one side during flight, motors that appear to spin at different speeds.

1. **Make sure no propellers are attached to your drone's motors**!   

2. Unplug any power source from your drone.

3. Connect the FC to a computer, then open up CleanFlight.

4. Go to the Motors tab. Read the safety notice and check the box that says **“I understand the risks, propellers are removed - Enable motor control”**.

6. Drag the master slider up to full. All 4 motor sliders should automatically move up to full accordingly (e.g. 2000).

7. Plug a power source into your drone.

8. The ESCs will make an interesting set of sounds, kind of like music. If they do not, stop and try the previous steps again.
After the music stops, drag the master slider to the bottom of the bar. Correspondingly, all 4 motor sliders should automatically be at the bottoms of their bars (e.g. 1000). The motors will make another set of sounds.

9. After the sounds stop, spin up each motor and verify it is spinning in the correct direction (i.e. according to the motors diagram in this doc).

## Checkoff

1. Make sure the motors spin in the correct direction, i.e. according to the motors diagram in this doc.
2. When you connect the drone to power, the ESCs should make a "boop boop boop" sound, followed by a "beep BEEEEEP" sound.
