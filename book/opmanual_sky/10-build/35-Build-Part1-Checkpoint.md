# Part 1 Checkpoint {#build-part1-checkpoint status=ready}

**Expected Time**: 10 minutes

## Connect to the Pi for the first time

You will now verify that the SD card is working properly by connecting to your Pi for the first time. The SD card is configured to serve a text editor that gives you access to all of the files on the Pi. You won't be making any changes at this point, you will just be verifying that you can connect to the server.

### Power up your drone build

Plug the battery into the XT60 connector

### Connect to the drone's wifi network

On your base station, connect to the network labelled **defaultdrone**. The wifi password is **bigbubba**

Note: At this point you will lose internet access, because you will be connected to the Pi's network. You can disconnect and reconnect to the network at any point without causing issues on the Pi.

### Browse to your drone's code server

In a web browser on your base station, browse to [192.168.42.1:8081](192.168.42.1:8081). The first 8 numbers (192.168.42.1) are the IP address of the drone, and the numbers after the colon (8081) is the port number that the text editor is served to

### Checkoff

If the link does not show an error, then your SD card is correctly flashed! The screen you are looking at is a text editor that allows you to edit the code on your drone. Any changes you make in this editor will be automatically saved to the drone. You can browse around the text editor and files if you'd like. You will be learning more about this interface in a later lesson.

Congrats on finishing Build Part 1!
