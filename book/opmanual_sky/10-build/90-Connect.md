# Set Up your Base Station {#build-assignment status=ready}

To fly the drone, you will need a computer to act as a base station. This computer does not need to be particularly fast or any particular operating system. The base station needs to have [SSH](https://en.wikipedia.org/wiki/Secure_Shell) installed. (There are nice SSH clients for almost every OS.) Additionally we have created an HTML/Javascript interface to connect to the drone. We have tested most on Google Chromium, but in theory any web browser should work. (If not, please send us bug reports or patches!) If you do not have your own laptop to use to fly the drone, come talk to us. We will provide you with a laptop to use as a base station throughout the semester.

If you wish, you may want to install [Robot Operating System (ROS)](http://www.ros.org/)  on your base station, but this is not required. Installing ROS is complicated. We use [Ubuntu 14.04](http://releases.ubuntu.com/14.04/)  and [ROS Indigo](http://wiki.ros.org/indigo). You can do this as a dual-boot (recommended, since more of your hardware will work, and it will be faster) or in a VM such as Virtual Box (less recommended; it's hard to get all the hardware to work and it imposes a performance penalty).

Installing ROS may be useful if you wish to do more advanced projects. You can try out [rviz](http://wiki.ros.org/rviz) for visualization, and try out existing ROS nodes more easily. Installing new ROS nodes on the PI requires compiling all the dependencies on the PI. Also many nodes are computationally expensive and better run offboard.

You can complete all assignments and work for the course without installing ROS on your base station. We will include assignments for learning more about ROS, but you will use the ROS Indigo installed on your Raspberry Pi for this work.

## Connect to the Drone
Connect to the drone's wifi network, `defaultdrone` by default. The wifi password is bigbubba. Once connected, `ssh pi@defaultdrone.local`. (Or figure out the IP address from route; see the networking assignment.) The password is `bigbubba`.

Note that our convention for "default" unsecured passwords is bigbubba. This is a password to be used when you would like an unsecured password such as "password", or the like.

Be careful it is your drone as other students may be powering on their drones at the same time, causing namespace collisions. You can test if it is your drone by using the `./blinkpowerled.sh` script, located in the `~/cs1951r_utils` directory. This script causes the red power LED to blink on and off several time at 1Hz. Run it and make sure your LED blinks and not someone else's!

Change the hostname with sudo raspi-config. (This is important because you want to know if you connect to the wrong drone.) Change the wifi SSID by editing `/etc/hostapd/hostapd.conf`. Reboot after these changes by running `sudo reboot`.

## Get the repo
In order to get our solution code, you'll need to connect your drone to the internet. We've included a script, `~/cs1951r_utils/connect_to_rlab.py` that will disable your wifi access point and connect to the RLAB network. It will reset to the access point after a reboot.

Run connect_to_rlab.py, and then connect your basestation to RLAB wifi (password: metropolis) You should be able to ping your drone with `ping pi@hostname` where hostname is whatever you set it to in the previous step. If this does not work, try using `nmap` to find your drone. When doing this be very sure you are connected to your drone. (Blink the power LED to be sure.)

SSH back into your drone, `ssh pi@hostname`, and go to the src folder in your ros workspace `cd ~/ws/src`. Clone our solution code with `git clone https://github.com/h2r/pidrone_pkg`.

Go to the workspace root by running `cd ~/ws`. Run `catkin_make --pkg pidrone_pkg` to create messages.

Calibrate the acc by running `~/ws/src/pidrone_pkg/scripts/calibrateAcc.py`. It is a good idea to redo this after every crash. You can also do this in Cleanflight, if you plug the flight controller into your base station.  

If you are on the RLAB network you will need to edit `~/ws/src/pidrone_pkg/setup.sh` to set the ROS_HOSTNAME to your chosen hostname. You can just switch the comments in that file so that ROS_IP is commented out and ROS_HOSTNAME is commented in. If you are in AP mode you need to set ROS_IP. (A todo item for us is to configure DNS on the Pi so that hostname access works when the Pi is in Master mode and acting as a DHCP server; then you could use ROS_HOSTNAME in both instances. That said, one of the most common ROS setup problems is incorrectly setting these environment variables, so we do want to make sure you know about them and how to use them.)  

## Start Up the Programs
Start [screen](https://www.gnu.org/software/screen/) by changing to `~/ws/src/pidrone_pkg and running screen -c pi.screenrc`. Screen is a program that allows you to have multiple shells open in one ssh session. We use it for the drone because it allows us to preload the different programs you need to run in order to make the drone fly. In this way you can have a full shell for each program in which you can explore different command line options, start and stop, see logging information.  

We have a custom screen configuration file, `pi.screenrc` that sets things up. In screen, the escape key is the "&#96;" key (the same key as ~). You can switch windows by running the escape key followed by a number. For example, '&#96;'0 will switch to window 0, which is running roscore. Some other useful useful commands:  

to move to cycle through the windows: '&#96;'n  
to disconnect from the screen: '&#96;'d   
to reconnect to a screen: screen -x  
to kill the whole screen: '&#96;':quit  
to check if there are any screens running: screen -list  
After screen starts, verify the following programs have been started by switching to each window and checking. Some programs may not be started yet or may need to be restarted. (For safety we do not automatically start mode_controller.py which can arm the drone. )

\`0: roscore (enables ROS nodes to communicate)  
\`1: mode_controller.py (controls whether drone is disarmed, armed, or flying)  
\`2: command_line_interface.py (enables user to send flight commands to the drone through the command line)  
\`3: flight_controller_node.py (sends flight commands to the flight controller)  
\`4: pid_controller.py (runs a PID controller for the drone to autonomously control its motion)  
\`5: state_estimator.py (publishes the estimated state of the drone)  
\`6: vision_flow_and_phase.py (enables the pi camera to start recording)  
\`7: infrared_pub.py (publishes height readings from the infrared sensor)  
\`8: rosbridge (allows the Javascript interface to connect to the drone)  
\`9: web_video_server (the python program that serves camera images as an image stream for the web)  
If roscore fails to start, you will need to restart all of the other programs once you get it running. Sometimes roscore starts "half way" and leaves a zombie process running. If it won't start, run ps -elf | grep ros and kill any roscore or rosmaster processes and try again. You know it has started correctly when you see it print the ROS_MASTER_URI.

## Start Up the Web Interface
Connect to the Web Interface by opening up _index.html_ in the `web` folder of pidrone_pkg.

1) Test the IR sensor by moving the drone and make sure the values make sense. Try using the sensor over different surfaces. What surfaces work the best?  
2) Point the camera at different things. What happens when the camera is very close to an object? What happens when there is a lot of light? What happens when there is little light?  
3) Move the drone around by hand. Observe the IMU values.  
4) Arm and disarm the drone (with the propellers off). Does it work?  

## Test the Heartbeat
The drone will disarm and halt if it has not received a heartbeat in the last five seconds. The web interface sends this heartbeat to tell the drone it is connected.

To enable a local heartbeat you can run the following command in a free window in the screen (\`6 or \`10): `rostopic pub /pidrone/heartbeat std_msgs/String "rostopic" -r 1`

1) Without running a heartbeat on the drone and with the web interface connected: Arm the drone, then close the web window. Verify the drone automatically disarms after 5 seconds.  
2) Without running a heartbeat on the drone and with the web interface connected: Arm the drone, then disconnect from the drone wifi. Verify the drone automatically disarms after 5 seconds.  
3) Publish the heart beat with the rostopic pub command above. What happens now when you disconnect the Wifi? Why? (Make sure your props are off when doing this test!)  
As soon as there are propellors on your drone **NEVER** run the heartbeat message locally.

## Checkoff
Show your drone to a TA with each part of the UI working. They will verify that 1) the IR sensor is working 2) the camera is sending data 3) arm/disarm works and 4) the heartbeat safety mechanism works on wifi dropouts.

They will then show you how to fly.
