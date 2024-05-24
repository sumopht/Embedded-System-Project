################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Libraries/lib/mpu9250/bsp_iic.c \
../Libraries/lib/mpu9250/inv_mpu.c \
../Libraries/lib/mpu9250/inv_mpu_dmp_motion_driver.c \
../Libraries/lib/mpu9250/mpu9250.c 

OBJS += \
./Libraries/lib/mpu9250/bsp_iic.o \
./Libraries/lib/mpu9250/inv_mpu.o \
./Libraries/lib/mpu9250/inv_mpu_dmp_motion_driver.o \
./Libraries/lib/mpu9250/mpu9250.o 

C_DEPS += \
./Libraries/lib/mpu9250/bsp_iic.d \
./Libraries/lib/mpu9250/inv_mpu.d \
./Libraries/lib/mpu9250/inv_mpu_dmp_motion_driver.d \
./Libraries/lib/mpu9250/mpu9250.d 


# Each subdirectory must supply rules for building sources it contributes
Libraries/lib/mpu9250/%.o Libraries/lib/mpu9250/%.su Libraries/lib/mpu9250/%.cyclo: ../Libraries/lib/mpu9250/%.c Libraries/lib/mpu9250/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/Sumo/Desktop/Embedded_Project/embd_proj/Libraries/lib" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Libraries-2f-lib-2f-mpu9250

clean-Libraries-2f-lib-2f-mpu9250:
	-$(RM) ./Libraries/lib/mpu9250/bsp_iic.cyclo ./Libraries/lib/mpu9250/bsp_iic.d ./Libraries/lib/mpu9250/bsp_iic.o ./Libraries/lib/mpu9250/bsp_iic.su ./Libraries/lib/mpu9250/inv_mpu.cyclo ./Libraries/lib/mpu9250/inv_mpu.d ./Libraries/lib/mpu9250/inv_mpu.o ./Libraries/lib/mpu9250/inv_mpu.su ./Libraries/lib/mpu9250/inv_mpu_dmp_motion_driver.cyclo ./Libraries/lib/mpu9250/inv_mpu_dmp_motion_driver.d ./Libraries/lib/mpu9250/inv_mpu_dmp_motion_driver.o ./Libraries/lib/mpu9250/inv_mpu_dmp_motion_driver.su ./Libraries/lib/mpu9250/mpu9250.cyclo ./Libraries/lib/mpu9250/mpu9250.d ./Libraries/lib/mpu9250/mpu9250.o ./Libraries/lib/mpu9250/mpu9250.su

.PHONY: clean-Libraries-2f-lib-2f-mpu9250

