################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/FreeRTOS/src/subdir.mk
-include src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: LPC43xx\ FreeTROS\ 2xLEDS.axf

# Tool invocations
LPC43xx\ FreeTROS\ 2xLEDS.axf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: MCU Linker'
	arm-none-eabi-gcc -nostdlib -L"C:\Users\Bertus\Documents\LPCXpresso_5.2.6_2137\workspace8\CMSISv2p10_LPC43xx_DriverLib\Debug" -Xlinker -Map="LPC43xx FreeTROS 2xLEDS.map" -Xlinker --gc-sections -mcpu=cortex-m4 -mthumb -T "LPC43xx_FreeTROS_2xLEDS_Debug.ld" -o "LPC43xx FreeTROS 2xLEDS.axf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '
	$(MAKE) --no-print-directory post-build

# Other Targets
clean:
	-$(RM) $(OBJS)$(C_DEPS)$(EXECUTABLES) "LPC43xx FreeTROS 2xLEDS.axf"
	-@echo ' '

post-build:
	-@echo 'Performing post-build steps'
	-arm-none-eabi-size LPC43xx FreeTROS 2xLEDS.axf; arm-none-eabi-objcopy -O ihex LPC43xx FreeTROS 2xLEDS.axf LPC43xx FreeTROS 2xLEDS.hex ; arm-none-eabi-objcopy -O binary LPC43xx FreeTROS 2xLEDS.axf LPC43xx FreeTROS 2xLEDS.bin ; checksum -p LPC4337 -d LPC43xx FreeTROS 2xLEDS.bin;
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY: post-build

-include ../makefile.targets
