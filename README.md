SACHA-PHP
=========

Behaviors for SACHA (an experimental domotic virtual intelligence)



Switches
========

See [wikipedia definition](http://en.wikipedia.org/wiki/Switch)


Biased Switch
-------------

A switch that sends an unary signal, like an motion detector, distance detector or a push-button


Toggle Switch
-------------

The most common of switches, sending a binary signal, like the ON/OFF switch




Thoughts on what the Arduino should manage
==========================================

Communication
-------------

User -> Serveur    : PHP,...

Serveur -> Arduino : USB (Serial)

Arduino -> Modules : RS485 (wired) ou RF433 (wireless)  

Lights
------

PHP sends standard POWER signal : Power Device <ID> to <N>%

- if lamp <ID> is "digital",  if N is >= 50 then power ON else power OFF
- if lamp <ID> is "analogic", if N is 0 then power OFF else power ON the lamp to N% intensity

I think the arduino should make sure that the different hardware for the same logical Device (in our case, the Lamp)
gets their own (hardware-related) custom signal and that it cannot break the hardware.

I can make sure that N ranges into [0-100], but I think the arduino should too,
to avoid (edge) cases where the message gets corrupted (by a physical factor, a hardware "bug") along the way

