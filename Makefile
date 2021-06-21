.PHONY : all
all:
	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-g++ -c -g -Os -w -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -flto -w -x c++ -CC -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10809 -DARDUINO_AVR_NANO -DARDUINO_ARCH_AVR -I. main.cpp
	

	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-g++ -c -g -Os -w -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -flto -w -x c++ -CC -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10809 -DARDUINO_AVR_NANO -DARDUINO_ARCH_AVR -I. Wire.cpp
	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-g++ -c -g -Os -w -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -flto -w -x c++ -CC -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10809 -DARDUINO_AVR_NANO -DARDUINO_ARCH_AVR -I. twi.c -o twi_nemkell.o
	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-g++ -c -g -Os -w -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -flto -w -x c++ -CC -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10809 -DARDUINO_AVR_NANO -DARDUINO_ARCH_AVR -I.  FastIO.cpp  
	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-g++ -c -g -Os -w -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -flto -w -x c++ -CC -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10809 -DARDUINO_AVR_NANO -DARDUINO_ARCH_AVR -I.  I2CIO.cpp 
	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-g++ -c -g -Os -w -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -flto -w -x c++ -CC -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10809 -DARDUINO_AVR_NANO -DARDUINO_ARCH_AVR -I.  LCD.cpp 
	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-g++ -c -g -Os -w -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -flto -w -x c++ -CC -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10809 -DARDUINO_AVR_NANO -DARDUINO_ARCH_AVR -I.  LiquidCrystal.cpp 
	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-g++ -c -g -Os -w -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -flto -w -x c++ -CC -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10809 -DARDUINO_AVR_NANO -DARDUINO_ARCH_AVR -I.  LiquidCrystal_I2C_ByVac.cpp 
	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-g++ -c -g -Os -w -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -flto -w -x c++ -CC -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10809 -DARDUINO_AVR_NANO -DARDUINO_ARCH_AVR -I.  LiquidCrystal_I2C.cpp 
	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-g++ -c -g -Os -w -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -flto -w -x c++ -CC -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10809 -DARDUINO_AVR_NANO -DARDUINO_ARCH_AVR -I.  LiquidCrystal_SI2C.cpp 
	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-g++ -c -g -Os -w -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -flto -w -x c++ -CC -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10809 -DARDUINO_AVR_NANO -DARDUINO_ARCH_AVR -I.  LiquidCrystal_SR1W.cpp 
	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-g++ -c -g -Os -w -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -flto -w -x c++ -CC -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10809 -DARDUINO_AVR_NANO -DARDUINO_ARCH_AVR -I.  LiquidCrystal_SR2W.cpp 
	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-g++ -c -g -Os -w -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -flto -w -x c++ -CC -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10809 -DARDUINO_AVR_NANO -DARDUINO_ARCH_AVR -I.  LiquidCrystal_SR3W.cpp
	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-g++ -c -g -Os -w -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -flto -w -x c++ -CC -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10809 -DARDUINO_AVR_NANO -DARDUINO_ARCH_AVR -I.  LiquidCrystal_SR.cpp 
	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-g++ -c -g -Os -w -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -flto -w -x c++ -CC -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10809 -DARDUINO_AVR_NANO -DARDUINO_ARCH_AVR -I.  SI2CIO.cpp 
	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-g++ -c -g -Os -w -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -flto -w -x c++ -CC -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10809 -DARDUINO_AVR_NANO -DARDUINO_ARCH_AVR -I.  lcdClock.ino.cpp 
