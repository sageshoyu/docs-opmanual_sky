# Pre-flight Safety Checks {#preflight-safety-checks status=ready}

There are safety checks that should be down before you fly for the first time, and safety checks that should be done before you fly every time. Some of the checks are repeats from the build document; however, it is very important to double and triple check these parts.

## First Flight Safety Checks

1. Make sure the the ESC PWM wires are connected to the correct pins on the flight controller.

<figure>
    <figcaption>Motors Diagram</figcaption>
    <img src="photos/correct_motors_diagram.jpg" width="200"/>
</figure>  

2. Make sure the motors are in the correct spot on the drone frame.

Make sure the arrows on the motors match up with the diagram above. It is important that the correct motors are in the correct spot because the motor bolts are threaded so that the propeller will not loosen the nut and fly off the drone.

3. Make sure the motors are spinning in the correct direction

Connect your flight controller to cleanflight with the **propellors off** and the battery plugged in, and spin up each motor to make sure it is spinning in the same direction as the arrow on the motor, which is the same direction as shown in the image above. It helps to put a small piece of tape on the side of the motor to know which way it is spinning.

## Every Flight Safety Checks

**Environment**

1. Make sure you are in an open space that is free of obstructions

2. Make sure the surface you are flying over is not reflective, and is not uniform in details

Ideally, you've created a highly textured planar surface, which is a poster board with a bunch of scribbles and shapes.

<figure>
    <figcaption>Example of a highly textured planar surface.</figcaption>
    <img style='width:15em' src="photos/htps.png"/>
</figure>  

3. Make sure you have safety glasses on

4. Alert those around you that you are going to fly, and ask them to move away from your flight space.

**Hardware:** With the battery **disconnected**, make sure that:

1. The propellers are on the correct motors.

The arrows on the propellers should be on visible from the top of the drone, and the arrows should be going in the same direction as the arrows on the motors.

2. The propellers are properly attached.

The propellers should not be able to spin freely around the motor shaft. Make sure the propellers are tightened down so that they cannot spin freely and there is no gap between the propeller, the motor, and the motor nut.

3. Make sure there are no wires in the way of the props.

Spin the props with your finger and make sure there are no wires in the way.

4. The flight controller USB is plugged into the Pi

**Software:** with the battery **connected** and the flight code started, make sure that:

1. There are no node errors

Go through each of the screens using \` [number] and make sure there are no errors printed out. It is normal that there may be an error at the top of the screen that says something about not connecting to ros master, but that is ok because it takes a bit for ros to startup. Make sure there is other text underneath this error, and that text does not also include an error message.

2. The IR sensor is working

While looking at the web interface, move the drone up and down and make sure you see changes in the IR graph on the web interface
