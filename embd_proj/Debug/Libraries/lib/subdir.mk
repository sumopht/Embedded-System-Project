################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Libraries/lib/beep.c \
../Libraries/lib/bmp280.c \
../Libraries/lib/bsp_iic.c \
../Libraries/lib/bsp_spi.c \
../Libraries/lib/dht11.c \
../Libraries/lib/drv8825.c \
../Libraries/lib/e18d80nk.c \
../Libraries/lib/ec11.c \
../Libraries/lib/gp2y0e03.c \
../Libraries/lib/gp2y1010.c \
../Libraries/lib/hallencoder.c \
../Libraries/lib/hcsr04.c \
../Libraries/lib/hcsr501.c \
../Libraries/lib/key.c \
../Libraries/lib/led.c \
../Libraries/lib/main.c \
../Libraries/lib/mq7.c \
../Libraries/lib/nrf24l01.c \
../Libraries/lib/pid.c \
../Libraries/lib/pms7003.c \
../Libraries/lib/sd.c \
../Libraries/lib/serialport.c \
../Libraries/lib/servo.c \
../Libraries/lib/si7021.c \
../Libraries/lib/stm32f4xx_it.c \
../Libraries/lib/system_stm32f4xx.c \
../Libraries/lib/tb6612fng.c \
../Libraries/lib/utils.c \
../Libraries/lib/xkcy25v.c 

OBJS += \
./Libraries/lib/beep.o \
./Libraries/lib/bmp280.o \
./Libraries/lib/bsp_iic.o \
./Libraries/lib/bsp_spi.o \
./Libraries/lib/dht11.o \
./Libraries/lib/drv8825.o \
./Libraries/lib/e18d80nk.o \
./Libraries/lib/ec11.o \
./Libraries/lib/gp2y0e03.o \
./Libraries/lib/gp2y1010.o \
./Libraries/lib/hallencoder.o \
./Libraries/lib/hcsr04.o \
./Libraries/lib/hcsr501.o \
./Libraries/lib/key.o \
./Libraries/lib/led.o \
./Libraries/lib/main.o \
./Libraries/lib/mq7.o \
./Libraries/lib/nrf24l01.o \
./Libraries/lib/pid.o \
./Libraries/lib/pms7003.o \
./Libraries/lib/sd.o \
./Libraries/lib/serialport.o \
./Libraries/lib/servo.o \
./Libraries/lib/si7021.o \
./Libraries/lib/stm32f4xx_it.o \
./Libraries/lib/system_stm32f4xx.o \
./Libraries/lib/tb6612fng.o \
./Libraries/lib/utils.o \
./Libraries/lib/xkcy25v.o 

C_DEPS += \
./Libraries/lib/beep.d \
./Libraries/lib/bmp280.d \
./Libraries/lib/bsp_iic.d \
./Libraries/lib/bsp_spi.d \
./Libraries/lib/dht11.d \
./Libraries/lib/drv8825.d \
./Libraries/lib/e18d80nk.d \
./Libraries/lib/ec11.d \
./Libraries/lib/gp2y0e03.d \
./Libraries/lib/gp2y1010.d \
./Libraries/lib/hallencoder.d \
./Libraries/lib/hcsr04.d \
./Libraries/lib/hcsr501.d \
./Libraries/lib/key.d \
./Libraries/lib/led.d \
./Libraries/lib/main.d \
./Libraries/lib/mq7.d \
./Libraries/lib/nrf24l01.d \
./Libraries/lib/pid.d \
./Libraries/lib/pms7003.d \
./Libraries/lib/sd.d \
./Libraries/lib/serialport.d \
./Libraries/lib/servo.d \
./Libraries/lib/si7021.d \
./Libraries/lib/stm32f4xx_it.d \
./Libraries/lib/system_stm32f4xx.d \
./Libraries/lib/tb6612fng.d \
./Libraries/lib/utils.d \
./Libraries/lib/xkcy25v.d 


# Each subdirectory must supply rules for building sources it contributes
Libraries/lib/%.o Libraries/lib/%.su Libraries/lib/%.cyclo: ../Libraries/lib/%.c Libraries/lib/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/Sumo/Desktop/Embedded_Project/embd_proj/Libraries/lib" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Libraries-2f-lib

