# Phase 2: Attach Sensors {#build-phase2 status=ready}

**Expected Time**: 5 hours

## Preface

At a high level, a **sensor** is a device that _observes_ something about the world and reports its observations on an electrical wire. For example, a camera can be a sensor.

In contrast, an **actuator** is a device that _does_ something when provided power via an electrical wire. For example, a motor can be an actuator.

The simplest possible robot is one that has only actuators. However, a robot with any amount of autonomy would also require sensors. This is because such a robot would need observations about its world in order to decide what to do with its actuators.

In this phase of the build, you will prepare and attach sensors to the drone frame. In a latter phase, you will connect the corresponding electrical wires of the sensors to the "brain" of the drone (i.e. a micro-computer).

## Attach Pi Cam

The Pi Cam is a sensor which observes 2D images of the world. It will be attached to the drone frame facing downward. This will allow the drone's micro-computer to compare different images of the ground in order to determine how fast the drone is moving in the x and y directions.

1. Gather the following:
   - Pi Cam
   - 15pin FFC (likely in Pi Cam box, already attached)
   - Double sided mounting tape

2. If not already done, attach the FFC to the Pi Cam. The shorter side should go into the camera.

    <figure class="flow-subfigures">  
        <figcaption>FFC Attachment</figcaption>
        <figure>
            <figcaption>Good FFC Attachment</figcaption>
            <img style='width:220px' src="photos/ffc_attachment_good.jpg"/>
        </figure>
        <figure>  
            <figcaption>Bad FFC Attachment</figcaption>
            <img style='width:220px' src="photos/ffc_attachment_bad.jpg"/>
        </figure>
    </figure>  

3. Put double sided mounting tape on the top, left, and right sides of the pi cam. Cut off any excess tape.

    <figure>
        <figcaption>Pi Cam with Tape</figcaption>
        <img style='width:300px' src="photos/tape_attached_to_pi_cam.jpg"/>
    </figure>

4. Attach the Pi Cam to the hole in the back of the drone (attach on top so camera faces downward). Ensure that the attachment is not skewed.

    <figure class="flow-subfigures">  
        <figcaption>Attach the Pi Cam (bottom-up view)</figcaption>
        <figure>
            <figcaption>Pi Cam without Skew</figcaption>
            <img style='width:200px' src="photos/pi_cam_attached_no_skew.jpg"/>
        </figure>
        <figure>  
            <figcaption>Pi Cam with Skew</figcaption>
            <img style='width:200px' src="photos/pi_cam_attached_skew.jpg"/>
        </figure>
    </figure>  

## Attach IR sensor

The IR sensor is a sensor which measures distance to an object by utilizing infrared beams. It will be attached to the drone frame facing downward. This will allow the drone's micro-computer to gather information regarding its distance from the ground (i.e. height).

However, the IR sensor cable cannot be plugged into the drone's micro-computer directly. The sensor measurement must first go through *analog-to-digital* (i.e. ADC) conversion. This conversion is necessary so that the micro-computer understands the measurements.

Implementing this conversion requires building a basic circuit that sends the IR sensor output (the yellow wire) to an ADC device as input. In block-diagram form, this looks like:

<figure>
    <figcaption>ADC Circuit Block Diagram</figcaption>
    <img style='width:400px' src="photos/adc_block_diagram.jpg"/>
</figure>

You will build a basic circuit corresponding to the diagram by using a special type of breadboard (i.e. Pi Hat).

One useful property of a breadboard is that it has *rails*. A rail is a sequence of holes that share an electrical connection:

<figure>
    <figcaption>Rails Highlighted on Pi Hat</figcaption>
    <img style='width:350px' src="photos/pihat_rails.jpg"/>
</figure>

This is useful because: 1) it means every wire put on a rail will see the same measurement and 2) it does not matter into which hole on a rail a wire is inserted. For example, if wire A reports sensor measurements and is put into rail 1 hole 1, then wire B can go into any hole on rail 1 to receive the reports by wire A.

1. Gather the following:
    - ADC
    - ADC header pins set (in ADC packet)
    - Pi Hat
    - Pi Hat header board set (in Pi Hat packet)
    - IR sensor
    - IR sensor cable (likely in IR bag)
    - Red and black wires on OUT side of BEC (by this phase, BEC should be attached to PDB)
    - 4 pieces of thin wire (recommend 22-24 AWG, 3 in. length, colors: red, black, green, and blue)
    
