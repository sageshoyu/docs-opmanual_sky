# Cleanflight on the Skyline 32 {#build-assignment-5 status=ready}

The Skyline 32 is the flight controller; it has an onboard accelerometer and gyroscope, and sends commands to the ESCs. We compile the firmware (called CleanFlight) with an option that allows us to control the Skyline via USB. In this part, you will mount and configure the Skyline 32, install new firmware on it, and power up the motors!

## Mounting the Flight Controller
Plug the voltage monitoring cable (now soldered to your BEC) and the 6-channel PWM cable into your skyline

<figure>
    <figcaption>Plug in Skyline Cables</figcaption>
    <img style='width:35em' src="skyline_cables.png"/>
</figure>

Use double-sided foam tape to mount the skyline to the front of your drone. The USB port should be facing forward, so you have access to it. Also run the PWM connectors underneath the pi mount for easier wire management later.

<figure>
    <figcaption>Skyline Top View</figcaption>
    <img style='width:35em' src="skyline_mount_top.png"/>
</figure>

It is very important that the flight controller is perfectly aligned with your drone's frame. Any misalignments will mean that the sensors are getting incorrect (coupled axes) information about the acceleration. Make sure the edge of the flight controller is parallel with the edge of the frame.

<figure>
    <figcaption>Skyline Bottom View</figcaption>
    <img style='width:35em' src="skyline_mount_bottom.png"/>
</figure>

Carefully plug your 6" USB cable into the USB port of the skyline. These little surface-mount USB micro ports are very prone to failure, so to minimize the likelyhood of ripping off the port or breaking a connection cover the USB connector thoroughly with hot glue. Yes, you will not be able to remove the USB cable. This is intentional.

<figure>
    <figcaption>Glued USB Connector</figcaption>
    <img style='width:35em' src="usb_glue.png"/>
</figure>

## Compiling Firmware For Skyline32
Download the [pre-compiled hex](cleanflight_2.1.0_NAZE.hex).

You can also recompile the firmware. To do this, download the firmware source code at https://github.com/cleanflight/cleanflight and compile with

    make arm_sdk_install

    make NAZE OPTIONS=USE_MSP_UART

