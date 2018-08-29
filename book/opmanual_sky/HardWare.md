# Hardware Assembly
During this step you will assemble the hardware on the drone.

##Bolt on the Motors
Two of the motors are counter-clockwise threaded and the other two are clockwise threaded. Screw the included nuts that came each motor onto the motor shaft so you don’t forget which is which.

The motors with the red nuts will spin counter-clockwise and the black clockwise, so it is critical that they are attached to the correct arms. The front right motor will spin CCW, and the front left motor will spin CW. Diagonal motors spin in the same direction.

![alt te](http://cs.brown.edu/courses/cs1951r//projects/build/pics/motor-directions.jpg "figure 1")


The side of the frame with the small hexagonal hole pattern is the front.


![alt text](http://cs.brown.edu/courses/cs1951r//projects/build/pics/frame-front.jpg "fig 2")


in order to ensure the nuts tend to tighten during flight instead of loosen, you want each nut to thread in the opposite direction as its motor spins. For example, this means the front right motor’s nut should tighten in the CW direction. The image below shows the correct motors in the correct places, with red in the front right and back left, and black in the front left and back right. When mounting the motors, make sure to route the wire through the hole in the frame to the underside of the frame before bolting on the motor.

![](http://cs.brown.edu/courses/cs1951r//projects/build/pics/motor-orientation.jpg "fig 3")

Use two of the long M3 bolts included with the motor and screw them in tightly.

![](http://cs.brown.edu/courses/cs1951r//projects/build/pics/single-motor-installation.jpg "fig 4")

## Solder The PDB

Just like the human body has a circulatory system to carry oxygen-rich blood to wherever it is needed, the drone has a power distribution board (PDB) to take the all-important battery power and send it to every component. In this step, you will solder 4 ESCs (electronic speed controllers), a BEC (battery eliminator circuit), a battery lead with XT60 connector, and a battery monitor lead to your PDB (power distribution board).

## Strip wires
Cut off all the bullet connectors on the thick wires of the ESC as close to the connector as possible. Leave the PWM signal connector alone. Strip 0.5 cm from each of the wires you just cut. You need to do this for the two input wires and the three output wires, as shown in the picture:
![](http://cs.brown.edu/courses/cs1951r//projects/build/pics/esc-cut-strip.jpg "fig 6")
strip wires of xt 60 connector

![](

Inside the plastic box labeled, SKYLINE 32, find the battery monitor lead, cut off the two larger connectors, and strip 1cm.

![](http://cs.brown.edu/courses/cs1951r//projects/build/pics/monitor-cut-strip.jpg "fig 8")

Tin PDB and Stripped wires.
Tin all 20 ESC leads. Twist the battery monitor leads around the BEC leads and tin.
Pic

Thoroughly tin the battery lead with XT60 connector. It is important that solder flows all the way through the exposed wire.
 ![](http://cs.brown.edu/courses/cs1951r//projects/build/pics/pigtail-soldering.JPG)

Tin the pads on the PDB as shown. Leave the 5V OUT and 12V OUT pads alone.
![](http://cs.brown.edu/courses/cs1951r//projects/build/pics/pdb-tinned.jpg)

## Connect components to the PDB
Solder the tinned components to the PDB as shown. Make sure Red goes to + and black/brown goes to -.
PIC OF PDB


