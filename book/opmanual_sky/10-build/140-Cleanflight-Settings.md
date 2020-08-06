# CleanFlight Settings {#build-cleanflight status=ready}

This page details all of the changes that were made in cleanflight after the firmware was flashed.
All of these changes can be automatically made by copying and pasting the contents of [this text file](https://drive.google.com/file/d/1u2xBKk58SDHd5qiM0NLh0dHiPRlr2jya/view?usp=sharing) into the **CLI** tab at the bottom left of cleanflight after connecting your drone.

### "Ports"


1. Go to "Ports" tab on the left side of cleanflight

1. make sure SerialRX for UART2 is disabled and click "Save and Reboot." UART2 is a pin on the flight controller, and we want to make sure it only uses the USB.

<figure>
   <figcaption>Ports Configuration</figcaption>
   <img style='width:500px' src="photos/ports.png"/>
</figure>


### "Configuration" {#build-cleanflight-config}

Go to "Configuration" tab on the left side of cleanflight

- Change the ESC/Motor protocol to "MULTISHOT".

<figure>
   <figcaption>Set Multishot</figcaption>
   <img style='width:500px' src="photos/multishot.png"/>
</figure>

- Set the Minimum Throttle to 1100.

<figure>  
   <figcaption>Set Minimum Throttle</figcaption>
   <img style='width:500px' src="photos/minimum_throttle.png"/>
</figure>

- Flip the yaw by 180&deg; (because the FC is rotated by 180&deg; when attached to the drone frame).

<figure>
   <figcaption>Flip Yaw</figcaption>
   <img style='width:500px' src="photos/flip_yaw.png"/>
</figure>

- Change the receiver to "MSP RX input" (by default it is configured to receive data from an RC receiver, but we want it to take commands over MSP).

<figure>  
   <figcaption>MSP RX Input</figcaption>
   <img style='width:500px' src="photos/msprx.png"/>
</figure>

- Finally, click "Save and Reboot."    

Note: On the configuration page, Cleanflight might show that the direction of your motors are reversed. This is a UI bug and can be ignored. You will ensure that your motors are spinning in the correct direction in later steps.    

### "Modes"

The FC needs to be in Angle mode for its entire available range - not just the range of acrobatic mode.

Go to the "Modes" tab on the left side of cleanflight

- Under the "Angle" option, click "Add Range".

<figure>
   <figcaption>Angle Mode Option</figcaption>
   <img style='width:500px' src="photos/add_range.png"/>
</figure>

- Drag the sliders so that the range spans from 900 to 2100 (i.e. entire range).

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

- Finally, click "Save".

### PID Tuning

The FC PID parameters need to be changed to work better with our drone. Go to the "PID Tuning" tab. Change the "ROLL" and "PITCH" PID terms to match the image. For reference: Roll should be (Proportional: 60, Integral: 40, Derivative: 50, RC Rate: 1.00, Super Rate: 0.00, Max Vel: 200). Pitch should be (Proportional: 60, Integral: 40, Derivative: 50, RC Rate: curly bracket, Super Rate: 0.00, Max Vel: 200). Change angle limit to 50. Finally, click "Save".

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