## Flashing Fimware
1. Plug the skyline into the computer via USB. If your skyline is already on a drone, do not connect the battery.
2. Open [cleanflight configurator](https://chrome.google.com/webstore/detail/cleanflight-configurator/enacoimjcgeinfnnnpajinjgmkahmfgb) and go to the "Firmware Flasher" tab. This tab is before you connect to the base station.

<figure>
    <figcaption>Firmware Flasher</figcaption>
    <img style='width:35em' src="firmware_flasher.png"/>
</figure>

3. Click "Load Firmware [local]" and load your custom firmware file.

<figure>
    <figcaption>Load Firmware</figcaption>
    <img style='width:35em' src="load_firmware.png"/>
</figure>

4. Click the "Flash Firmware" button to flash the flight controller.

<figure>
    <figcaption>Flash Firmware</figcaption>
    <img style='width:35em' src="flash_firmware.png"/>
</figure>

5. If this is a success, the bar at the bottom will say "Programming: SUCCESSFUL" and you are ready to move to the next step.
<figure>
    <figcaption>Success!</figcaption>
    <img style='width:35em' src="success.png"/>
</figure>

## Configuration Options

*Note in order to use cleanflight on your personal computer rather than base station in the lab see cleanflight homepage for driver installation.*
You will configure the flight controller based on our drone's specific geometry and hardware.

1. Plug in Skyline and click "Connect"
<figure>
    <figcaption>Connect to Skyline</figcaption>
    <img style='width:35em' src="connect.png"/>
</figure>
2. Go to "Ports" tab and make sure SerialRX for UART2 is disabled and click "Save and Reboot." UART2 is a pin on the flight controller, and we want to make sure it only uses the USB.
<figure>
    <figcaption>Ports Config</figcaption>
    <img style='width:35em' src="serialrx.png"/>
</figure>

3. Go to "Configuration" tab  
4.  
i. Flip the yaw by 180 degrees and click "Save and Reboot." This is because we mount the flight controller the opposite direction in order to leave the USB port free to plug into the Raspberry Pi.
<figure>
    <figcaption>Flip Yaw</figcaption>
    <img style='width:35em' src="flip_yaw.png"/>
</figure>
ii. Also change the receiver to "MSP RX input" and click "Save and Reboot." By default it is configured to receive data from an RC receiver, but we want it to take commands over MSP.
<figure>
    <figcaption>MSP RX Input</figcaption>
    <img style='width:35em' src="msprx.png"/>
</figure>
iii. Set the Minimum Throttle to 1100.  
4. We need tell it to be in Angle mode for the entire range (and not acrobatic mode). Go to the "Modes" tab  
i. Under "Angle", click "Add Range."  
<figure>
    <figcaption>Angle Mode</figcaption>
    <img style='width:35em' src="add_range.png"/>
</figure>
ii. Drag the sliders so that the range spans from 900 to 2100. (The entire range.)
<figure>
    <figcaption>Expand Range</figcaption>
    <img style='width:35em' src="angle_range.png"/>
</figure>
<figure>
    <figcaption>Expanded Angle Range</figcaption>
    <img style='width:35em' src="angle_range_2.png"/>
</figure>

iii. Click "Save".  

5.We need to change the PID parameters to ones that work better on our drone. Go to the "PID Tuning" tab.  
i. Change the "ROLL" and "PITCH" PID terms to match the image. Roll should be (Proportional: 60, Integral: 40, Derivative: 50, RC Rate: 1.00, Super Rate: 0.00, Max Vel: 200). Pitch should be (Proportional: 60, Integral: 40, Derivative: 50, RC Rate: curly bracket, Super Rate: 0.00, Max Vel: 200)
<figure>
    <figcaption>PID Params</figcaption>
    <img style='width:35em' src="pid_settings.png"/>
</figure>
ii. Change angle limit to 50.
<figure>
    <figcaption>Angle Limit</figcaption>
    <img style='width:35em' src="angle_limit.png"/>
</figure>
iii. Click "Save."  

## Plug in the motors
The numbers corresponding to each motor are as shown. Recall that the camera is in the back of the frame and the flight controller is in the front.
<figure>
    <figcaption>Motor Numbers</figcaption>
    <img style='width:10em' src="motornumbers.png"/>
</figure>
The yellow cable coming out of the skyline has 6 numbered connectors. Plug each motor into the corresponding connector (1-4) according to the above numbering scheme. The connectors shouldn't be too easy to plug in backwards, but make sure the yellow wire from the motor goes to the yellow wire in the connector from the skyline. The other 2 wires PWM 5/6 can be cut off.
<figure>
    <figcaption>Connecting PWM Wires</figcaption>
    <img style='width:35em' src="pwm_plug.jpg"/>
</figure>

## Test the motors
This is the first time you will be firing up your drone! At this point, make sure there is nothing that could be potentially causing a short on your PDB. Take a battery and plug it into the XT60 connector. If you did everything right, lights should come on and the motors beep. If this doesn’t happen, unplug the battery **immediately**! It is likely the case that something is backwards or shorting, and you could be causing damage by applying a voltage.

Now plug in the Skyline to your computer via USB and connect to the Cleanflight configurator.

i. Go to the Motors tab in Cleanflight. Make sure the props are off!  
ii. Read the safety notice and check the box that says “I understand the risks, propellers are removed - Enable motor control.”  
iii. Slowly power up each motor. Verify first that the correct motor spins and second that it spins in the correct direction using the diagram below.  
iv. If the motor does not spin, verify the connections, make sure there are no shorts and that it has power.  
v. If the motor spins in the wrong direction, make a note of which motor it is. You will be able to flip the directions of motors that are spinning the wrong way in the next section.  

<figure>
    <figcaption>Correct Motor Directions</figcaption>
    <img style='width:35em' src="motor_directions.png"/>
</figure>