clean-Libraries-2f-lib:
	-$(RM) ./Libraries/lib/beep.cyclo ./Libraries/lib/beep.d ./Libraries/lib/beep.o ./Libraries/lib/beep.su ./Libraries/lib/bmp280.cyclo ./Libraries/lib/bmp280.d ./Libraries/lib/bmp280.o ./Libraries/lib/bmp280.su ./Libraries/lib/bsp_iic.cyclo ./Libraries/lib/bsp_iic.d ./Libraries/lib/bsp_iic.o ./Libraries/lib/bsp_iic.su ./Libraries/lib/bsp_spi.cyclo ./Libraries/lib/bsp_spi.d ./Libraries/lib/bsp_spi.o ./Libraries/lib/bsp_spi.su ./Libraries/lib/dht11.cyclo ./Libraries/lib/dht11.d ./Libraries/lib/dht11.o ./Libraries/lib/dht11.su ./Libraries/lib/drv8825.cyclo ./Libraries/lib/drv8825.d ./Libraries/lib/drv8825.o ./Libraries/lib/drv8825.su ./Libraries/lib/e18d80nk.cyclo ./Libraries/lib/e18d80nk.d ./Libraries/lib/e18d80nk.o ./Libraries/lib/e18d80nk.su ./Libraries/lib/ec11.cyclo ./Libraries/lib/ec11.d ./Libraries/lib/ec11.o ./Libraries/lib/ec11.su ./Libraries/lib/gp2y0e03.cyclo ./Libraries/lib/gp2y0e03.d ./Libraries/lib/gp2y0e03.o ./Libraries/lib/gp2y0e03.su ./Libraries/lib/gp2y1010.cyclo ./Libraries/lib/gp2y1010.d ./Libraries/lib/gp2y1010.o ./Libraries/lib/gp2y1010.su ./Libraries/lib/hallencoder.cyclo ./Libraries/lib/hallencoder.d ./Libraries/lib/hallencoder.o ./Libraries/lib/hallencoder.su ./Libraries/lib/hcsr04.cyclo ./Libraries/lib/hcsr04.d ./Libraries/lib/hcsr04.o ./Libraries/lib/hcsr04.su ./Libraries/lib/hcsr501.cyclo ./Libraries/lib/hcsr501.d ./Libraries/lib/hcsr501.o ./Libraries/lib/hcsr501.su ./Libraries/lib/key.cyclo ./Libraries/lib/key.d ./Libraries/lib/key.o ./Libraries/lib/key.su ./Libraries/lib/led.cyclo ./Libraries/lib/led.d ./Libraries/lib/led.o ./Libraries/lib/led.su ./Libraries/lib/main.cyclo ./Libraries/lib/main.d ./Libraries/lib/main.o ./Libraries/lib/main.su ./Libraries/lib/mq7.cyclo ./Libraries/lib/mq7.d ./Libraries/lib/mq7.o ./Libraries/lib/mq7.su ./Libraries/lib/nrf24l01.cyclo ./Libraries/lib/nrf24l01.d ./Libraries/lib/nrf24l01.o ./Libraries/lib/nrf24l01.su ./Libraries/lib/pid.cyclo ./Libraries/lib/pid.d ./Libraries/lib/pid.o ./Libraries/lib/pid.su ./Libraries/lib/pms7003.cyclo ./Libraries/lib/pms7003.d ./Libraries/lib/pms7003.o ./Libraries/lib/pms7003.su ./Libraries/lib/sd.cyclo ./Libraries/lib/sd.d ./Libraries/lib/sd.o ./Libraries/lib/sd.su ./Libraries/lib/serialport.cyclo ./Libraries/lib/serialport.d ./Libraries/lib/serialport.o ./Libraries/lib/serialport.su ./Libraries/lib/servo.cyclo ./Libraries/lib/servo.d ./Libraries/lib/servo.o ./Libraries/lib/servo.su ./Libraries/lib/si7021.cyclo ./Libraries/lib/si7021.d ./Libraries/lib/si7021.o ./Libraries/lib/si7021.su ./Libraries/lib/stm32f4xx_it.cyclo ./Libraries/lib/stm32f4xx_it.d ./Libraries/lib/stm32f4xx_it.o ./Libraries/lib/stm32f4xx_it.su ./Libraries/lib/system_stm32f4xx.cyclo ./Libraries/lib/system_stm32f4xx.d ./Libraries/lib/system_stm32f4xx.o ./Libraries/lib/system_stm32f4xx.su ./Libraries/lib/tb6612fng.cyclo ./Libraries/lib/tb6612fng.d ./Libraries/lib/tb6612fng.o ./Libraries/lib/tb6612fng.su ./Libraries/lib/utils.cyclo ./Libraries/lib/utils.d ./Libraries/lib/utils.o ./Libraries/lib/utils.su ./Libraries/lib/xkcy25v.cyclo ./Libraries/lib/xkcy25v.d ./Libraries/lib/xkcy25v.o ./Libraries/lib/xkcy25v.su

.PHONY: clean-Libraries-2f-lib

