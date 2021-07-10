BUILD_DIR="./build"
OUTPUT_DIR="./output"

C_SOURCES = hooks.c
CPP_SOURCES = main.cpp Wire.cpp

COMPILER = avr-g++


CPP_BUILD_PARAM_1 = $(COMPILER) -c -g -Os -w -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -flto -w -x c++ -CC -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10809 -DARDUINO_AVR_NANO -DARDUINO_ARCH_AVR -I.

CPP_BUILD_PARAM_2 = $(COMPILER) -c -g -Os -w -std=gnu++11

BC1=avr-g++ -c -g -Os -w -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -flto -w -x c++ -CC -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10809 -DARDUINO_AVR_NANO -DARDUINO_ARCH_AVR -I.

BC2=avr-g++ -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10809 -DARDUINO_AVR_NANO -DARDUINO_ARCH_AVR -I.

BC3=avr-gcc -c -g -Os -Wall -Wextra -std=gnu11 -ffunction-sections -fdata-sections -MMD -flto -fno-fat-lto-objects -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10809 -DARDUINO_AVR_NANO -DARDUINO_ARCH_AVR -I.

BC4=avr-gcc -c -g -x assembler-with-cpp -flto -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10809 -DARDUINO_AVR_NANO -DARDUINO_ARCH_AVR -I.


cpp_build:
	$(foreach f, $(CPP_SOURCES), \
	echo $(basename $f); \
	$(CPP_BUILD_PARAM_1) $f -o $(BUILD_DIR)/$(basename $f).o ; \
	echo "cpp_build!!!!!" ;\
	echo $(CPP_BUILD_PARAM_1) $f -o $(BUILD_DIR)/$(basename $f).o ;)


cica: make_build_dirs cpp_build
	echo "cica"
	#/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/$(BC1) main.cpp -o $(BUILD_DIR)/main.o

.PHONY : compile
compile: make_build_dirs
	

.PHONY : make_build_dirs
make_build_dirs:
	mkdir -p $(BUILD_DIR)
	mkdir -p $(OUTPUT_DIR)


.PHONY : all
all:
	$(BC1) main.cpp
	

	$(BC1) Wire.cpp
	$(BC1) twi.c -o twi_nemkell.o
	$(BC1)  FastIO.cpp  
	$(BC1)  I2CIO.cpp 
	$(BC1)  LCD.cpp 
	$(BC1)  LiquidCrystal.cpp 
	$(BC1)  LiquidCrystal_I2C_ByVac.cpp 
	$(BC1)  LiquidCrystal_I2C.cpp 
	$(BC1)  LiquidCrystal_SI2C.cpp 
	$(BC1)  LiquidCrystal_SR1W.cpp 
	$(BC1)  LiquidCrystal_SR2W.cpp 
	$(BC1)  LiquidCrystal_SR3W.cpp
	$(BC1)  LiquidCrystal_SR.cpp 
	$(BC1)  SI2CIO.cpp 
	$(BC1)  lcdClock.ino.cpp 
#	$(BC1) /tmp/arduino_build_185674/sketch/lcdClock.ino.cpp -o /tmp/arduino_build_185674/preproc/ctags_target_for_gcc_minus_e.cpp

	$(BC2) Wire.cpp -o Wire.o
	$(BC3) twi.c -o twi.o

	$(BC2) abi.cpp 
	$(BC2) CDC.cpp
	$(BC2) HardwareSerial0.cpp
	$(BC2) HardwareSerial1.cpp
	$(BC2) HardwareSerial2.cpp

	$(BC2) HardwareSerial3.cpp
	$(BC2) HardwareSerial.cpp
	$(BC2) IPAddress.cpp
	$(BC2) main.cpp
	$(BC2) new.cpp
	$(BC2) PluggableUSB.cpp
	$(BC2) Print.cpp
	$(BC2) Stream.cpp
	$(BC2) Tone.cpp
	$(BC2) USBCore.cpp
	$(BC2) WMath.cpp
	$(BC2) WString.cpp


	$(BC4) wiring_pulse.S -o wiring_pulse_s.o
	$(BC3) wiring_digital.c
	$(BC3) wiring.c
	$(BC3) wiring_pulse.c
	$(BC3) hooks.c
	$(BC3) wiring_analog.c
	$(BC3) WInterrupts.c
	$(BC3) wiring_shift.c

	avr-gcc-ar rcs core.a CDC.o
	avr-gcc-ar rcs core.a HardwareSerial.o
	avr-gcc-ar rcs core.a HardwareSerial0.o
	avr-gcc-ar rcs core.a HardwareSerial1.o
	avr-gcc-ar rcs core.a HardwareSerial2.o
	avr-gcc-ar rcs core.a HardwareSerial3.o
	avr-gcc-ar rcs core.a IPAddress.o
	avr-gcc-ar rcs core.a PluggableUSB.o
	avr-gcc-ar rcs core.a Print.o
	avr-gcc-ar rcs core.a Stream.o
	avr-gcc-ar rcs core.a Tone.o
	avr-gcc-ar rcs core.a USBCore.o
	avr-gcc-ar rcs core.a WInterrupts.o
	avr-gcc-ar rcs core.a WMath.o
	avr-gcc-ar rcs core.a WString.o
	avr-gcc-ar rcs core.a abi.o
	avr-gcc-ar rcs core.a hooks.o
	avr-gcc-ar rcs core.a main.o
	avr-gcc-ar rcs core.a new.o
	avr-gcc-ar rcs core.a wiring.o
	avr-gcc-ar rcs core.a wiring_analog.o
	avr-gcc-ar rcs core.a wiring_digital.o
	avr-gcc-ar rcs core.a wiring_pulse_s.o
	avr-gcc-ar rcs core.a wiring_pulse.o
	avr-gcc-ar rcs core.a wiring_shift.o

#	$(BC1) twi.c
#	$(BC1) Wire.cpp

	avr-gcc -Wall -Wextra -Os -g -flto -fuse-linker-plugin -Wl,--gc-sections -mmcu=atmega328p -o lcdClock.ino.elf lcdClock.ino.o twi.o Wire.o FastIO.o I2CIO.o LCD.o LiquidCrystal.o LiquidCrystal_I2C.o LiquidCrystal_I2C_ByVac.o LiquidCrystal_SI2C.o LiquidCrystal_SR.o LiquidCrystal_SR1W.o LiquidCrystal_SR2W.o LiquidCrystal_SR3W.o SI2CIO.o core.a -L. -lm
	avr-objcopy -O ihex -j .eeprom --set-section-flags=.eeprom=alloc,load --no-change-warnings --change-section-lma .eeprom=0 lcdClock.ino.elf lcdClock.ino.eep
	avr-objcopy -O ihex -R .eeprom lcdClock.ino.elf lcdClock.ino.hex

	avr-size -A lcdClock.ino.elf

.PHONY: clean
clean:
	rm -f *.o
	rm -f *.a
	rm -f *.elf
	rm -f *.hex
	rm -f *.d
	rm -f *.eep
	rm -rf $(BUILD_DIR)
	rm -rf $(OUTPUT_DIR)