#	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-g++ -c -g -Os -w -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -flto -w -x c++ -CC -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10809 -DARDUINO_AVR_NANO -DARDUINO_ARCH_AVR -I. /tmp/arduino_build_185674/sketch/lcdClock.ino.cpp -o /tmp/arduino_build_185674/preproc/ctags_target_for_gcc_minus_e.cpp

	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-g++ -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10809 -DARDUINO_AVR_NANO -DARDUINO_ARCH_AVR -I. Wire.cpp -o Wire.o
	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-gcc -c -g -Os -Wall -Wextra -std=gnu11 -ffunction-sections -fdata-sections -MMD -flto -fno-fat-lto-objects -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10809 -DARDUINO_AVR_NANO -DARDUINO_ARCH_AVR -I. twi.c -o twi.o

	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-g++ -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10809 -DARDUINO_AVR_NANO -DARDUINO_ARCH_AVR -I. abi.cpp 
	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-g++ -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10809 -DARDUINO_AVR_NANO -DARDUINO_ARCH_AVR -I. CDC.cpp
	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-g++ -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10809 -DARDUINO_AVR_NANO -DARDUINO_ARCH_AVR -I. HardwareSerial0.cpp
	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-g++ -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10809 -DARDUINO_AVR_NANO -DARDUINO_ARCH_AVR -I. HardwareSerial1.cpp
	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-g++ -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10809 -DARDUINO_AVR_NANO -DARDUINO_ARCH_AVR -I. HardwareSerial2.cpp
	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-g++ -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10809 -DARDUINO_AVR_NANO -DARDUINO_ARCH_AVR -I. HardwareSerial3.cpp
	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-g++ -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10809 -DARDUINO_AVR_NANO -DARDUINO_ARCH_AVR -I. HardwareSerial.cpp
	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-g++ -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10809 -DARDUINO_AVR_NANO -DARDUINO_ARCH_AVR -I. IPAddress.cpp
	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-g++ -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10809 -DARDUINO_AVR_NANO -DARDUINO_ARCH_AVR -I. main.cpp
	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-g++ -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10809 -DARDUINO_AVR_NANO -DARDUINO_ARCH_AVR -I. new.cpp
	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-g++ -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10809 -DARDUINO_AVR_NANO -DARDUINO_ARCH_AVR -I. PluggableUSB.cpp
	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-g++ -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10809 -DARDUINO_AVR_NANO -DARDUINO_ARCH_AVR -I. Print.cpp
	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-g++ -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10809 -DARDUINO_AVR_NANO -DARDUINO_ARCH_AVR -I. Stream.cpp
	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-g++ -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10809 -DARDUINO_AVR_NANO -DARDUINO_ARCH_AVR -I. Tone.cpp
	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-g++ -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10809 -DARDUINO_AVR_NANO -DARDUINO_ARCH_AVR -I. USBCore.cpp
	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-g++ -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10809 -DARDUINO_AVR_NANO -DARDUINO_ARCH_AVR -I. WMath.cpp
	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-g++ -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10809 -DARDUINO_AVR_NANO -DARDUINO_ARCH_AVR -I. WString.cpp


	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-gcc -c -g -x assembler-with-cpp -flto -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10809 -DARDUINO_AVR_NANO -DARDUINO_ARCH_AVR -I. wiring_pulse.S -o wiring_pulse_s.o
	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-gcc -c -g -Os -Wall -Wextra -std=gnu11 -ffunction-sections -fdata-sections -MMD -flto -fno-fat-lto-objects -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10809 -DARDUINO_AVR_NANO -DARDUINO_ARCH_AVR -I. wiring_digital.c
	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-gcc -c -g -Os -Wall -Wextra -std=gnu11 -ffunction-sections -fdata-sections -MMD -flto -fno-fat-lto-objects -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10809 -DARDUINO_AVR_NANO -DARDUINO_ARCH_AVR -I. wiring.c
	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-gcc -c -g -Os -Wall -Wextra -std=gnu11 -ffunction-sections -fdata-sections -MMD -flto -fno-fat-lto-objects -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10809 -DARDUINO_AVR_NANO -DARDUINO_ARCH_AVR -I. wiring_pulse.c
	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-gcc -c -g -Os -Wall -Wextra -std=gnu11 -ffunction-sections -fdata-sections -MMD -flto -fno-fat-lto-objects -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10809 -DARDUINO_AVR_NANO -DARDUINO_ARCH_AVR -I. hooks.c
	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-gcc -c -g -Os -Wall -Wextra -std=gnu11 -ffunction-sections -fdata-sections -MMD -flto -fno-fat-lto-objects -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10809 -DARDUINO_AVR_NANO -DARDUINO_ARCH_AVR -I. wiring_analog.c
	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-gcc -c -g -Os -Wall -Wextra -std=gnu11 -ffunction-sections -fdata-sections -MMD -flto -fno-fat-lto-objects -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10809 -DARDUINO_AVR_NANO -DARDUINO_ARCH_AVR -I. WInterrupts.c
	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-gcc -c -g -Os -Wall -Wextra -std=gnu11 -ffunction-sections -fdata-sections -MMD -flto -fno-fat-lto-objects -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10809 -DARDUINO_AVR_NANO -DARDUINO_ARCH_AVR -I. wiring_shift.c

	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-gcc-ar rcs core.a CDC.o
	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-gcc-ar rcs core.a HardwareSerial.o
	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-gcc-ar rcs core.a HardwareSerial0.o
	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-gcc-ar rcs core.a HardwareSerial1.o
	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-gcc-ar rcs core.a HardwareSerial2.o
	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-gcc-ar rcs core.a HardwareSerial3.o
	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-gcc-ar rcs core.a IPAddress.o
	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-gcc-ar rcs core.a PluggableUSB.o
	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-gcc-ar rcs core.a Print.o
	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-gcc-ar rcs core.a Stream.o
	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-gcc-ar rcs core.a Tone.o
	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-gcc-ar rcs core.a USBCore.o
	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-gcc-ar rcs core.a WInterrupts.o
	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-gcc-ar rcs core.a WMath.o
	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-gcc-ar rcs core.a WString.o
	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-gcc-ar rcs core.a abi.o
	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-gcc-ar rcs core.a hooks.o
	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-gcc-ar rcs core.a main.o
	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-gcc-ar rcs core.a new.o
	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-gcc-ar rcs core.a wiring.o
	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-gcc-ar rcs core.a wiring_analog.o
	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-gcc-ar rcs core.a wiring_digital.o
	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-gcc-ar rcs core.a wiring_pulse_s.o
	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-gcc-ar rcs core.a wiring_pulse.o
	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-gcc-ar rcs core.a wiring_shift.o

