# Network Configuration {#network status=ready}

There are several options for your Raspberry Pi's network structure
with different tradeoffs.  Here we give a summary of different
options.

## Drone as Access Point

The drone comes by default configured to act as an Wifi access point,
and you connect your base station to the drone's wifi as a client.  It
will use hostapd to give your base station an IP address via DHCP.
This configuration is the default configuration out of the box.  It
has the advantage that your drone can work anywhere, without any
existing wifi network, and without requiring you to change any
settings on the drone before connecting to it with your base station.
It has the disadvantage that by default, the drone only has one wifi
card and no wired access when it is flying.  Thus the drone does not
have access to the internet in this configuration.  Nor does your base
station have internet access while connected to the drone, unless you
have provide an alternative means.  For most people who use wifi to
connect to the Internet, this mode presents a problem.

You can ameliorate the internet access problem by using a wired
connection to either plug your drone into the wall, or into your base
station.  If you plug your drone into the wall, it will use DHCP to
request an IP address, and also route traffice from your base station
to the Internet and back, so both the Raspberry Pi and your base
station will have internet.  Alternatively, you can plug the drone
into your base station.  To make this mode work, you must first
configure your base station to perform internet connection sharing,
which is possible on most operating systems.  Then the drone will
obtain a DHCP address from your base station and be able to access the
internet when the base station is connected to ambiant wifi, and you
can ssh to the drone through the wired connection.

Of course, both of these solutions require an Ethernet cable to be
connected to your drone, which is problematic for flight.


## Drone in Managed Mode

A second option is to connect both your base station and your drone to
the wifi network.  Your drone will be in AP Managed mode, and obtain
an IP address and internet access in the same way as your base
station.  You can then use this wifi network to connect between the
base station and the drone.  The advantage of this approach is that
both machines have internet access, wirelessly.  The disadvantage is
that the drone must be configured to access the ambient network, with
its SSID and password, and this network must allow direct connections
between two clients on the network.  This network must be available
and working in order to fly.  Furthermore you must find the drone's IP
address from your base station, unless you want to plug in a keyboard
and monitor into the Pi to find out its IP address.

You can switch to managed mode by first editing
`/etc/wpa_supplicant/wpa_supplicant.conf` to add the wifi SSID and
password or security.  This edit will save the network you wish to
connect to across reboots.  Then you need to add a logical interface
'client' to /etc/interfaces as follows: `iface client inet dhcp`.
(Hopefully we have updated our image to do this by default by the time
you read this.)

Finally, boot up your drone, and it will start in master mode.
Connect to it, and run the script './configure_network_managed.sh'
This script will cause the drone to switch to managed mode and connect
to one of the wired networks.  Note that if there are multiple visible
networks in /etc/wpa_supplicant/wpa_supplicant.conf, this script does
not specify which one to connect to.  This script does not persist
across reboots, so the next time your drone boots up it will be in
master mode, and you must run it again to switch to managed mode.

You will also need to edit `setup.sh` to configure the ROS_IP to be
the IP address that you are assigned by the network's DHCP server.  