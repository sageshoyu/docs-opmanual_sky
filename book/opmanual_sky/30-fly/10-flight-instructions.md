# Flying Your Drone {#flight status=ready}

In order to fly, you will need:

* Fully assembled drone
* Charged battery
* Base station
* Safety goggles
* Highly textured planar surface, such a poster board with scribbles.

## Example of Highly textured planar surface
- should have considerable and distinct markings for camera to process.  
<figure>
    <figcaption>Highly textured planar surface.</figcaption>
    <img style='width:15em' src="photos/htps.png"/>
</figure>  

## Steps to Fly:

1. Power up your drone.

1. Connect to your drone's wifi network.

1. Ssh into your drone with `ssh pi@[yourDroneHostname]`.

1. Navigate to `pidrone_pkg` using `cd ~/ws/src/pidrone_pkg`.

1. Start up the flight code by typing the command `./start_pidrone_code.sh` and hit enter.


1. Calibrate the accellerometer by running `scripts/calibrateAcc.py`.

1. Make sure all of the ROS nodes are running by first
entering ```0` to make sure that roscore has started properly, and then cycle through all of the screens using ```n`.

1. Once you've ensured all of the nodes are running, find the file `index.html` in the `web` folder in the `pidrone_pkg` folder which you've downloaded onto your base station.  (If you haven't do that now by finding the repository on github [here](https://github.com/h2r/pidrone_pkg) and downloading the zip file onto your base station or cloning the git repository.)

1. Press connect on the web interface to connect to your drone.  Make
sure the IP address or hostname is the IP address of your drone.
(Note that you can change the default IP address or hostname by
editing index.html.)

1. Ensure that the IR sensor is publishing reasonable values by moving your drone up and down by hand and watching the values in the IR sensor graph on the web interface.

1. Ensure that there is space around and a textured surface beneath your drone to fly.  Rotate the drone so that the camera end is facing towards you and the flight controller is facing away from you.  In this way the keyboard controls (I,j,k,l) will match the drone's orientation.
- I - foward (flight controller side)
- J - left
- K - backward (camera side)
- L - right

1. Find and read the keyboard commands to control the drone at the
bottom of the web interface.  Note that there is also a keyboard
control interface that you can access via SSH that we wrote for our
initial testing.  However we *strongly* recommend the web interface
for two reasons.  First, the web interface detects key press as well
as key release.  TTY does not notify us about key release, which makes
the SSH interface harder to use.  Additionally, the web interface
publishes a heartbeat, that causes the drone to disarm if the
heartbeat is not received.  It is not possible to do a heartbeat with
the SSH interface because the program is running onboard the drone.
The keyboard focus must be on the web page for these commands to work.

1.  Find the disarm command, spacebar and press it.  If anything goes
wrong be prepared to immediately hit spacebar to disarm the drone.

1.  First arm your drone by pressing `;`.  The propellers should start
spinning slowly. If they spin fast, or you hear strange noises,
immediately disarm the drone.  If they do not spin, try tilting the
drone; they should spin faster in response to the tilt.  If they still
do not spin, verify you are connected to the drone and that all the
ROS nodes are properly started including rosbridge and the
mode_controller.py.

1.  If all goes well, press `t` to takeoff.  Be prepared to disarm the
drone if anything goes wrong.

1.  Move in the plane using `i`, `j`, `k`, `l` on the keyboard.  When
not moving the drone will try to maintain zero planar velocity but may
drift.


## Velocity Mode

The default mode when starting is velocity mode, where the keyboard
commands control planar velocity.  When no keys are pressed the
drone's velocity setpoint is zero, so it tries to maintain still.  It
estimates its velocity using the optical flow computed from the camera
frames.  This estimate only works over a textured surface; when flying
over a non-textured surface it will cause the drone to inaccurately
estimate its velocity and fly out of control.  A repeating texture is
fine, as long as it has texture (e.g., a carpet with a pattern).
Because the velocity estimate is local, the drone will tend to drift
over time.  The I-term of the PID controller will correct for this
problem but it takes a while.  A well-tuned drone will drift less than
a fully tuned drone.  The key `v` activates velocity mode, and the
drone is also in this mode on startup.




## Position Mode

Because velocity mode can drift, we have implemented a position hold
mode, where the drone computes its offset relative to automatically
detected features from the downward pointing camera.  This mode must
be activated over a planar surface with a non-repeating texture, such
as a poster board with scribbles in different colors and shapes.  When
position mode is activated, it takes a picture of the first frame, and
then continuously estimates its offset from this frame.  If it sees
features in the first frame, it computes an absolute estimate;
otherwise it integrates its velocity to maintain a relative estimate.
Type `p` to active position hold, and `r` to reset the first frame
where offsets are computed.  A well-tuned drone can hold the same
position indefinitely on power, and for almost the entire battery
when on battery.  (At the end of the battery it will oscillate more
and lose its position.)

When in position mode, the keyboard commands tell the drone to
maintain a setpoint that is a defined offset from the origin, defined
by the saved first frame.  That is, if you fly left, it will try to
hold its position a defined offset to the left of the first frame.  Of
course if the drone gets too far from the first frame, it can no
longer compute a global estimate and will drift away.  To rectify this
problem, you need to compute a global map and localize in that map, as
described in the next section.

[This video](https://www.youtube.com/watch?v=WTohnsKs7dU) shows
velocity mode, where it drifts, followed by position mode, followed by
velocity mode again.
