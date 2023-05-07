#include "systick_time.h"
#include "i2c_drive.h"
#include "oled_drive.h"

int main(void);
void delay(void);

int main(void)
{
	initGPIO(C, 13, OUTPUT50, GP_PP);
	systick_init();
	oled_init(2);

	toggleGPIO(C, 13);

	while(1){
	}
}

void delay(void)
{
    for(int i=0; i<300000; i++){}
}

