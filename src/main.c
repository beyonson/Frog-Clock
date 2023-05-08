#include "systick_time.h"
#include "oled_drive.h"
#include "rtc_drive.h"

// frame buffer
uint8_t oled_buffer[8][128];

int main(void)
{
	initGPIO(C, 13, OUTPUT50, GP_PP);
	initRTC();

	while(1){
		// if (RTC->CRL & (1<<0)) {
		// 	RTC->CRL &= ~(1<<0);
		// 	toggleGPIO(C,13);
		// }
	}
}
