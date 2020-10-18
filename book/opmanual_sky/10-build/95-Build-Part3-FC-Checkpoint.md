# Part 3: Flight Controller and Cleanflight Checkpoint {#build-part3-FC-checkpoint status=ready}

**Expected Time**: 20 minutes

## Check the ESC ordering

Ensure the PWM wires are connected to the correct pins on the flight controller. Do this by following the PWM wires from the flight controller back to which motor the ESC is connected to. Make sure that this matches up with the image below.

<figure>
    <figcaption>Motors Diagram</figcaption>
    <img src="photos/correct_motors_diagram.jpg" width="200"/>
</figure>  

## Check the motor attachment

Make sure the arrows on the motors match up with the diagram above. It is important that the correct motors are in the correct spot because the motor bolts are threaded so that the propeller will not loosen the nut and fly off the drone.

## Check the motor direction

Make sure the motors are spinning in the correct direction. To do this, connect your flight controller to cleanflight with the **propellers off** and the battery plugged in, and spin up each motor to make sure it is spinning in the same direction as the arrow on the motor, which is the same direction as shown in the image above. It helps to put a small piece of tape on the side of the motor to know which way it is spinning.

## Arm your drone

You will now test out arming your motors using the drone software. To arm the motors, the software sends out a sequence of PWM values that let's the flight controller know that the operator is ready to fly. After arming the motors, the software sends out a low PWM value that leaves the motors idling at speed much slower than what would be needed for takeoff.

In this checkpoint, you go through the process of setting up your drone to fly, and then will arm the motors and make sure they are spinning. Then you will disarm the motors and make sure they stop spinning. Then you will be done with build part 3!

1. Make sure the propellers are off of the motors

1. Connect the flight controller USB to the Raspberry Pi

1. Plug in the battery

1. Connect to your drone's wifi

1. Browse to the drone's code editor: [192.168.42.1:8081](192.168.42.1:8081)

1. Open a terminal: Menu (top left button) > Terminal > New Terminal

1. Start up the flight code by typing in the command `./start_pidrone_code.sh` and press enter

1. Open up the web interface from your local copy of pidrone_pkg as done in the [Part 2 Checkpoint](#build-part2-checkpoint-open-web-interface)

1. Refresh this page and ensure it says "Connected" at the top

1. Arm your drone by pressing the semicolon (`;`) button on your keyboard.

1. Observe how the flight controller automatically adjusts to disturbances by tilting up one side of the drone and noticing how the motors that are lower are spinning faster than the motors that you've tilted up.

1. Disarm your drone by pressing the **spacebar**.

Congrats on finishing build part 3!
