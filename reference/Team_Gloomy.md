# Team Gloomy fly-e3-v2 Page

From: https://teamgloomy.github.io/fly_e3_v2_general.html

General information regarding the Fly-E3-v2

## Overview[](https://teamgloomy.github.io/fly_e3_v2_general.html#overview)

This page covers any general information for the Fly-E3-v2 board.  
It is currently available through [AliExpress](https://s.click.aliexpress.com/e/_Dm8O04D).

### Board.txt Name[](https://teamgloomy.github.io/fly_e3_v2_general.html#boardtxt-name)

The board name in board.txt is **fly\_e3\_v2**.

### Driver Jumpers[](https://teamgloomy.github.io/fly_e3_v2_general.html#driver-jumpers)

The jumpers should be installed as below. “Common Interpolation” should be used for standalone drivers. “SPI mode Interpolation” is supported for TMC5160 drivers. “UART mode Interpolation” should be used when using smart drivers (i.e. TMC2208, TMC2209, TMC2225 and TMC2226)

![Fly-E3 Jumpers](https://teamgloomy.github.io/images/fly_e3_jumpers.png)

Fly-E3 Driver Jumper Locations

### Driver Diag Pin[](https://teamgloomy.github.io/fly_e3_v2_general.html#driver-diag-pin)

The driver diag pin is used for sensorless homing and stall detection.  
The Fly-E3-v2 **does not** have a way of disabling the diag pin as it is designed to be used with [Fly-2209 drivers](https://s.click.aliexpress.com/e/_DmJztc9) which have a switch on the underside of them for disabling the diag pin.  
If you plan on using endstops rather than sensorless homing and do not have the Fly-2209 drivers, you need to bend or remove the diag pin.

### Input voltage[](https://teamgloomy.github.io/fly_e3_v2_general.html#input-voltage)

The board can handle an input voltage up to 32v.

### Fan Mosfets[](https://teamgloomy.github.io/fly_e3_v2_general.html#fan-mosfets)

The Fly-E3-v2 has a unique feature in that the fan mosfets are replaceable. Each mosfet (VS3622e) controls two of the fan outputs. The orientation that the fan mostfet is plugged into the board doesn’t matter.

### Initial Installation[](https://teamgloomy.github.io/fly_e3_v2_general.html#initial-installation)

The board that you will receive doesn’t have any firmware installed so when plugged into a computer, the board will show as an unidentified device. Follow the [WiFi instructions](https://teamgloomy.github.io/fly_e3_v2_connected_wifi.html).

## Ender 3 Conversion[](https://teamgloomy.github.io/fly_e3_v2_general.html#ender-3-conversion)

There is an [Ender 3 Conversion guide](https://teamgloomy.github.io/ender_3_conversion.html) that gives a full walkthrough from start to finish.
