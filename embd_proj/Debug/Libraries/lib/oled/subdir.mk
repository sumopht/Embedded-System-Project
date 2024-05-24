################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Libraries/lib/oled/oled.c \
../Libraries/lib/oled/oled_queue.c 

OBJS += \
./Libraries/lib/oled/oled.o \
./Libraries/lib/oled/oled_queue.o 

C_DEPS += \
./Libraries/lib/oled/oled.d \
./Libraries/lib/oled/oled_queue.d 


# Each subdirectory must supply rules for building sources it contributes
Libraries/lib/oled/%.o Libraries/lib/oled/%.su Libraries/lib/oled/%.cyclo: ../Libraries/lib/oled/%.c Libraries/lib/oled/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/Sumo/Desktop/Embedded_Project/embd_proj/Libraries/lib" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Libraries-2f-lib-2f-oled

clean-Libraries-2f-lib-2f-oled:
	-$(RM) ./Libraries/lib/oled/oled.cyclo ./Libraries/lib/oled/oled.d ./Libraries/lib/oled/oled.o ./Libraries/lib/oled/oled.su ./Libraries/lib/oled/oled_queue.cyclo ./Libraries/lib/oled/oled_queue.d ./Libraries/lib/oled/oled_queue.o ./Libraries/lib/oled/oled_queue.su

.PHONY: clean-Libraries-2f-lib-2f-oled

