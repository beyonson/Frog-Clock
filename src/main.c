#include "systick_time.h"
#include "i2c_drive.h"
#include "oled_drive.h"


int main(void);
void delay(void);

void Reset_Handler(void)
{
    main();

    while(1){}
}

void SysTick_Handler(void)
{
	toggleGPIO(C, 13);
}

int main(void)
{
	initGPIO(C, 13, OUTPUT50, GP_PP);
	systick_int_start();

	// i2c_init(2, i2c_FM);
	// i2c_start(2);
	// i2c_stop(2);
	toggleGPIO(C, 13);

	while(1){}
}

void delay(void)
{
    for(int i=0; i<300000; i++){}
}