2. Cut/break the ADC header pin set to the same number as holes on the ADC. Solder the **short** end of the header pins into the ADC. 

    NOTE: 

    - There is no electric conductivity between individual header pins, so it is okay if you accidentally cut/break too many pins from the set (e.g. full set of 12 pins broken into a set of 8 and set of 4 - instead of the needed 10). Simply break additional pins as needed (e.g. break 2 more pins from the set of 4, then you will have 8 + 2 = 10 pins).

    <figure>  
        <figcaption>ADC Pins Soldered</figcaption>
        <figure>
            <figcaption>Top View</figcaption>
            <img style='width:250px' src="photos/adc_pins_soldered_1.jpg"/>
        </figure>
        <figure>  
            <figcaption>Side View</figcaption>
            <img style='width:250px' src="photos/adc_pins_soldered_2.jpg"/>
        </figure>
    </figure>  
    
3. Solder the ADC and all wires to the Pi Hat according to the diagram (strip wires as needed):

    NOTE:

    - Recall that the Pi Hat is a breadboard, so it has rails. The wires you solder do not need to go into exact holes; each wire just needs to go into a hole on the same rail as its corresponding ADC pin (e.g. red wire does not need to go into pin immediately adjacent to VDD pin of ADC - it can go into any hole of that rail).

    <figure>
        <figcaption>Pi Hat Wiring Diagram</figcaption>
        <img style='width:400px' src="photos/pi_hat_wiring.jpg"/>
    </figure>
    
    For reference, the completed circuit will look like the following:

    <figure>
        <figcaption>ADC Completed Circuit</figcaption>
        <img style='width:400px' src="photos/adc_completed_circuit.jpg"/>
    </figure>
    
4. Solder the Pi Hat header board set to the Pi Hat:

    <figure class="flow-subfigures">  
        <figcaption>Soldered Header Board</figcaption>
        <figure>
            <figcaption>Top View</figcaption>
            <img style='width:220px' src="photos/pi_hat_header_board_soldered_front.jpg"/>
        </figure>
        <figure>  
            <figcaption>Bottom View</figcaption>
            <img style='width:216px' src="photos/pi_hat_header_board_soldered_back.jpg"/>
        </figure>
    </figure> 
    
5. Use zip-ties to attach the IR sensor to the bottom of the front of the drone frame:

    <figure class="flow-subfigures">  
        <figcaption>Attached IR Sensor</figcaption>
        <figure>
            <figcaption>Top View</figcaption>
            <img style='width:220px' src="photos/ir_attached_top_view.jpg"/>
        </figure>
        <figure>  
            <figcaption>Bottom View</figcaption>
            <img style='width:220px' src="photos/ir_attached_bottom_view.jpg"/>
        </figure>
    </figure>

6. Attach the IR sensor cable (wires now soldered to Pi Hat) to the IR sensor.
    

## Attach Flight Controller

The flight controller (i.e. FC) contains multiple sensors: an Inertial Measurement Unit (IMU) and a gyroscope. The IMU measures linear accelerations and the gyroscope measures angular velocities. The flight controller also sends electric signals to the ESCs.

The FC will have three cables connected to it (in the steps of this section): a USB to micro USB cable, a red and brown wire pair (i.e. battery monitor lead), and a PWM wire set. The USB to micro USB cable will be the electrical wire that the FC uses to report its sensors' observations. The battery monitor lead will allow the FC to monitor the power flow on the PDB (technically speaking, the _voltage_). The PWM wire set will allow the FC to send electrical signals to the ESCs.

The PWM wire set can be found inside the FC box:

<figure>
    <figcaption>PWM Wire Set</figcaption>
    <img style='width:300px' src="photos/pwm_wires.jpg"/>
</figure>

The corresponding ports on the FC are:

<figure>
    <figcaption>Ports on FC</figcaption>
    <img style='width:300px' src="photos/fc_labeled.jpg"/>
</figure>

1. Gather the following:
   - Flight Controller
   - Micro USB to USB cable
   - Double sided mounting tape
   - PWM wire set (inside FC box)
   
2. Connect the red and brown wire pair to the FC. Connect the PWM wire set to the FC. Connect the micro USB to USB cable to the FC. Note that there is a correct orientation to the connections - do **not** try to force them in.

<figure>
    <figcaption>Cables Connect to FC</figcaption>
    <img style='width:300px' src="photos/fc_with_cables_connected.jpg"/>
</figure>

3. Put double sided mounting tape on the bottom of the FC. Cut off any excess tape.

4. Attach the FC to front of the drone. Ensure the FC is not skewed and it is pushed against the frame body. 

    NOTE:

        - Try to minimize the FC skew as much as possible. If you think of the FC as being foward-facing eyes, then a skewed FC would make a cross-eyed drone!

        - Once the FC is attached, do a "rock test" (i.e. try to rock the FC back-and-forth by pushing the corners). If the FC rocks, then the double sided mounting tape used is too soft and is compressing under pressure. Detach the FC from the frame (e.g. _carefully_ use a flat-head screwdriver) and replace the tape with more robust tape.    


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


## Checkoff

- Perform a "Rock Test" of the attached FC and verify it does not rock.
