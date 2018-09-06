# Hardware Assembly
During this step you will assemble the hardware on the drone.

## Bolt on the Motors
Two of the motors are counter-clockwise threaded and the other two are clockwise threaded. Screw the included nuts that came each motor onto the motor shaft so you don’t forget which is which. The included motors also have arrows to distinguish them. 

The motors with the red nuts will spin counter-clockwise and the black clockwise. It is critical that they are attached to the correct arms or there is a risk of the nuts coming off. The front right motor will spin CCW, and the front left motor will spin CW. Diagonal motors spin in the same direction.

![alt te](https://github.com/h2r/pidrone-site/raw/master/website/projects/build/pics/motor-directions.jpg "figure 1")

The side of the frame with the small hexagonal hole pattern is the front.
![alt text](https://github.com/h2r/pidrone-site/raw/master/website/projects/build/pics/frame-front.jpg "fig 2")

In order to ensure the nuts tend to tighten during flight instead of loosen, you want each nut to thread in the opposite direction as its motor spins. For example, this means the front right motor’s nut should tighten in the CW direction. The image below shows the correct motors in the correct places, with red in the front right and back left, and black in the front left and back right. When mounting the motors, make sure to route the wire through the hole in the frame to the underside of the frame before bolting on the motor.

 ![](https://github.com/duckietown/docs-opmanual_sky/blob/draft/book/opmanual_sky/10-build/motors%20in%20frame%201%20(2).jpg?raw=true "fig 3")

Use two of the long M3 bolts included with the motor and screw them in tightly.
![](https://github.com/duckietown/docs-opmanual_sky/blob/draft/book/opmanual_sky/10-build/motor%20bottom%201.jpg?raw=true "fig 4")

## Solder The PDB

Just like the human body has a circulatory system to carry oxygen-rich blood to wherever it is needed, the drone has a power distribution board (PDB) to take the all-important battery power and send it to every component. In this step, you will solder 4 ESCs (electronic speed controllers), a BEC (battery eliminator circuit), a battery lead with XT60 connector, and a battery monitor lead to your PDB (power distribution board).

## Strip wires
Cut off all the bullet connectors on the thick wires of the ESC as close to the connector as possible. Leave the PWM signal connector alone. Strip 0.5 cm from each of the wires you just cut. You need to do this for the two input wires and the three output wires, as shown in the picture:
![](https://github.com/h2r/pidrone-site/raw/master/website/projects/build/pics/esc-cut-strip.jpg "fig 5")
Strip wires of xt 60 connector

![](https://github.com/h2r/pidrone-site/raw/master/website/projects/build/pics/xt60.jpg "fig 6")

Inside the plastic box labeled, SKYLINE 32, find the battery monitor lead, cut off the two larger connectors, and strip 1cm.

![](https://github.com/h2r/pidrone-site/raw/master/website/projects/build/pics/monitor-cut-strip.jpg "fig 7")

## Tin PDB and Stripped wires.
Tin all 20 ESC leads. Twist the battery monitor leads around the BEC leads and tin.
![](https://github.com/duckietown/docs-opmanual_sky/blob/draft/book/opmanual_sky/10-build/BEc%20+%20vbat.jpg?raw=true "fig")

Thoroughly tin the battery lead with XT60 connector. It is important that solder flows all the way through the exposed wire.
 ![](https://github.com/h2r/pidrone-site/raw/master/website/projects/build/pics/pigtail-soldering.JPG)

Tin the pads on the PDB as shown. Leave the 5V OUT and 12V OUT pads alone.
![](https://github.com/h2r/pidrone-site/raw/master/website/projects/build/pics/pdb-tinned.jpg)

## Connect components to the PDB
Solder the tinned components to the PDB as shown. Make sure Red goes to + and black/brown goes to -.
![](https://github.com/duckietown/docs-opmanual_sky/blob/draft/book/opmanual_sky/10-build/pdb%20w%20everything.jpg?raw=true "fig ?")

Screw the short M3 bolts into the brass 6mm M3 standoffs.
![](https://previews.dropbox.com/p/thumb/AAIYxOvEBrNJbY970kpu1xOYgdEuulaabL4JmEjk3DFUXA0f2hIPVUQPSVJSVzPbCCRxYtA85xwzRRP40Eygk8otDKupPHSej1s2S8T2Jo53FqLPVBubA2uUPg7N_FGyTuJAITMUuOp5ySMNXyORAXBfwoCL2B4FWl_0GkXGaE86VQ/p.jpeg?size=1600x1200&size_mode=3 "fig" )

Use a hex key to screw the standoffs through the PDB into grooves in the frame in the shown orientation. Apply a downward pressure as you are turning to ensure the standoffs bite into the plastic. Be careful not to overtighten the standoffs and strip out the groove.

![](https://github.com/duckietown/docs-opmanual_sky/blob/draft/book/opmanual_sky/10-build/standoffs.jpg?raw=true)

## Solder motors to ESC's

Place your 3mm diameter heatshrink tubing cut to 1cm sections onto each of the motor leads.

![](https://github.com/h2r/pidrone-site/raw/master/website/projects/build/pics/motor-wires-shrinkwrap.jpg "fig")

Tin the ESC wires thoroughly if you haven’t already. Tin the motor wires as well. (Note: They come pre-tinned, but with a different, higher temperature solder and not quite enough of it)

![](https://github.com/h2r/pidrone-site/raw/master/website/projects/build/pics/tinned-wires.jpg "fig")

Solder the ESC wires to the motor wires. It does not matter which ESC wire is connected to which motor wire. However, routing will be easier if you make sure they are not too twisted.

![](https://github.com/duckietown/docs-opmanual_sky/blob/draft/book/opmanual_sky/10-build/motor%20and%20esc%20wired.jpg?raw=true "fig")

After soldering each motor to its corresponding ESC, move the heatshrink over the solder joint and use a heat gun to shrink it.

![](https://github.com/duckietown/docs-opmanual_sky/blob/draft/book/opmanual_sky/10-build/EDIT%20(2).jpg?raw=true "fig")


## Routing
Now everything has been soldered, and you can start worrying about wire management. Route ESC wires nicely with zip ties. You need to ensure that the wires will not be cut by the spinning props. It is best to secure the ESCs and wires underneath the frame.

Route the ziptie through the holes in each arm as shown. It is important to go through the holes and not around the arm so the zipties doesn’t slide around.
![](https://github.com/h2r/pidrone-site/raw/master/website/projects/build/pics/ziptie-location.jpg "fig")

Fold the motor wires up neatly underneath the ESC and place it down into the ziptie.
![](https://github.com/h2r/pidrone-site/raw/master/website/projects/build/pics/esc-routing.jpg)

Cinch the ziptie down over the ESC (pretty tight) doing your best to make sure the ESC lies flat.
![](https://github.com/h2r/pidrone-site/raw/master/website/projects/build/pics/ziptied-esc.jpg "fig")

It should look like this when done.
![](https://github.com/h2r/pidrone-site/raw/master/website/projects/build/pics/ziptied-all-motors.jpg "fig")

## Camera Attachment

Now you will attach the camera to your frame. Place double-sided sticky tape around the camera, as shown in the picture.
![]( https://github.com/h2r/pidrone-site/raw/master/website/projects/build/pics/camera_install/tape-cam.jpg "fig")

Place the camera through the hole in the back of the frame, as in the picture. Be sure that the connector is facing out from the frame so you will be able to plug in the camera cable (you don’t need to plug it in now though). Make sure it is aligned with the frame! Any missalignment in the camera will mess with your computer vision!
![](https://github.com/duckietown/docs-opmanual_sky/blob/draft/book/opmanual_sky/10-build/camera%20top.JPG?raw=true"fig")

![](https://github.com/duckietown/docs-opmanual_sky/blob/draft/book/opmanual_sky/10-build/camera%20bottom.JPG?raw=true"fig")


## IR attachment

Zip tie the IR sensor onto the bottom of the frame’s front platform, as in the picture.
![](https://github.com/h2r/pidrone-site/raw/master/website/projects/build/pics/zip-ir-1.jpg "fig")

## Checkoff 
Come to TA hours and have a TA verify that all your hardware is set up correctly before continuing.







