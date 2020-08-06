# Part 2 Checkpoint {#build-part2-checkpoint status=ready}

**Expected Time**: 30 minutes

## Verify that the IR sensor is working properly

You will now to two checks to see if the IR sensor on your drone is working properly. The first check will involve reading the raw IR sensor measurements using a multimeter. Then, you will using the drone software and the web interface to see drone's height estimate.

### Reading the IR sensor using a multimeter

1) Plug the battery into your drone build

2) Set the multimeter to read voltage up to 2V

<figure>
  <figcaption>Multimeter in the correct setting</figcaption>
  <img style='width:220px' src="photos/multimeter-voltage.png"/>
</figure>

3) Probe the GND rail with the black multimeter probe, and probe any hole in the same row as the yellow IR sensor wire, except a hole in the the 5V or GND rails.

<figure>
  <figcaption>Probing the IR sensor data wire</figcaption>
  <img style='width:220px' src="photos/multimeter-pihat.png"/>
</figure>

4) Point the IR sensor at an object and then move the sensor closer and further to that object. Check that the value on the multimeter is getting smaller when the object is further, and larger when it is closer. If this is correct, then your IR sensor is working properly!

### Reading the IR sensor on the web interface {#part2-checkpoint-ir}

TODO: provide better chromebook support or include an extra sd card for the following:

Note: For Chromebook Users: The web interface will not work if you download the files to google drive. If you have an external storage device (extra sd cart, usb drive, etc) then you can download the software to this device, and it will work. (The only requirement is a place to store the files other than drive)

1) Download the zip file of the [drone's software stack on github](https://github.com/h2r/pidrone_pkg). To download the pidrone_pkg, click the Green Code Button then Download Zip from the dropdown menu on GitHub.

<figure>
  <figcaption>Download pidrone_pkg</figcaption>
  <img style='width:100%' src="photos/code-zip.png"/>
</figure>

2) Open the zip file and open the **web** folder.

3) Click on the index.html file

This will open up the web interface in your browser!

4) Plug the battery into your drone build and connect to the drone's wifi network, **defaultdrone**

5) Browse to the drone's code editor: [http://192.168.42.1:8081/](http://192.168.42.1:8081/)

6) Click the menu bar in the top left corner, then click Terminal > New Terminal

7) Paste and enter this command: **./start_pidrone_code.sh**

8) Go back to the web interface tab and refresh. Make sure that you see "Connected" at the top of the page

9) Move the IR sensor closer and further to an object and check that the Height Readings chart is changing



Congrats on finishing Build Part 2!
