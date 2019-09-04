# Parts List {#build-assignment-2 status=ready}

During this step you will learn about each of the parts of the drone. Read the following parts list and verify you have each component.

Please note that all hardware to secure components is included.  
**Requires** 2mm, 2.5mm hex wrench, small Phillips screwdriver, thick double-sided tape, heat shrink tubing, soldering equipment, zip ties, wire snips, and wire strippers.  

## **FPV250 Drone Frame**
<figure>
    <figcaption>FPV250 Drone Frame</figcaption>
    <img style='width:35em' src="photos/drone_frame.jpg"/>
</figure>

**Units:** 1  
**Description:** This 250mm plastic racing quad frame is the chassis for the drone, included in the frame box.

## **Power Distribution Board (PDB)**
<figure>
    <figcaption>PDB</figcaption>
    <img style='width:35em' src="photos/diatonepdb.png"/>
</figure>  
 
**Units:** 1  
**Description:** This board distributes power to the various components of the drone, and it is included with the frame box.

## **XT60 Connector + Protective Casing + 12AWG Red and Black Wires**
<figure>
    <figcaption>Power Cable</figcaption>
    <img style='width:35em' src="photos/XT60_connector_plus_red_and_black_wires.jpg"/>
</figure>  
   
**Units:** 1  
**Description:** The connector for the battery.  

## [**2205 2300KV Brushless Motor**](https://www.amazon.com/Crazepony-DX2205-2300KV-Brushless-Quadcopter/dp/B07B4738T9)
<figure>
    <figcaption>2205 2300KV Brushless Motor</figcaption>
    <img style='width:35em' src="photos/2205_2300kv_brushless_motors_red.jpg"/>
</figure>  

**Units:** 4 (two clockwise and two counterclockwise)  
**Description:** These brushless motors are the powerhouses of the system. A 3-phase AC signal drives them at variable speeds to keep the drone in the air. 

## [**5040 3-Blade Propellers**](https://www.amazon.com/Toolcool-Kingkong-Propellers-Quadcopters-Multicopters/dp/B01INCXNQY)
<figure>
    <figcaption>Propellers</figcaption>
    <img style='width:35em' src="photos/props.png"/>
</figure>  
  
**Units:** 4 (two clockwise and two counterclockwise, paired with motors)   
**Description:** 5040 propellers serve as the wings of this drone. 5 refers to the diameter in inches, and 4 refers to the distance the propeller would travel if turned 1 rotation without slippage, say in jello. Three blades gives us more lift for a given diameter than two blades at the cost of efficiency.

## [**30A Brushless Electronic Speed Controller (ESC)**](https://www.amazon.com/dp/B07FD4G32J)
<figure>
    <figcaption>ESCs</figcaption>
    <img style='width:35em' src="photos/esc.jpg"/>
</figure>  
  
**Units:** 4    
**Description:** These convert DC power from the battery into three-phase AC. It allows the flight controller to programmatically control the drone. You need an ESC for each of the four motors.     

## [**2.0mm Bullet Connector**](https://www.amazon.com/Pixnor-Plated-Female-Connectors-Battery/dp/B0113N3D42/)
<figure>
    <figcaption>Bullet Connectors</figcaption>
    <img style='width:35em' src="photos/bullet_connector.jpg"/>
</figure>  
  
**Units:** 24 (12 of male side and 12 of female side)    
**Description:** On the left is the male side and on the right is the female side. The male side can be inserted into the female side to complete a connection. We use these bullet connectors to connect ESCs to motors. 

## [**6mm + 4mm Brass Standoff**](https://www.amazon.com/Motherboard-Brass-Standoff-Hexagonal-Spacer/dp/B00MJU985C)  
<figure>
    <figcaption>Standoffs</figcaption>
    <img style='width:35em' src="photos/standoffs.png"/>
</figure>  

**Units:** 6    
**Description:** The standoffs allow us to place the pi mount on top of the PDB (Power Distribution Board) and stablize the pi hat on the Raspberry Pi.

