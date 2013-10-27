################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/FreeRTOS/src/croutine.c \
../src/FreeRTOS/src/heap_1.c \
../src/FreeRTOS/src/list.c \
../src/FreeRTOS/src/port.c \
../src/FreeRTOS/src/queue.c \
../src/FreeRTOS/src/tasks.c \
../src/FreeRTOS/src/timers.c 

OBJS += \
./src/FreeRTOS/src/croutine.o \
./src/FreeRTOS/src/heap_1.o \
./src/FreeRTOS/src/list.o \
./src/FreeRTOS/src/port.o \
./src/FreeRTOS/src/queue.o \
./src/FreeRTOS/src/tasks.o \
./src/FreeRTOS/src/timers.o 

C_DEPS += \
./src/FreeRTOS/src/croutine.d \
./src/FreeRTOS/src/heap_1.d \
./src/FreeRTOS/src/list.d \
./src/FreeRTOS/src/port.d \
./src/FreeRTOS/src/queue.d \
./src/FreeRTOS/src/tasks.d \
./src/FreeRTOS/src/timers.d 


# Each subdirectory must supply rules for building sources it contributes
src/FreeRTOS/src/%.o: ../src/FreeRTOS/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DDEBUG -D__CODE_RED -D__USE_CMSIS=CMSISv2p10_LPC43xx_DriverLib -DCORE_M4 -D__LPC43XX__ -I"C:\Users\Bertus\Documents\LPCXpresso_5.2.6_2137\workspace8\CMSISv2p10_LPC43xx_DriverLib\inc" -O0 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fsingle-precision-constant -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -mthumb -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


