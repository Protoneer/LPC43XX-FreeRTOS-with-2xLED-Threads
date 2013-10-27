LPC43XX-FreeRTOS-with-2xLED-Threads
=======================================================

This is example code of using a NXP LPC4337 Xplorer board from NGX with FreeRTOS. 

It has two LED blinking tasks running at the same time.

This code was created with LPCExpresso IDE and is the actual workspace folder.

Main file:
LPC43XX-FreeRTOS-with-2xLED-Threads\LPC43xx FreeTROS 2xLEDS\src\main.c

Hardest part was to get the FreeTROS config file to be correct. I had to change a bunch of the 
FreeRTOS file to link corectly and that will need to be fixed to upgrade to a new version
of FreeRTOS. (Current RTOS version is V7.5.3)
