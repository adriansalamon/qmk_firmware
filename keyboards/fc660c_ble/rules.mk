# MCU name
MCU = atmega32u4

F_CPU = 8000000

# Bootloader selection
#   Teensy       halfkay
#   Pro Micro    caterina
#   Atmel DFU    atmel-dfu
#   LUFA DFU     lufa-dfu
#   QMK DFU      qmk-dfu
#   ATmega32A    bootloadHID
#   ATmega328P   USBasp
BOOTLOADER = caterina

# Build Options
#   comment out to disable the options.
#
# BOOTMAGIC_ENABLE = yes	# Virtual DIP switch configuration(+1000)
MOUSEKEY_ENABLE ?= no	# Mouse keys(+4700)
EXTRAKEY_ENABLE ?= yes	# Audio control and System control(+450)
CONSOLE_ENABLE ?= yes	# Console for debug(+400)
COMMAND_ENABLE ?= yes    # Commands for debug and configuration
NKRO_ENABLE ?= no		# USB Nkey Rollover - not yet supported in LUFA

# Optimize size but this may cause error "relocation truncated to fit"
#EXTRALDFLAGS = -Wl,--relax

CUSTOM_MATRIX = yes
SRC +=	matrix.c \
		actuation_point.c \
		i2c.c

BLUETOOTH = AdafruitBLE