## **M3 Bolts**
<figure>
    <figcaption>M3 BoltB</figcaption>
    <img style='width:35em' src="photos/standoffs_with_screws.png"/>
</figure>  
 
**Units:** 4    
**Description:** M3 Bolts allow us to use standoffs to place the pi mount on top of the PDB.

## [**Raspberry Pi 3 Model B (Pi)**](https://www.alliedelec.com/product/raspberry-pi/raspberry-pi-3/70816528/)
<figure>
    <figcaption>Raspberry Pi</figcaption>
    <img style='width:35em' src="photos/pi_on_box.png"/>
</figure>  

**Units:** 1   
**Description:** Computer and processor for the drone. Integrates all sensor information and sends commands to actuators. 

## [**16GB Micro SD Card**](https://www.amazon.com/SanDisk-Mobile-MicroSDHC-SDSDQM-B35A-Adapter/dp/B004ZIENBA/)
<figure>
    <figcaption>Micro SD Card</figcaption>
    <img style='width:35em' src="photos/sd.png"/>
</figure>  

**Units:** 1   
**Description:** This is the onboard storage for the Raspberry Pi. All of our code goes on here.

## [**Heat Sinks**](https://www.amazon.com/dp/B076ZH6X9L)
<figure>
    <figcaption>Heat Sinks</figcaption>
    <img style='width:35em' src="photos/heat_sinks.jpg"/>
</figure>  

**Units:** 3 (14mm * 14mm * 7mm, 9mm * 9mm * 5mm, 12mm * 12mm * 1mm)    
**Description:** These transfer the heat generated by the Raspberry Pi to air, allowing regulation of the device's temperature at optimal levels.

## [**Screws for Pi to Pi Mount**](https://github.com/duckietown/docs-opmanual_sky/blob/master/book/opmanual_sky/10-build/PiMount%20V2%20(1)%20(1).stl)
<figure>
    <figcaption>Screws for Pi to Pi Mount</figcaption>
    <img style='width:35em' src="photos/screws_silver.jpg"/>
</figure>  
 
**Units:** 3    
**Description:** The screws allow us to place the Raspberry Pi on top of the pi mount.

## [**Battery Eliminator Circuit (BEC)**](https://hobbyking.com/en_us/kingkong-5v-3a-ubec.html)
<figure>
    <figcaption>BEC</figcaption>
    <img style='width:35em' src="photos/bec.png"/>
</figure>  
 
**Units:** 1   
**Description:** This 5V switching regulator drops the voltage from the battery to 5V so that we can power the Raspberry Pi from the battery. (There is a BEC included with the frame which is not sufficiently powerful to drive the Raspberry Pi, so we use this one instead).

## [**Flight Controller (FC)**](https://hobbyking.com/en_us/skyline32-advanced-flight-controller-w-baseflight-cleanflight.html)
<figure>
    <figcaption>Flight Controller</figcaption>
    <img style='width:35em' src="photos/fc.png"/>
</figure>  
  
**Units:** 1   
**Description:** Inertial Measurement Unit (IMU) and gyroscope. Measures the linear and angular acceleration the drone is experiencing. Plugs into the Raspberry Pi via USB and talks MSP (Multi Wii Serial Protocol). For more information, read the manual.

## [**USB to Micro USB**](https://www.amazon.com/dp/B078L2J7Q1)
<figure>
    <figcaption>Micro USB</figcaption>
    <img style='width:35em' src="photos/usb.png"/>
</figure>  
 
**Units:** 1   
**Description:** Connects the Raspberry Pi and the flight controller.  

## [**Arducam 5 Megapixels 1080p OV5647 Camera**](https://www.amazon.com/Arducam-Megapixels-Sensor-OV5647-Raspberry/dp/B012V1HEP4/)
<figure>
    <figcaption>Camera</figcaption>
    <img style='width:35em' src="photos/cam.png"/>
</figure>  
  
**Units:** 1   
**Description:** This camera points downward and allows the drone to image the space it is flying over.

