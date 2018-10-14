# Instructions for Flight {#software-architecture-assignment status=ready}
In order to fly, you will need:
  * Fully assembled drone
  * Charged battery
  * Base station
  * Safety goggles
  * Highly textured planar surface

## Steps to Fly:
1. Power up your Drone

2. Connect to your drone's wifi network

3. Ssh into your drone with `ssh pi@[yourDroneHostname]`

4. Navigate to `pidrone_pkg` using `cd ~/ws/src/pidrone_pkg`

5. Start up a screen with `screen -c pi.screenrc`

6. Make sure all of the ros nodes are running by first
 entering `\`0` to make sure that roscore has started properly, and then cycle through all of the screens using `\`n`
7. Once you've ensured all of the nodes are running, find the file `index.html` in the `web` folder in the `pidrone_pkg` folder which you've downloaded onto your base station (if you haven't do that now by finding the repo on github [here](https://github.com/h2r/pidrone_pkg) and downloading the zip file onto your base station)

8. Press connect on the web interface to connect to your drone. If it doesn't connect, change the default ip address to your drone's hostname

9. Ensure that the ir sensor is publishing reasonable values by moving your drone up and down by hand and watching the values in the ir sensor graph on the web interface.

10. Ensure that there is space around your drone to fly

11. Use the following key commands to control the drone:
  * `;` : arm
  * `t` : takeoff
  * `spacebar` : disarm
  * `i` : forward
  * `k` : backward
  * `j` : left
  * `l` : right
  * `w` : up
  * `s` : down
  * `a` : yaw left
  * `d` : yaw right

Note that there is also a keyboard control interface that you can
access via SSH that we wrote for our initial testing.  However we
*strongly* recommend the web interface for two reasons.  First, the
web interface detects key press as well as key release.  TTY does not
notify us about key release, which makes the SSH interface harder to
use.  Additionally, the web interface publishes a heartbeat, that
causes the drone to disarm if the heartbeat is not received.  It is
not possible to do a heartbeat with the SSH interface because the
program is running onboard the drone.
