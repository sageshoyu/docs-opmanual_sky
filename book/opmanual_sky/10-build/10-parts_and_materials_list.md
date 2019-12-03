# Parts and Materials List {#build-parts-and-materials status=ready}

This document contains a list of parts and materials needed to build a drone. Every item is included in a drone kit, unless specified otherwise.
 
## [**FPV250 Drone Frame**](https://hobbyking.com/en_us/hobbyking-fpv250-v4-orange-ghost-edition-led-night-flyer-fpv-quad-copter-orange-kit.html)
<figure>
    <img src="photos/drone_frame.jpg" width="400" align="middle"/>
</figure>

**Units:** 1  
**Description:** A 250mm plastic racing quad frame. Included in the frame box.

## [**Power Distribution Board (PDB)**](https://hobbyking.com/en_us/hobbyking-fpv250-v4-orange-ghost-edition-led-night-flyer-fpv-quad-copter-orange-kit.html)
<figure>
    <img src="photos/diatonepdb.png" width="400"/>
</figure>  
 
**Units:** 1  
**Description:** An electronic component that distributes power that it receives to other components connected to it. Included in the frame box.

## [**XT60 Connector** + **Protective Casing** + **12AWG Red Wire** + **12AWG Black Wire**](https://www.amazon.com/Female-Connector-Housing-Silicon-Battery/dp/B073QJWVVK)
<figure>
    <img src="photos/XT60_connector_plus_red_and_black_wires.jpg" width="400"/>
</figure>  
   
**Units:** 1 + 1 + 1 + 1

**Description:** When put together, makes a power connector cable that transfers power it receives.

## [**2205 2300KV Brushless Motor**](https://www.amazon.com/Crazepony-DX2205-2300KV-Brushless-Quadcopter/dp/B07B4738T9/)
<figure>
    <img src="photos/2205_2300kv_brushless_motors_red.jpg" width="200"/>
</figure>  

**Units:** 4 (2 clockwise and 2 counterclockwise)  
**Description:** An actuator that spins at variable RPM based on how much power it receives. Note that the motor direction (CW or CCW) specifies only the *nut threading*, not the direction of spin; both CW and CCW motors can spin bidirectionally.

## [**5040 3-Blade Propeller**](https://www.amazon.com/Toolcool-Kingkong-Propellers-Quadcopters-Multicopters/dp/B01INCXORW/)
<figure>
    <img src="photos/props.png" width="400"/>
</figure>  
  
**Units:** 4 (2 clockwise and 2 counterclockwise, paired with motors)   
**Description:** A device with blades that turns rotational motion into thrust. 5 refers to the diameter in inches, and 4 refers to the distance the propeller would travel if turned one rotation without slippage, e.g. in jello. Three blades gives more lift for a given diameter than two blades - at the cost of efficiency.

## [**30A Brushless Electronic Speed Controller (ESC)**](https://www.amazon.com/dp/B07FD4G32J)
<figure>
    <img src="photos/esc.jpg" width="400"/>
</figure>  
  
**Units:** 4    
**Description:** An electronic component that sends variable amount of power to a motor, based on a specified input signal. Every motor needs one ESC.

## [**2.0mm Bullet Connector**](https://www.amazon.com/Pixnor-Plated-Female-Connectors-Battery/dp/B0113N3D42/)
<figure>
    <img src="photos/bullet_connector.jpg" width="200"/>
</figure>  
  
**Units:** 24 (12 male and 12 female)    
**Description:** On the left is a male connector and on the right is a female connector. A male connector can be inserted into a female connector to complete an electric connection.

## [**6mm + 4mm Brass Standoff**](https://www.amazon.com/Motherboard-Brass-Standoff-Hexagonal-Spacer/dp/B00MJU985C)
<figure>
    <img src="photos/standoffs.png" width="200"/>
</figure>  

**Units:** 6    
**Description:** A special type of screw that can also accept other screws.

## **M3 Black Bolt**
<figure>
    <img src="photos/standoffs_with_screws.png" width="200"/>
</figure>  
 
**Units:** 12-16   
**Description:** A screw that can be screwed into a standoff or a motor. Included in the motors box.

## [**Raspberry Pi 3 Model B (Pi)**](https://www.alliedelec.com/product/raspberry-pi/raspberry-pi-3-model-b-/71131895/)
<figure>
    <img src="photos/pi_on_box.png" width="400"/>
</figure>  

**Units:** 1   
**Description:** A single board computer that can execute code loaded via an SD card.

## [**16GB Micro SD Card**](https://www.amazon.com/SanDisk-Mobile-MicroSDHC-SDSDQM-B35A-Adapter/dp/B004ZIENBA/)
<figure>
    <img src="photos/sd.png" width="300"/>
</figure>  

**Units:** 1   
**Description:** A memory device, especially notable because it can store code and be inserted into a Pi.

## [**Heat Sink**](https://www.amazon.com/dp/B076ZH6X9L)
<figure>
    <img src="photos/heat_sinks.jpg" width="300"/>
</figure>  

**Units:** 3 (14mm * 14mm * 7mm; 9mm * 9mm * 5mm; 12mm * 12mm * 1mm)    
**Description:** A device that dissipates heat into the air. When attached to a Pi, it will regulate temperature at optimal levels.

