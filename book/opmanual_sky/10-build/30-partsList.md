# Parts List {#build-assignment-2 status=ready}

During this step you will learn about each of the parts of the drone. Read the following parts list and verify you have each component.

Please note that all hardware to secure components is included.
**Requires** 2mm, 2.5mm hex wrench, small Phillips screwdriver, thick double-sided tape, heat shrink tubing, soldering equipment, zip ties, wire snips, and wire strippers.  

## [**Raspberry Pi 3 Model B**](https://www.adafruit.com/product/3055?src=raspberrypi)
<figure>
    <figcaption>Raspberry Pi</figcaption>
    <img style='width:35em' src="pi_on_box.png"/>
</figure>  

**Price:** \$35.00  
**Units:** 1  
**Description:** Computer and processor for the drone. Integrates all sensor information and sends commands to actuators.  

## [**16 GB Micro SD**](https://www.amazon.com/SanDisk-Mobile-MicroSDHC-SDSDQM-B35A-Adapter/dp/B004ZIENBA/)
<figure>
    <figcaption>Micro SD Card</figcaption>
    <img style='width:35em' src="sd.png"/>
</figure>  

**Price:** \$6.90
**Units:** 1  
**Description:** This is the onboard storage for the raspberry pi. All of our code goes on here.  

## [**Raspberry Pi Camera**](https://www.amazon.com/Arducam-Megapixels-Sensor-OV5647-Raspberry/dp/B012V1HEP4/)
<figure>
    <figcaption>Pi Camera</figcaption>
    <img style='width:35em' src="cam.png"/>
</figure>  

**Price:** \$13.49  
**Units:** 1  
**Description:** This camera points downward and allows the drone to image the space it is flying over.    

## **Pi Mount**  
<figure>
    <figcaption>Pi Mount</figcaption>
    <img style='width:35em' src="pimount.png"/>
</figure>  

**Price:** \~\$0.00  
**Units:** 1  
**Description:** We 3D printed a mount to attach the Raspberry Pi to the frame.   
**STL file:** [Pi_mount](docs-opmanual_sky/book/opmanual_sky/10-build/PiMount V2 (1) (1).stl)

## [**Motherboard Standoffs**](https://www.amazon.com/Motherboard-Brass-Standoff-Hexagonal-Spacer/dp/B00MJU985C/)  
<figure>
    <figcaption>Standoffs</figcaption>
    <img style='width:35em' src="standoffs.png"/>
</figure>  

**Price:** \$1.10  
**Units:** 4    
**Description:** The standoffs allow us to place the pi mount on top of the PDB board.  

## [**Battery Eliminator Circuit (BEC)**](https://hobbyking.com/en_us/kingkong-5v-3a-ubec.html)
<figure>
    <figcaption>BEC</figcaption>
    <img style='width:35em' src="bec.png"/>
</figure>  