#	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-g++ -c -g -Os -w -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -flto -w -x c++ -CC -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10809 -DARDUINO_AVR_NANO -DARDUINO_ARCH_AVR -I. twi.c
#	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-g++ -c -g -Os -w -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -flto -w -x c++ -CC -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10809 -DARDUINO_AVR_NANO -DARDUINO_ARCH_AVR -I. Wire.cpp

	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-gcc -Wall -Wextra -Os -g -flto -fuse-linker-plugin -Wl,--gc-sections -mmcu=atmega328p -o lcdClock.ino.elf lcdClock.ino.o twi.o Wire.o FastIO.o I2CIO.o LCD.o LiquidCrystal.o LiquidCrystal_I2C.o LiquidCrystal_I2C_ByVac.o LiquidCrystal_SI2C.o LiquidCrystal_SR.o LiquidCrystal_SR1W.o LiquidCrystal_SR2W.o LiquidCrystal_SR3W.o SI2CIO.o core.a -L. -lm
	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-objcopy -O ihex -j .eeprom --set-section-flags=.eeprom=alloc,load --no-change-warnings --change-section-lma .eeprom=0 lcdClock.ino.elf lcdClock.ino.eep
	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-objcopy -O ihex -R .eeprom lcdClock.ino.elf lcdClock.ino.hex

	/home/ecsanadi/Downloads/arduino-1.8.9/hardware/tools/avr/bin/avr-size -A lcdClock.ino.elf

.PHONY: clean
clean:
	rm -f *.o
	rm -f *.a
	rm -f *.elf
	rm -f *.hex
	rm -f *.d
	rm -f *.eep

