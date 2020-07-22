<!-- # Part 4 Instructions {#build-part4-instructions status=ready}

## Glue USB Connector to Flight Controller

Carefully plug the 6" micro USB to USB cable into the USB port of the flight controller. These
little surface-mount USB micro ports are very prone to failure, so to minimize
the likelyhood of ripping off the port or breaking a connection cover the USB connector
thoroughly with hot glue.    

NOTE:

- You will not be able to remove the USB cable. This is intentional.    

<figure>
    <figcaption>Glued USB Connector</figcaption>
    <img style='width:350px' src="photos/usb_glue.png"/>
</figure>


## Attach PiMount

Place the PiMount on top of the PDB and use the black screws (from the motors box) to secure the mount to the standoffs.     

NOTE:

- Ensure that the triangle shape is on the side of the camera.    

<figure>
    <figcaption>Securing the PiMount</figcaption>
    <img style='width:350px' src="photos/securing_pimount_inked.jpg"/>
</figure>

## Put Heat Sinks on Raspberry Pi

You must put heat sinks on parts of the Raspberry Pi so that they do not overheat. Attach the heat sinks to the Pi as shown in the pictures.

<figure class="flow-subfigures">  
    <figcaption>Put Heat Sinks on Pi</figcaption>
    <figure>
        <figcaption>Heat Sinks on Top of Pi</figcaption>
        <img style='width:230px' src="photos/heat_sinks_on_pi_front.jpg"/>
    </figure>
    <figure>  
        <figcaption>Heat Sinks on Bottom of Pi</figcaption>
        <img style='width:230px' src="photos/heat_sinks_on_pi_back.jpg"/>
    </figure>
</figure>  


## Attach Raspberry Pi

Use the sliver screws included in the drone frame kit to secure the Pi to the mount. You should use 3 screws as shown in picture. The Pi USB ports should face toward the front of the drone.

<figure>
    <figcaption>Securing the Pi</figcaption>
    <img style='width:350px' src="photos/securing_pi_inked.jpg"/>
</figure>

Screw in a pair of standoffs into bottom right hole of the Pi. It may help to first screw in a black screw into the standoffs, then use an allen wrench to screw the standoffs into the hole. Note that the hole may initially seem too small for the standoffs, but it will definitely screw in.

<figure class="flow-subfigures">  
    <figcaption>Inserting standoffs into Pi</figcaption>
    <figure>
        <figcaption>Pi Standoffs Top View</figcaption>
        <img style='width:230px' src="photos/pihat_standoffs_topview_inked.jpg"/>
    </figure>
    <figure>  
        <figcaption>Pi Standoffs Side View</figcaption>
        <img style='width:230px' src="photos/pihat_standoffs_sideview_inked.jpg"/>
    </figure>
</figure>  

## Connect Pi Cam

Feed the FFC cable from the Pi Cam through the hole in Pi Hat, then connect it to the Pi's camera port, i.e. the black port close to the HDMI port. Note that the port is fairly shallow, so the FFC cable does not go in very deeply.

<figure class="flow-subfigures">  
    <figcaption>Connecting Pi Cam</figcaption>
    <figure>
        <figcaption>FFC cable through Pi Hat</figcaption>
        <img style='width:230px' src="photos/pihat_camera_topview.jpg"/>
    </figure>
    <figure>  
        <figcaption>FFC cable in Pi camera port</figcaption>
        <img style='width:230px' src="photos/pihat_camera_portview_inked.jpg"/>
    </figure>
</figure>  

### Attach BEC to Drone

Attach the BEC to the top of the USB ports using some double sided tape. Alternatively, if it does not reach, then 1) place electrical tape on the Pi Hat, 2) place double sided mounting tape on the electrical tape, and 3) place the BEC upside down on double sided mounting tape.

<figure class="flow-subfigures">  
    <figcaption>Attaching BEC</figcaption>
    <figure>
        <figcaption>BEC on Pi USB ports (primary method)</figcaption>
        <img style='width:230px' src="photos/bec_attached_pi_usbports_inked.jpg"/>
    </figure>
    <figure>  
        <figcaption>BEC on Pi Hat (alternate method)</figcaption>
        <img style='width:230px' src="photos/bec_attached_pihat_inked.jpg"/>
    </figure>
</figure>  


## Ziptie ESCs and PWM Connectors to Frame Arms

Use the small zipties to secure the ESCs and motor wires to the bottom of each frame arm. To do this, thread the zip ties through the holes in each frame arm. If they do not fit, instead wrap the zip ties around the frame arm. Also, use zip ties to secure the PWM connectors to the sides of each frame arm.

<figure class="flow-subfigures">  
    <figcaption>Use Zip-ties to Secure Everything</figcaption>
    <figure>
        <figcaption>ESC and Motor Wires with Zipties</figcaption>
        <img style='width:230px' src="photos/ziptie_esc.jpg"/>
    </figure>
    <figure>  
        <figcaption>PWM Connector with Zipties</figcaption>
        <img style='width:230px' src="photos/ziptie_pwm.jpg"/>
    </figure>
</figure>  

## Propellers

Attach the propellers to the drone so that it may fly; attach CW propellers to the CW motors, and CCW propellers to the CCW motors. The motors have small arrows on them in the center to indicate which type they are. Be aware that the bolts on the motors that spin CCW tighten when turned CW, and the bolts on the motors that spin CW tighten when turned CCW.

Use a wrench to tighten the bolts down so that the bottom of the propeller is flat on the top of the motor. Screw bolts down tightly, but not so tight that you could not remove the propellers if you had to.

<figure class="flow-subfigures">  
    <figcaption>Put on Propellers</figcaption>
    <figure>
        <figcaption>Notice Arrows Indicating the Type of Propeller</figcaption>
        <img style='width:230px' src="photos/prop.jpg"/>
    </figure>
    <figure>  
        <figcaption>Attaching Propellers</figcaption>
        <img style='width:230px' src="photos/securing_prop.jpg"/>
    </figure>
    <figure>  
        <figcaption>Propeller Flat on Motor</figcaption>
        <img style='width:250px' src="photos/prop_flat_on_motor.jpg"/>
    </figure>
</figure>  

## Attach Drone Feet

Attach the drone feet in the drone frame box to the four arms of the drone. This can be done with either electrical tape or zip ties. **DO NOT** use hot glue, as it will not work.

<figure class="flow-subfigures">  
    <figcaption>Attach Drone Feet</figcaption>
    <figure>
        <figcaption>Side View</figcaption>
        <img style='width:230px' src="photos/drone_feet_side_view.jpg"/>
    </figure>
    <figure>  
        <figcaption>Bottom View</figcaption>
        <img style='width:230px' src="photos/drone_feet_bottom_view.jpg"/>
    </figure>
</figure>  


## Warnings

- Make sure ESC-motor wires are ziptied down properly. If not, you risk having a short.

- The propellers **must** be flat on the base of the motor.


## Checkoff

- Spin the propellers manually with your finger. Ensure no wires are hit by the propellers.

- Make sure no wires or parts are dangling from the drone frame. -->
