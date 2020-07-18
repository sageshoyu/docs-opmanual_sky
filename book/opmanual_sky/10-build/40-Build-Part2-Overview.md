# Build: Part 2 Overview {#build-part2-overview status=ready}

**Expected Time**: 10 minutes

## Preface

At a high level, a **sensor** is a device that _observes_ something about the world and reports its observations on an electrical wire. For example, a camera can be a sensor.

In contrast, an **actuator** is a device that _does_ something when provided power via an electrical wire. For example, a motor can be an actuator.

The simplest possible robot is one that has only actuators. However, a robot with any amount of autonomy would also require sensors. This is because such a robot would need observations about its world in order to decide what to do with its actuators.

In this part of the build, you will be adding your first sensor to the drone -- the infrared (IR) sensor. The IR sensor is used to measure distance. We'll provide more details about the hardware used in this portion of the build, explain the circuit you'll be creating, and then get into the instructions.

## Hardware

### Infrared (IR) Sensor
The IR sensor is a sensor which measures distance to an object by utilizing infrared beams. It will be attached to the drone frame facing downward. This will allow the drone's micro-computer to gather information regarding its distance from the ground (i.e. height).

However, the IR sensor cable cannot be plugged into the drone's micro-computer directly. The sensor measurement must first go through *analog-to-digital* (i.e. ADC) conversion. This conversion is necessary so that the micro-computer understands the measurements.

Implementing this conversion requires building a basic circuit that sends the IR sensor output (the yellow wire) to an ADC device as input. In block-diagram form, this looks like:

<figure>
    <figcaption>ADC Circuit Block Diagram</figcaption>
    <img style='width:400px' src="photos/adc_block_diagram.jpg"/>
</figure>