**Price:** \$3.56  
**Units:** 1  
**Description:** This 5V switching regulator drops the voltage from the battery to 5V so that we can power the Raspberry Pi from the battery. (There is a BEC included with the frame which is not sufficiently powerful to drive the PI, so we use this one instead.      

## [**Sharp 10-80cm IR Range Finder**](https://www.digikey.com/product-detail/en/parallax-inc/28995/28995-ND/3523692) + [**Wire**](https://www.robotshop.com/en/sirc-01-sharp-gp2-ir-sensor-cable-8.html?gclid=CjwKCAjw-8nbBRBnEiwAqWt1zUGFRw9FjnwJPU__O74-R7HYHX9dCgERxLdfKhTzlReZZWVJIDEfzxoCZvcQAvD_BwE)
<figure>
    <figcaption>IR Sensor</figcaption>
    <img style='width:35em' src="ir.png"/>
</figure>  

**Price:** \$12.99 + \$1.95  
**Units:** 1  
**Description:** Infrared distance sensor. Points downward and measures distance to the ground. We use it for altitude control.   

## [**Adafruit Analog to Digital Converter**](https://www.digikey.com/product-detail/en/adafruit-industries-llc/1083/1528-1014-ND/4990763)
<figure>
    <figcaption>ADC</figcaption>
    <img style='width:35em' src="adc.png"/>
</figure>  

**Price:** \$9.95    
**Units:** 1  
**Description:** This device allows us to use the Raspberry Pi to read from the infrared sensor. It converts analog signal to digital.    

## [**Pi Hat**](https://www.adafruit.com/product/2310)
<figure>
    <figcaption>Pi Hat</figcaption>
    <img style='width:35em' src="hat.png"/>
</figure>  

**Price:** \$4.95   
**Units:** 1  
**Description:** This hat make it much easier to manage the soldering and wiring.    

## [**250 mm Frame**](https://hobbyking.com/en_us/hobbyking-fpv250-v4-orange-ghost-edition-led-night-flyer-fpv-quad-copter-orange-kit.html)
<figure>
    <figcaption>Frame</figcaption>
    <img style='width:35em' src="frame.png"/>
</figure>  

**Price:** \$17.93    
**Units:** 1  
**Description:** This 250mm plastic racing quad frame is the chassis for the drone.  

## [**Skyline 32 Flight Controller**](https://hobbyking.com/en_us/skyline32-acro-flight-controller-w-baseflight-cleanflight.html)
<figure>
    <figcaption>Flight Controller</figcaption>
    <img style='width:35em' src="fc.png"/>
</figure>  

**Price:** \$20.27    
**Units:** 1  
**Description:** Inertial Measurement Unit (IMU) and gyroscope. Measures the linear and angular acceleration the drone is experiencing. Plugs into the Raspberry Pi via USB and talks MSP (Multi Wii Serial Protocol). For more information, read the manual.  

## [**6" USB to USB Micro**](https://www.amazon.com/StarTech-com-Inch-Micro-USB-Cable/dp/B003YKX6WM/)
<figure>
    <figcaption>Micro USB</figcaption>
    <img style='width:35em' src="usb.png"/>
</figure>  

**Price:** \$3.29  
**Units:** 1  
**Description:** Connects the Pi and Skyline.    

## [**Motors**](https://www.amazon.com/Crazepony-DX2205-2300KV-Brushless-Quadcopter/dp/B07B4738T9/)
<figure>
    <figcaption>Raspberry Pi</figcaption>
    <img style='width:35em' src="motors.png"/>
</figure>  

**Price:** \$38.49  
**Units:** 4 (two clockwise and two counterclockwise)  
**Description:** These brushless motors are the powerhouses of the system. A 3-phase AC signal drives them at variable speeds to keep the drone in the air.   

## [**20A ESC (Electronic Speed Controller)**](https://hobbyking.com/en_us/afro-race-spec-mini-20amp-opto-multi-rotor-speed-controller.html)
<figure>
    <figcaption>ESC</figcaption>
    <img style='width:35em' src="esc.png"/>
</figure>  

**Price:** \$12.25 x 4  
**Units:** 4    
**Description:** These convert DC power from the battery into three-phase AC. It allows the flight controller to programmatically control the drone. You need an ESC for each of the four motors.  

## [**5x4 Three Blade Propellers**](https://www.amazon.com/Toolcool-Kingkong-Propellers-Quadcopters-Multicopters/dp/B01INCXORW/)
<figure>
    <figcaption>Raspberry Pi</figcaption>
    <img style='width:35em' src="props.png"/>
</figure>  

**Price:** \$2.58  
**Units:** 4    
**Description:** 5040 propellers serve as the wings of this drone. 5 refers to the diameter in inches, and 4 refers to the distance the propeller would travel if turned 1 rotation without slippage, say in jello. Three blades gives us more lift for a given diameter than two blades at the cost of efficiency.   

## [**1500 Mah 3s LiPo**](https://hobbyking.com/en_us/turnigy-1500mah-3s-25c-lipo-pack.html)
<figure>
    <figcaption>Batteries</figcaption>
    <img style='width:35em' src="battery.png"/>
</figure>  

**Price:** \$13.40    
**Units:** 1  
**Description:** This lithium polymer battery can supply up to 360 watts of power, and keeps the drone in the air for about 7 minutes.    

## [**XT 60 Connector with Pigtail**](https://hobbyking.com/en_us/4mm-banana-plug-to-6-x-male-xt60-in-parallel.html)
<figure>
    <figcaption>XT 60 Connector</figcaption>
    <img style='width:35em' src="xt60connector.png"/>
</figure>  

**Price:** \$1.32    
**Units:** 1  
**Description:** The connector for the battery.  

## **Lipo Charger + AC Adapter**  
<figure>
    <figcaption>Battery Charger</figcaption>
    <img style='width:35em' src="charger.png"/>
</figure>  

**Price:** \$5.10 + \$7.37  
**Units:** 1  
**Description:** Used to charge the battery using a wall outlet.    

## Total: \$248.64
<figure>
    <figcaption>Finished Drone</figcaption>
    <img style='width:35em' src="drone.png"/>
</figure>

This price does not include spare batteries, supplies and tools.
