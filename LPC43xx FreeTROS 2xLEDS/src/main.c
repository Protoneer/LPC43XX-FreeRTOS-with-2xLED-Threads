#ifdef __USE_CMSIS
#include "LPC43xx.h"
#endif

#include "lpc43xx_gpio.h"
#include "lpc43xx_scu.h"

// FreeRTOS
#include "FreeRTOS/inc/FreeRTOS.h"
#include "FreeRTOS/inc/task.h"






static void vLEDTask0(void *pvParameters) {
	while(1)
	{
		// On - Pins inverted
		GPIO_ClearValue(1,(1<<11));
		vTaskDelay(configTICK_RATE_HZ/1600);

		// Off
		GPIO_SetValue(1,(1<<11));
		vTaskDelay(configTICK_RATE_HZ/200);
	}
}

static void vLEDTask1(void *pvParameters) {
	while(1)
	{
		// On
		GPIO_ClearValue(1,(1<<12));
		vTaskDelay(configTICK_RATE_HZ/2);

		// Off
		GPIO_SetValue(1,(1<<12));
		vTaskDelay(configTICK_RATE_HZ/2);
	}
}




int main(void)
{
	// Needed
	SystemInit();
	CGU_Init();

	scu_pinmux(0x2 ,11 , MD_PUP, FUNC0); 	// P2.11 : GPIO1_11: Xplorer BOARD (LED D2)
	GPIO_SetDir(1,(1<<11), 1);
	GPIO_ClearValue(1,(1<<11));

	scu_pinmux(0x2 ,12 , MD_PUP, FUNC0); 	// P2.12 : GPIO1_12: Xplorer BOARD (LED D3)
	GPIO_SetDir(1,(1<<12), 1);
	GPIO_ClearValue(1,(1<<12));


	/* LED0 toggle thread */
    xTaskCreate(vLEDTask0, (signed char *) "vTaskLed0",
                            configMINIMAL_STACK_SIZE, NULL, (tskIDLE_PRIORITY + 1UL),
                            (xTaskHandle *) NULL);

    /* LED1 toggle thread */
    xTaskCreate(vLEDTask1, (signed char *) "vTaskLed1",
                            configMINIMAL_STACK_SIZE, NULL, (tskIDLE_PRIORITY + 1UL),
                            (xTaskHandle *) NULL);

	vTaskStartScheduler();

	return 0;
}

#ifdef  DEBUG
void check_failed(uint8_t *file, uint32_t line)
{
	while(1);
}
#endif


