# Build: Part 2 Instructions {#build-part2-instructions status=ready}

**Expected Time**: 2 hours

##  Connect the IR Sensor Wires

1) Gather the following:
    - ADC
    - ADC header pins set (in ADC packet)
    - Pi Hat
    - IR sensor
    - IR sensor cable (likely in IR bag)
    - 4 pieces of thin wire

Recommended: For the thin wire, we recommend 22-24 AWG, 3 in. length, colors: red, black, green, and blue. Additionally, we highly recommend using solid-core wire, not stranded wire. It is **much** easier to solder to the pihat with solid core wire.


2) Cut the black part off the IR sensor cable, then strip each wire.

<figure>  
   <figcaption>IR sensor cable pre-cut</figcaption>
   <figure>
       <figcaption>Top View</figcaption>
       <img style='width:250px' src="photos/ir_cable_precut.jpg"/>
   </figure>
   <figure>  
       <figcaption>IR sensor cable post-cut (not yet stripped)</figcaption>
       <img style='width:250px' src="photos/ir_cable_postcut.jpg"/>
   </figure>
</figure>  


3) Cut/break the ADC header pin set to the same number as holes on the ADC. **Solder the short end of the header pins into the ADC - NOT THE LONG END.**     

Remark: There is no electric conductivity between individual header pins, so it is okay if you accidentally cut/break too many pins from the set (e.g. full set of 12 pins broken into a set of 8 and set of 4 - instead of the needed 10). Simply break additional pins as needed (e.g. break 2 more pins from the set of 4, then you will have 8 + 2 = 10 pins).

   <figure>  
       <figcaption>ADC Pins Soldered</figcaption>
       <figure>
           <figcaption>Top View</figcaption>
           <img style='width:250px' src="photos/adc_pins_soldered_1.jpg"/>
       </figure>
       <figure>  
           <figcaption>Side View</figcaption>
           <img style='width:250px' src="photos/adc_pins_soldered_2.jpg"/>
       </figure>
   </figure>  


4) Solder the ADC and all wires to the Pi Hat according to the diagram (strip wires as needed):        

 Remark: Recall that the Pi Hat is a breadboard, so it has rails. The wires you solder do not need to go into exact holes; each wire just needs to go into a hole on the same rail as its corresponding ADC pin (e.g. red wire does not need to go into pin immediately adjacent to VDD pin of ADC - it can go into any hole of that rail).

   <figure>
       <figcaption>Pi Hat Wiring Diagram</figcaption>
       <img style='width:350px' src="photos/pihat_adc_wiring.jpg"/>
   </figure>

   For reference, the completed circuit will look like the following:

   <figure class="flow-subfigures">  
       <figcaption>Soldered Header Board</figcaption>
       <figure>
           <figcaption>Top View</figcaption>
           <img style='width:220px' src="photos/pihat_complete_topview.jpg"/>
       </figure>
       <figure>  
           <figcaption>Bottom View</figcaption>
           <img style='width:216px' src="photos/pihat_complete_bottomview.jpg"/>
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
