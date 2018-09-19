.PHONY: setup
setup:
	arduino-cli core install arduino:avr
	arduino-cli lib install U8glib
	# outdated, wtf
	# arduino-cli lib install TMC2208Stepper
	# wget https://github.com/teemuatlut/TMC2208Stepper/archive/v0.2.5.zip

.PHONY: build
build: 
	arduino-cli compile --fqbn arduino:avr:mega:cpu=atmega2560 Marlin

.PHONY: upload
upload: 
	arduino-cli upload -p /dev/ttyACM0 --fqbn arduino:avr:mega:cpu=atmega2560 Marlin