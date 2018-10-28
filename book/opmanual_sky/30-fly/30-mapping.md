# Mapping and Localization {#mapping status=ready}

Version 2.0 of the PiDrone software comes with 5 programs for vision outlined in the table below. The two main algorithms are Localization and SLAM (Simultaneous Localization and Mapping). They both use the drone’s camera to produce a pose estimate, but localization requires a map of the environment before hand (map.jpg) whereas SLAM builds a map of the environment as it runs. SLAM is much slower than localization. The table shows which of the algorithms are supported under the following conditions: onboard (running on the raspberry pi), offboard (running on a separate Linux computer), online (running in real time) and offline (collecting data first and then computing in retrospect).

|              | Online                | Offline       |
|--------------|-----------------------|---------------|
| **Onboard**  &nbsp; &nbsp; | Localization and SLAM &nbsp; &nbsp; | SLAM  |
| **Offboard** &nbsp; &nbsp; | Localization and SLAM &nbsp; &nbsp; | SLAM  |


The offboard/online mode assumes that the offboard computer is fast
enough to run the programs in real time.  Localization is not
supported offline because localization cannot run in retrospect, only
in real time. Finally, note that SLAM onboard and online is supported,
but runs too slowly to work accurately. Do not expect this program to
produce accurate poses.

The following instructions describe how to use each of the five
supported programs.

These scripts replace the `vision_flow_and_phase.py` script that does
velocity and position control.  The reason is that we save time and
memory by avoiding sending images to different nodes on the Pi and
instead do all processing in a single node.


## Localization - Online

**Onboard:** run `vision_localization_onboard.py` on the pi. You must fly over the area captured in map.jpg. Press `r` in the web interface to toggle localization.

**Offboard:** run `vision_localization_offboard.py` on the pi and `offboard_localization.py` on the remote computer. You must fly over the area captured in map.jpg. Press `r` to toggle localization.


**Change the map:** It is easiest to take photos of the new map with a
  cell phone or other camera. Take them at a height of $25\mbox{cm}$
  and use an image stitching software to generate the map. We
  recommend [auto-stitch](http://matthewalunbrown.com/autostitch/autostitch.html) or [hugin](http://hugin.sourceforge.net/). Replace map.jpg with your new map and change
  the following four parameters in `offboard_localization.py`,
  `onboard_localization.py`, and `localization_helper.py`:
  MAP_PIXEL_WIDTH, MAP_PIXEL_HEIGHT, MAP_REAL_WIDTH,
  MAP_REAL_HEIGHT. You may need to resize the image to be smaller if
  it is too large.

## SLAM

**Offboard/online:** run `vision_localization_offboard.py` on the pi. On the offboard computer run `offboard_slam.py`. Press `r` to toggle SLAM.

**Onboard/online:** run `vision_localization_onboard.py --SLAM` on the
  pi. Press `r` to toggle localization.

**Onboard/offline**: run `vision_localization_onboard.py --SLAM --offline` on
  the Pi. Press `m` to toggle mapping mode on, during which time you
  can fly to collect data for the map. Pressing `m` again will stop
  the mapping and begin running SLAM offline. It is highly recommended
  that you land the drone for this part. Once it tells you that it is
  finished making the map, press `r` to toggle localization over the
  map you have just made.


In all modes,  

