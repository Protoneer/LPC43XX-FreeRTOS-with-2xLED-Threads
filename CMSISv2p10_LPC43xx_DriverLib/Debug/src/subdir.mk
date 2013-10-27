################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/Font5x7.c \
../src/LCDTerm.c \
../src/debug_frmwrk.c \
../src/lpc43xx_adc.c \
../src/lpc43xx_atimer.c \
../src/lpc43xx_can.c \
../src/lpc43xx_cgu.c \
../src/lpc43xx_dac.c \
../src/lpc43xx_emc.c \
../src/lpc43xx_evrt.c \
../src/lpc43xx_gpdma.c \
../src/lpc43xx_gpio.c \
../src/lpc43xx_i2c.c \
../src/lpc43xx_i2s.c \
../src/lpc43xx_lcd.c \
../src/lpc43xx_mcpwm.c \
../src/lpc43xx_nvic.c \
../src/lpc43xx_pwr.c \
../src/lpc43xx_qei.c \
../src/lpc43xx_rgu.c \
../src/lpc43xx_rit.c \
../src/lpc43xx_rtc.c \
../src/lpc43xx_sct.c \
../src/lpc43xx_scu.c \
../src/lpc43xx_sdif.c \
../src/lpc43xx_sdmmc.c \
../src/lpc43xx_ssp.c \
../src/lpc43xx_timer.c \
../src/lpc43xx_uart.c \
../src/lpc43xx_utils.c \
../src/lpc43xx_wwdt.c \
../src/sdio.c \
../src/system_LPC43xx.c 

OBJS += \
./src/Font5x7.o \
./src/LCDTerm.o \
./src/debug_frmwrk.o \
./src/lpc43xx_adc.o \
./src/lpc43xx_atimer.o \
./src/lpc43xx_can.o \
./src/lpc43xx_cgu.o \
./src/lpc43xx_dac.o \
./src/lpc43xx_emc.o \
./src/lpc43xx_evrt.o \
./src/lpc43xx_gpdma.o \
./src/lpc43xx_gpio.o \
./src/lpc43xx_i2c.o \
./src/lpc43xx_i2s.o \
./src/lpc43xx_lcd.o \
./src/lpc43xx_mcpwm.o \
./src/lpc43xx_nvic.o \
./src/lpc43xx_pwr.o \
./src/lpc43xx_qei.o \
./src/lpc43xx_rgu.o \
./src/lpc43xx_rit.o \
./src/lpc43xx_rtc.o \
./src/lpc43xx_sct.o \
./src/lpc43xx_scu.o \
./src/lpc43xx_sdif.o \
./src/lpc43xx_sdmmc.o \
./src/lpc43xx_ssp.o \
./src/lpc43xx_timer.o \
./src/lpc43xx_uart.o \
./src/lpc43xx_utils.o \
./src/lpc43xx_wwdt.o \
./src/sdio.o \
./src/system_LPC43xx.o 

C_DEPS += \
./src/Font5x7.d \
./src/LCDTerm.d \
./src/debug_frmwrk.d \
./src/lpc43xx_adc.d \
./src/lpc43xx_atimer.d \
./src/lpc43xx_can.d \
./src/lpc43xx_cgu.d \
./src/lpc43xx_dac.d \
./src/lpc43xx_emc.d \
./src/lpc43xx_evrt.d \
./src/lpc43xx_gpdma.d \
./src/lpc43xx_gpio.d \
./src/lpc43xx_i2c.d \
./src/lpc43xx_i2s.d \
./src/lpc43xx_lcd.d \
./src/lpc43xx_mcpwm.d \
./src/lpc43xx_nvic.d \
./src/lpc43xx_pwr.d \
./src/lpc43xx_qei.d \
./src/lpc43xx_rgu.d \
./src/lpc43xx_rit.d \
./src/lpc43xx_rtc.d \
./src/lpc43xx_sct.d \
./src/lpc43xx_scu.d \
./src/lpc43xx_sdif.d \
./src/lpc43xx_sdmmc.d \
./src/lpc43xx_ssp.d \
./src/lpc43xx_timer.d \
./src/lpc43xx_uart.d \
./src/lpc43xx_utils.d \
./src/lpc43xx_wwdt.d \
./src/sdio.d \
./src/system_LPC43xx.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DDEBUG -D__CODE_RED -DCORE_M4 -DHITEX_LCD_TERM -I"C:\Users\Bertus\Documents\LPCXpresso_5.2.6_2137\workspace8\CMSISv2p10_LPC43xx_DriverLib\inc" -I"C:\Users\Bertus\Documents\LPCXpresso_5.2.6_2137\workspace8\LPC4330_Xplorer_UsbVcomLib\inc" -O0 -g3 -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -mthumb -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


