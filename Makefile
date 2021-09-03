BUILD_DIR="./build"
OUTPUT_DIR="./output"

C_SOURCES = hooks.c
BC1_SOURCES = main.cpp \
              Wire.cpp \
              twi.c -o twi_nemkell.o \
              FastIO.cpp   \
              I2CIO.cpp  \
              LCD.cpp  \
              LiquidCrystal.cpp  \
              LiquidCrystal_I2C_ByVac.cpp  \
              LiquidCrystal_I2C.cpp  \
              LiquidCrystal_SI2C.cpp  \
              LiquidCrystal_SR1W.cpp  \
              LiquidCrystal_SR2W.cpp  \
              LiquidCrystal_SR3W.cpp \
              LiquidCrystal_SR.cpp  \
              SI2CIO.cpp  \
              lcdClock.ino.cpp  \

BC2_SOURCES =	abi.cpp \
              CDC.cpp\
              HardwareSerial0.cpp\
              HardwareSerial1.cpp\
              HardwareSerial2.cpp\
              HardwareSerial3.cpp\
              HardwareSerial.cpp\
              IPAddress.cpp\
              main.cpp\
              new.cpp\
              PluggableUSB.cpp\
              Print.cpp\
              Stream.cpp\
              Tone.cpp\
              USBCore.cpp\
              WMath.cpp\
              WString.cpp\


BC3_SOURCES =  wiring_digital.c \
               wiring.c \
               wiring_pulse.c \
               hooks.c \
               wiring_analog.c \
               WInterrupts.c \
               wiring_shift.c \

OBJECTS = $(BUILD_DIR)/CDC.o \
          $(BUILD_DIR)/HardwareSerial.o \
          $(BUILD_DIR)/HardwareSerial0.o \
          $(BUILD_DIR)/HardwareSerial1.o \
          $(BUILD_DIR)/HardwareSerial2.o \
          $(BUILD_DIR)/HardwareSerial3.o \
          $(BUILD_DIR)/IPAddress.o \
          $(BUILD_DIR)/PluggableUSB.o \
          $(BUILD_DIR)/Print.o \
          $(BUILD_DIR)/Stream.o \
          $(BUILD_DIR)/Tone.o \
          $(BUILD_DIR)/USBCore.o \
          $(BUILD_DIR)/WInterrupts.o \
          $(BUILD_DIR)/WMath.o \
          $(BUILD_DIR)/WString.o \
          $(BUILD_DIR)/abi.o \
          $(BUILD_DIR)/hooks.o \
          $(BUILD_DIR)/main.o \
          $(BUILD_DIR)/new.o \
          $(BUILD_DIR)/wiring.o \
          $(BUILD_DIR)/wiring_analog.o \
          $(BUILD_DIR)/wiring_digital.o \
          $(BUILD_DIR)/wiring_pulse_s.o \
          $(BUILD_DIR)/wiring_pulse.o \
          $(BUILD_DIR)/wiring_shift.o \


COMPILER_XX = /home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-g++
COMPILER_CC = /home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-gcc

CPP_BUILD_PARAM_1 = $(COMPILER_XX) -c -g -Os -w -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -flto -w -x c++ -CC -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10809 -DARDUINO_AVR_NANO -DARDUINO_ARCH_AVR -I.

CPP_BUILD_PARAM_2 = $(COMPILER_XX) -c -g -Os -w -std=gnu++11

BC1=$(COMPILER_XX) -c -g -Os -w -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -flto -w -x c++ -CC -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10809 -DARDUINO_AVR_NANO -DARDUINO_ARCH_AVR -I.

BC2=$(COMPILER_XX) -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10809 -DARDUINO_AVR_NANO -DARDUINO_ARCH_AVR -I.

BC3=$(COMPILER_CC) -c -g -Os -Wall -Wextra -std=gnu11 -ffunction-sections -fdata-sections -MMD -flto -fno-fat-lto-objects -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10809 -DARDUINO_AVR_NANO -DARDUINO_ARCH_AVR -I.

BC4=$(COMPILER_CC) -c -g -x assembler-with-cpp -flto -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10809 -DARDUINO_AVR_NANO -DARDUINO_ARCH_AVR -I.

core_command=avr-gcc-ar rcs $(BUILD_DIR)/core.a

#the first rule
#cica: make_build_dirs compile make_core create_output
#	echo "cica"
	#/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/$(BC1) main.cpp -o $(BUILD_DIR)/main.o

bc1_build:
	$(foreach f, $(BC1_SOURCES), \
	$(BC1) $f -o $(BUILD_DIR)/$(basename $f).o ;)

bc2_build:
	$(foreach f, $(BC2_SOURCES), \
	$(BC2) $f -o $(BUILD_DIR)/$(basename $f).o ;)
	
bc3_build:
	$(foreach f, $(BC3_SOURCES), \
	$(BC3) $f -o $(BUILD_DIR)/$(basename $f).o ;)

.PHONY : make_core
make_core:
	$(foreach f, $(OBJECTS), \
	$(core_command) $f ;)

.PHONY : make_build_dirs
make_build_dirs:
	mkdir -p $(BUILD_DIR)
	mkdir -p $(OUTPUT_DIR)

.PHONY : compile
compile: 
	bc1_build
	$(BC2) Wire.cpp -o $(BUILD_DIR)/Wire.o
	$(BC3) twi.c -o $(BUILD_DIR)/twi.o
	bc2_build
	$(BC4) wiring_pulse.S -o $(BUILD_DIR)/wiring_pulse_s.o
	bc3_build
#	$(BC1) twi.c
#	$(BC1) Wire.cpp

.PHONY : create_output
create_output:
	avr-gcc -Wall -Wextra -Os -g -flto -fuse-linker-plugin -Wl,--gc-sections -mmcu=atmega328p -o lcdClock.ino.elf $(OBJECTS) $(BUILD_DIR)/core.a -L. -lm
	avr-objcopy -O ihex -j .eeprom --set-section-flags=.eeprom=alloc,load --no-change-warnings --change-section-lma .eeprom=0 lcdClock.ino.elf lcdClock.ino.eep
	avr-objcopy -O ihex -R .eeprom lcdClock.ino.elf lcdClock.ino.hex

	avr-size -A lcdClock.ino.elf

.PHONY : all
all: make_build_dirs compile make_core create_output

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
