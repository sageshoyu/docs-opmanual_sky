# Parts list for V3 drone (fall 2018)
During this step you will learn about each of the parts of the drone. Read the following parts list and verify you have each component.

| Part name      | Price $       | units | Description | Image|
| ------------- |:-------------:| -----:|:--------------|:--------:|
| Rasberry Pi 3     | $ | 1 |Computer and processor for the drone. Integrates all sensor information and sends commands to actuators.| Image HERE	
| 16 GB Micro SD      |   $    |   1 |This is the onboard storage for the raspberry pi. All of our code goes on here.| Image Here| 
| Rasberry Pi camera | $      |    1 |Rasberry Pi camera. It points downward and allows the drone to image the space it is flying over.| IMage Here
|Pi Mount| ~$0|1|We 3D printed a mount to attach the Rasberry Pi to the frame. The CAD model is linked above.	| Image Here|
|Battery Eliminator Circuit (BEC)| $| 1| This 5V switching regulator drops the voltage from the battery to 5V so that we can power the Rasberry Pi from the battery. (There is a BEC included with the frame which is not sufficiently powerful to drive the PI, so we use this one)|Image Here|
|Sharp 10-80cm IR range finder| $ | 1 | Infrared distance sensor. Points downward and measures distance to the ground. We use it for altiude control|Image Here|
|Adafruit Analog to Digital Converter | $ | 1 | This device allows us to use the raspberry pi to read from the infrared sensor. It converts analog signal to digital.| Image here |
|250 mm frame| $ | 1 | This 250mm plastic racing quad frame is the chasis for the drone.| Imahge HERE|
|Skyline 32 Flight Controller| $ | 1 | Intertial Measurement Unit (IMU) and gyroscope. Measures the linear and angular acceleration the drone is experiencing. Plugs into the Rasberry Pi via USB and talks MSP (Multi Wii Serial Protocol). For more information, read the manual.| Image Here|
|6" USB to USB micro| $ | 1| Connects the Pi and Skyline.| IMAGE here|
|Motors( Two clockwise and Two Counter-Clock-Wise)|$ | 4| These brushless motors are the powerhouses of the system. A 3-phase AC signal drives them at variable speeds to keep the drone in the air. | Image|
|20A ESC (electronic Speed Controller)| $| 4| These convert DC power from the battery into three-phase AC. It allows the flight controller to programmatically control the drone. You need an ESC for each of the four motors.	| IMage HEre| 
|5040 Threeblade Propellers| $ | 4 |5040 propellers serve as the wings of this drone. 5 refers to the diameter in inches, and 4 refers to the distance the propeller would travel if turned 1 rotation without slipage, say in jello. Three blades gives us more lift for a given diameter than two blades at the cost of efficiency.| IMAGE here|
|1500 Mah 3s LiPo| $ | 1|  This lithium polymer battery can supply up to 360 watts of power, and keeps the drone in the air for about 7 minutes.| IMAge HEre|
|XT 60 Connector with Pigtail| $ | 1 | The connector for the Battery.| Image|
| Total| $225| This price does not include spare batteries, chargers, and tools.


