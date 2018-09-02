## Sharp Infrared Range Finder
The Sharp IR sensor shoots out an infrared beam and measures distance by the angle at which that infrared light is bounced back.

It is an analog sensor, which means that it outputs a range of voltages to indicate its measurement, as opposed to a digital signal (1s and 0s). Unfortunately, the Raspberry Pi 3 does not have any way to read analog values, so we need a device to convert the analog voltage to a digital signal we can make sense of...

Enter the Analog to Digital Converter (ADC)!

![](https://previews.dropbox.com/p/thumb/AAIKs9Xlvc--s3dO-PUWDjqms6nEaLchIs0_Tp3EaUGaqzXE2vUhhiSXkVdBdLp_pwe65olY_FalE-4M6Cgr1s0wnro5rd69zOJYL-HDwnL77Az342RxWvEtau9Ww0G0NQtvRBKrofTmGd-21ewS1fhJ2SxXd-96rhPlc1p8M5S7xzI_ULmdC712IdtesPN1VRaynK-M4AL3ZCi6hwWCmjX43q1xzTbEzMjFH7NaLk_83g/p.jpeg?size=800x600&size_mode=3 "fig")

This nifty little device can read four analog signals (A0 - A4) and outputs a digital protocal (i2c) which the Pi can read.

## Pi Hat![](https://rlx.sk/8789-large_default/adafruit-perma-proto-hat-for-pi-mini-kit-no-eeprom-adafruit-2310.jpg "fig")
Solder header pins to ADC
![](https://previews.dropbox.com/p/thumb/AAK8ZX8vxbX3VNTl0UYYqDDqAX35P_PzkOeuupssVwkGIUaoCgPEG3Ah0ryIc5BFvNfTi5j0TQPrgKGorg_ZT38t3yBNd0VZqvlQZdKDf4aPIaQOsfTREy28Yj7pOVY6uzA1cFD5NUEOv1-dC7zEug9pUTwgHb6n_eKDd6Te1fT5mw/p.jpeg?size=800x600&size_mode=3)
![](https://previews.dropbox.com/p/thumb/AAJly3X_Sm3lxCKrkn3rSec1v7r72zLIxhODwU2VNLyzI2yi-48oGtnPw1cnkHmVcAQdqLhV-uU0rvCjitnQ4G_6iPmhxLurqWgZQMo4WrI9WBNqVRQIVjaZXgw2JIgelLYICAcETUS9jC_7CgYV0QuveRgd6ZvsuL9iJyH1YLSJKw/p.jpeg?size=800x600&size_mode=3)

Solder the  Pi header to the Pi hat.
![](https://previews.dropbox.com/p/thumb/AAJijvDQFh5MfuXCE_XjEn3Qk14EdSlouk4beawClPC5EBAdNXUaJ860DTLfaph5M7c0ZbhNOsgJRAKUuWoF6Sk9I-5uL8hON0Sc0fUTWjQDnCl9ilWuO0TVxqF6fKVUHMYiXOeaX3MdCCunNLqYF7i8guaMM3S4QXzodtUzgzW9fk_p5DcYw_iCKFWd-Sur17jZwK_lOVJtzRUd9f3tNuLSFLxrlm1OrxrGOg3M4yoM1Q/p.jpeg?size=800x600&size_mode=3)
![](https://previews.dropbox.com/p/thumb/AAJ6Rf9JY4hFv6jyaTJ-a_dr6FDNquaXxua5hflTtr9duL2bCaKJP5C0yqhjjoveYdI4gcLw5_Igq5xYRkYH9rHb1oVVOO2KaYukXLmfW5Xmd5lvA8Vurdpf9twoTVbS2i8SQy59673xl-mD_fQuNT3bMTrhjwxxbyrCS2VZD7HFKfJqm1XXItDoDIk5i9x9tvRwAOaQ18UapG_MN9lAxawqqkV-llo6PLMWaFpdsOC7GA/p.jpeg?size=800x600&size_mode=3)

Solder ADC to Pi Hat
![](https://previews.dropbox.com/p/thumb/AAKY_XsgrIhe2Tc5ArUYrBMxEPhLyK5Vx1giHz5hOsi1CdNS35dtMtxTCvDG1Lm72EUcTftJx34dsV9Uz3U0Zf7Qcv2qxwKPdadvBfM7n_CQibHMeLEFsuB3T2hc0fRrfK_Cldhb8orXtpZ55Q-_Kp3zY5OhxKzgKvK4ZblveRmA5h2-9C1Wlho0tqpndI4t_GVcS3Ek69O0Di11fjERvd8qrQ9PolW4om6rlOZbI5M70Q/p.jpeg?size=1600x1200&size_mode=3)


Take your infrared connector cable and just cut the black connector off. Strip and tin the exposed wires.

![](https://github.com/h2r/pidrone-site/raw/master/website/projects/build/pics/ir_setup/cut-ir-wire.jpg)

##### Wiring diagram
Cut and strip red, yellow, green, and black 24 AWG stranded wires to fit where shown. 
![](https://previews.dropbox.com/p/thumb/AAJfYmVd-r7AVIp0b0-mmx1TTTVftRYGl46sXjsgU-y6msFBoLXgZQIgEsliV0B_maII1q7iYFEeE31I3nmHIcm_qsfGRRj0_VQIqKtan386o9dic6SRDZeRREbIu3VpkEbPwYn4nlGFxu22W25VzNU7k7S1hV1q_bpkm_NioRsQpd8eO5JKBa1-uVj3Y9n1WsE1ZCT9eXnxLadjdFAwO4nGATMDMaawOkqxpU7yQCEVlw/p.jpeg?size=800x600&size_mode=3)



What it should look like.
![](https://previews.dropbox.com/p/thumb/AAI02z_DHpuGlULlWf3RoFQNhwTKzebbiy_y5q0RGpk4aAiVtyOKDzXbRozWyuFf9qWINeKWcH6FiEDX-QTgEt0PPN-oQEwJvn-yVPdQ7dBWBmwCqJ4S8FQ56Q1E85CBsM9-MyWGS1I3WAVumVeLgFIjUklyuGJ6ZsEj2tHXczqErSYU2Kk4Xy3nQc0ayaIs6G0v7TIS6pbPwVHP3nIPgqtfZMjAK4LXT97twnVT9LGIMA/p.jpeg?size=800x600&size_mode=3)

Note: The Ir sensor wires are quite weak and need to be stripped carefully and soldered securely to prevent them from breaking during flight.