## [**Infrared Sensor (IR, 10cm-80cm range)**](https://www.robotshop.com/en/sharp-gp2y0a21yk0f-ir-range-sensor.html) + [**8in. IR Sensor Cable**](https://www.robotshop.com/en/sirc-01-sharp-gp2-ir-sensor-cable-8.html)
<figure>
    <figcaption>IR Sensor</figcaption>
    <img style='width:35em' src="photos/ir.png"/>
</figure>  
  
**Units:** 1   
**Description:** Infrared distance sensor. Points downward and measures distance to the ground. We use it for altitude control.


## [**Perma-Proto Raspberry Pi Hat (Pi Hat)**](https://www.adafruit.com/product/2310)
<figure>
    <figcaption>Pi Hat</figcaption>
    <img style='width:35em' src="photos/hat.png"/>
</figure>  
 
**Units:** 1    
**Description:** This hat make it much easier to manage the soldering and wiring. 

## [**Adafruit Analog to Digital Converter (ADC)**](https://www.digikey.com/product-detail/en/adafruit-industries-llc/1083/1528-1014-ND/4990763)
<figure>
    <figcaption>ADC</figcaption>
    <img style='width:35em' src="photos/adc.png"/>
</figure>  
   
**Units:** 1    
**Description:** This device allows us to use the Raspberry Pi to read from the infrared sensor. It converts analog signal to digital.

## [**Pi Mount**](https://github.com/duckietown/docs-opmanual_sky/blob/master/book/opmanual_sky/10-build/PiMount%20V2%20(1)%20(1).stl)
<figure>
    <figcaption>Pi Mount</figcaption>
    <img style='width:35em' src="photos/pi_mount.jpg"/>
</figure>  
 
**Units:** 1   
**Description:** We 3D printed a mount to attach the Raspberry Pi to the frame. 

## [**1500mAh 3S 20C LiPo Battery**](https://hobbyking.com/en_us/turnigy-1500mah-3s-20c-lipo-pack.html)
<figure>
    <figcaption>Battery</figcaption>
    <img style='width:35em' src="photos/battery.png"/>
</figure>  
 
**Units:** 1   
**Description:** This lithium polymer battery can supply up to 360 watts of power, and keeps the drone in the air for about 7 minutes. 

## [**12V 2-3S LiPo Charger**](https://hobbyking.com/en_us/turnigy-12v-2-3s-basic-balance-charger.html)+[**AC/DC US Charge Adapter**](https://hobbyking.com/en_us/frsky-ac-dc-charge-adapter-us-version.html)
<figure>
    <figcaption>Battery Charger</figcaption>
    <img style='width:35em' src="photos/charger.png"/>
</figure>  

**Units:** 1   
**Description:** The charger is used to charge the battery connecting to the AC/DC US charge adapter in out kit. The charge adapter can be plugged into a wall outlet and convert AC to a single DC voltage, the input is 100-240v 50/60Hz 0.2A, and the output is 15v DC 0.5A.

## [**Velcro**](https://www.amazon.com/dp/B00T2JQ0ZE)
<figure>
    <figcaption>Velcro</figcaption>
    <img style='width:35em' src="photos/velcro.jpg"/>
</figure>  
 
**Units:** 1    
**Description:** This can help attach the battery to the drone.                       

# Materials List {#build-assignment-2 status=ready}

## [**Heat Shrinks**](https://www.amazon.com/dp/B07GS7PBHV)
<figure>
    <figcaption>Heat Shrinks</figcaption>
    <img style='width:35em' src="photos/heat_shrinks.png"/>
</figure>  
       
**Description:** Heat-shrink tubing (or, commonly, heat shrink or heatshrink) is a shrinkable plastic tube used to insulate wires, providing abrasion resistance and environmental protection for stranded and solid wire conductors, connections, joints and terminals in electrical work.   

## [**Zip Ties**](https://www.amazon.com/dp/B078T6N58P)
<figure>
    <figcaption>Zip Ties</figcaption>
    <img style='width:35em' src="photos/zip_ties.jpg"/>
</figure>  
       
**Description:** A zip tie is a type of fastener, for holding items together, primarily electrical cables or wires.     
