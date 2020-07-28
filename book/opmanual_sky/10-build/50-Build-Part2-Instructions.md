# Part 2 Instructions {#build-part2-instructions status=ready}

**Expected Time**: 2 hours


## Prep the IR Sensor Wire and ADC

1) Cut the black plastic piece off the end of the IR sensor cable, then strip each wire.


<figure class="flow-subfigures">
<figcaption>IR sensor cable before and after</figcaption>
   <figure>
       <figcaption>Pre-cut</figcaption>
       <img style='width:150px' src="photos/ir_cable_precut.jpg"/>
   </figure>
   <figure>  
       <figcaption>Post-cut (not yet stripped)</figcaption>
       <img style='width:150px' src="photos/ir_cable_postcut.jpg"/>
   </figure>
</figure>   

2) Cut/break the ADC header pin set to the same number as holes on the ADC.

<figure>
    <figcaption>ADC Pins</figcaption>
    <img style='width:200px' src="photos/pin_for_adc.jpg"/>
</figure>

Remark: If you break off the wrong number of pins, don't worry. Simply break off more/less as needed.

3) Solder the **short** end of the header pins into the ADC.    

<figure class="flow-subfigures">
<figcaption>ADC Pins Soldered</figcaption>
   <figure>
       <figcaption>Top View</figcaption>
       <img style='width:150px' src="photos/adc_pins_soldered_1.jpg"/>
   </figure>
   <figure>  
       <figcaption>Side View</figcaption>
       <img style='width:250px' src="photos/adc_pins_soldered_2.jpg"/>
   </figure>
</figure>


## Solder the IR Sensor Wire and ADC to the Pi Hat

1) Detach the Pi Hat from the Pi.

Gently lift the Pi Hat near the pin header to detach.

2) Solder the ADC and all wires to the Pi Hat according to the diagram (strip wires as needed):        

 Remark: Recall that the Pi Hat is a breadboard, so it has rails. The wires you solder do not need to go into exact holes; each wire just needs to go into a hole on the same rail as its corresponding ADC pin (e.g. red wire does not need to go into pin immediately adjacent to VDD pin of ADC - it can go into any hole of that rail).

Note: For the wires, we use the colors: red, black, green, and blue. However, any color wires will work.

<figure>
   <figcaption>Pi Hat Wiring Diagram</figcaption>
   <img style='width:300px' src="photos/pihat_adc_wiring.png"/>
</figure>


The completed circuit will look like the image below. If you would like additional help, check out the "Recommended" videos below.

Note: The extra pair of red and black wires are from the BEC which you soldered to the Pi Hat in Part 1.

<figure class="flow-subfigures">  
   <figcaption>Soldered Header Board</figcaption>
   <figure>
       <figcaption>Top View</figcaption>
       <img style='width:220px' src="photos/pihat_complete_topview.jpg"/>
   </figure>
   <figure>  
       <figcaption>Bottom View</figcaption>
       <img style='width:210px' src="photos/pihat_complete_bottomview.jpg"/>
   </figure>
</figure>


Recommended: [Insert ADC into Pi Hat](https://drive.google.com/file/d/10DsHfgPxzleOdPzpjynebLGuU_-UMFih/view?usp=sharing)

Recommended: [Solder ADC to Pi Hat](https://drive.google.com/file/d/1_r5iNeOAD3g3xVk7V9jtnWaDEPtin_R7/view?usp=sharing)

Recommended: [Solder ADC 5V](https://drive.google.com/file/d/1i1fepLq2-PzZnJJua8bOQQnqqQM63C4n/view?usp=sharing)

Recommended: [Solder ADC GND](https://drive.google.com/file/d/10GxVXjhaJXyDhS6FPi3GjGWZVHkVT9Q7/view?usp=sharing)

Recommended: [Solder ADC SCL](https://drive.google.com/file/d/1U68mP0GNdT6LHa__fqmN_D_JV61ksFSw/view?usp=sharing)

Recommended: [Solder ADC SDA](https://drive.google.com/file/d/1UP8hTfwcQvX_Z1aRkL1NaxZGfYk89Yqe/view?usp=sharing)

Recommended: [Solder IR Sensor 5V and GND](https://drive.google.com/file/d/1YsZZP-_f-Q6rHcDx_9-Ad0tqI2POgHyC/view?usp=sharing)

Recommended: [Solder IR Sensor Signal Wire](https://drive.google.com/file/d/1LgTdSrIuNMwt4ZrBlFJSbHxUlhc6eIVB/view?usp=sharing)
