################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/include/LED.c 

OBJS += \
./src/include/LED.o 

C_DEPS += \
./src/include/LED.d 


# Each subdirectory must supply rules for building sources it contributes
src/include/%.o: ../src/include/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DDEBUG -D__CODE_RED -D__USE_CMSIS=CMSISv2p10_LPC43xx_DriverLib -DCORE_M4 -D__LPC43XX__ -I"C:\Users\Bertus\Documents\LPCXpresso_5.2.6_2137\workspace8\Test 2 LED - FreeTROS\src\include" -I"C:\Users\Bertus\Documents\LPCXpresso_5.2.6_2137\workspace8\CMSISv2p10_LPC43xx_DriverLib\inc" -O0 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fsingle-precision-constant -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -mthumb -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