## **Pi Mount**
<figure>
    <img src="photos/pi_mount.jpg" width="300"/>
</figure>  
 
**Units:** 1   
**Description:** A 3D-printed mount for attaching the Raspberry Pi to the drone frame. 

## **Screws for Pi to Pi Mount**
<figure>
    <img src="photos/screws_silver.jpg" width="300"/>
</figure>  
 
**Units:** 3    
**Description:** Small screws for mounting the Pi on top of the pi mount. Included in the frame box.

## [**Battery Eliminator Circuit (BEC)**](https://hobbyking.com/en_us/kingkong-5v-3a-ubec.html)
<figure>
    <img src="photos/bec.png" width="300"/>
</figure>  
 
**Units:** 1   
**Description:** An electronic component that transforms high power into low power (in technical terms, performs a *voltage drop*). 

## [**Flight Controller (FC)**](https://hobbyking.com/en_us/skyline32-advanced-flight-controller-w-baseflight-cleanflight.html) + [**USB to Micro USB**](https://www.amazon.com/dp/B078L2J7Q1)

| Flight Controller     | USB to Micro USB           |
|:-------------------------:|:-------------------------:|
|<img src="photos/fc.png" width="250"/>  | <img src="photos/usb.png" width="250"/> |
  
**Units:** 1 + 1  
**Description:** A flight controller is a device that contains a few sensors: an Inertial Measurement Unit (IMU) and a gyroscope; an IMU measures linear accelerations and a gyroscope measures angular velocities. These measurements are reported via a USB to Micro USB. A flight controller can also send input signals to an ESC.

## [**Arducam 5MP 1080p OV5647 Camera (Pi Cam)** + **15pin Flexible Flat Cable (FFC)**](https://www.amazon.com/Arducam-Megapixels-Sensor-OV5647-Raspberry/dp/B012V1HEP4/)
<figure>
    <img src="photos/cam.png" width="300"/>
</figure>  
  
**Units:** 1 + 1   
**Description:** A sensor that observes 2D images of the world and reports it on a FFC cable. FFC included in pi cam box.

## [**Infrared Sensor (IR)**](https://www.robotshop.com/en/sharp-gp2y0a21yk0f-ir-range-sensor.html) + [**IR Sensor Cable**](https://www.robotshop.com/en/sirc-01-sharp-gp2-ir-sensor-cable-8.html)
<figure>
    <img src="photos/ir.png" width="300"/>
</figure>  
  
**Units:** 1 + 1  
**Description:** A sensor that measures distance to an object using infrared beams, then reports it on a cable.

## [**Perma-Proto Raspberry Pi Hat (Pi Hat)**](https://www.adafruit.com/product/2310)
<figure>
    <img src="photos/hat.png" width="300"/>
</figure>  
 
**Units:** 1    
**Description:** A breadboard specifically designed for easy attachment to a Pi.

## [**Adafruit Analog-to-Digital Converter (ADC)**](https://www.digikey.com/product-detail/en/adafruit-industries-llc/1083/1528-1014-ND/4990763)
<figure>
    <img src="photos/adc.png" width="300"/>
</figure>  
   
**Units:** 1    
**Description:** A device that converts real-valued signals (i.e. analog) into discrete-valued signals (i.e. digital).

## [**1500mAh 3S 20C LiPo Battery**](https://hobbyking.com/en_us/turnigy-1500mah-3s-20c-lipo-pack.html)
<figure>
    <img src="photos/battery.png" width="300"/>
</figure>  
 
**Units:** 1   
**Description:** A lithium polymer battery used to power the drone. 

## [**12V 2-3S LiPo Charger**](https://hobbyking.com/en_us/turnigy-12v-2-3s-basic-balance-charger.html) + [**AC/DC US Charge Adapter**](https://hobbyking.com/en_us/frsky-ac-dc-charge-adapter-us-version.html)

| LiPo Charger     |  Charge Adapter            |
|:-------------------------:|:-------------------------:|
|<img src="photos/charger.png" width="250"/>  |  <img src="photos/charge_adapter.jpg" height="200"/> |


**Units:** 1 + 1   
**Description:** A charger used to charge a LiPo battery. A charger adapter is needed in order to plug the charger into a wall outlet.

## [**Velcro**](https://www.amazon.com/dp/B00T2JQ0ZE)
<figure>
    <img src="photos/velcro.jpg" width="300"/>
</figure>  
 
**Units:** 1    
**Description:** A velcro strip used to hold the battery to the drone.                     

## [**Heat Shrinks** (not included)](https://www.amazon.com/dp/B07GS7PBHV)
<figure>
    <img src="photos/heat_shrinks.png" width="400"/>
</figure>  
       
**Description:** A heat shrink (a.k.a heatshrink or heat-shrink tubing) is a shrinkable plastic insulator tube used to insulate wires. It is commonly used as a "sleeve" over a solder joint.

## [**Zip Ties** (not included)](https://www.amazon.com/dp/B078T6N58P)
<figure>
    <img src="photos/zip_ties.jpg" width="300"/>
</figure>  
       
**Description:** A zip tie is a type of fastener for holding items together, primarily electrical cables or wires.       
