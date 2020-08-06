# Part 3 FC Overview {#build-part3-fc-overview status=ready}


## Preface

In this phase of the build, you will configure and calibrate the Flight Controller and ESCs. First, you will flash the flight controller with firmware, then you will configure the firmware to the settings that work best on the drone. Firmware is a special type of software that controls the hardware on a device.  

- **Part : Quantity**
- [Foam Mounting Tape](#materials-mounting-tape) : 1
- [USB to Micro USB cable](#materials-usb-to-micro-usb) : 1
- [base station](#materials-base-station)


## Hardware

### Flight Controller

The flight controller (i.e. FC) contains multiple sensors: an Inertial Measurement Unit (IMU) and a gyroscope. The IMU measures linear accelerations and the gyroscope measures angular velocities. The flight controller also receives commands from the Pi and them sends electric signals to the ESCs.

<figure>
     <figcaption>Flight Controller</figcaption>
    <img src="photos/new-fc.png" width="300"/>
</figure>
