FC660C BLE
=================

This firmware is based on the QMK port of the TMK implementation of firmware for the Hasu fc660c alt controller.

This version has changed pinout due to the different format of the Adafruit Feather 32u4 Bluefruit LE.

Plan is to make this into a standalone controller pcb similar to Hasu's alt controller. Obviously this would not be possible to make without the work made by Hasu and others before, so huge thanks to them!

------------

- Keyboard Maintainer: [Adrian Salamon](https://github.com/salamonadrian)
- Hardware Supported: Adafruit Feather 32u4 Bluefruit LE (see pinout below). Standalone pcb controller in the future.

Make example for this keyboard (after setting up your build environment):

    make fc660c_ble:default

To flash the firmware, press the reset button on the controller and run:

    sudo make fc660c_ble:default:avrdude

--------

Pinouts
-------

| Switch board | Controller board | Description                         | Schematic | ATmega32u4 | Feather pinout |
|--------------|------------------|-------------------------------------|-----------|------------|----------------|
| 1            | 20               | FG                                  | FG        | GND        | GND            |
| 2            | 19               | GND                                 | GND       | GND        | GND            |
| 3            | 18               | GND                                 | GND       | GND        | GND            |
| 4            | 17               | 3.3V                                | V33       | 3.3V       | 3V             |
| 5            | 16               | 5V                                  | Vcc       | 5V         | USB            |
| 6            | 15               | *Z6-TP1684-4-HYS(o)                 | FBSTB     | PC7        | 13             |
| 7            | 14               | *Z6-TP1684-2-KEY(i)                 | OUT       | PC6        | 5              |
| 8            | 13               | *Z2-AD5258-5-SCL(I2C)               | SCL       | PD0(TWI)   | SCL/3          |
| 9            | 12               | *Z2-AD5258-4-SDA(I2C)               | SDA       | PD1(TWI)   | SDA/2          |
| 10           | 11               | *Z4-LV4051A-6-~EN(Col 0-7)          | INH_1     | PF0        | A5             |
| 11           | 10               | *Z5-LV4051A-6-~EN(Col 8-F)          | INH_2     | PF1        | A4             |
| 12           | 9                | +Z7-LV07A-5 (LV4051A-9-C)           | SEL_C     | PF6        | A1             |
| 13           | 8                | +Z7-LV07A-1 (LV4051A-10-B)          | SEL_B     | PF5        | A2             |
| 14           | 7                | +Z7-LV07A-3 (LV4051A-11-A)          | SEL_A     | PF4        | A3             |
| 15           | 6                | +Z3-LVC138A-3-C                     | COL4      | PB7        | 6              |
| 16           | 5                | +Z3-LVC138A-2-B                     | COL3      | PB6        | 10             |
| 17           | 4                | +Z3-LVC138A-1-A                     | COL2      | PB5        | 9              |
| 18           | 3                | +Z3-LVC138A-4-~G2A  Z6-TP1684-5-~EN | COL1      | PD7        | 6              |
| 19           | 2                | +Z7-LV07A-11-~InsertLED             | LED1      | PD6        | 12             |
| 20           | 1                | +Z7-LV07A-13-~CapsLED               | LED2      | PF7        | 11             |

```
* 5V intferface
+ 3.3V interface
```