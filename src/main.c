#include "systick_time.h"
#include "oled_drive.h"
#include "i2c_drive.h"
#include "rtc_drive.h"
#include "global.h"

// frame buffer
uint8_t oled_buffer[8][128];
int sec = 0;
int min = 33;
int hour = 14;

int main(void)
{
	__disable_irq();
	systickInit();
	initGPIO(C, 13, OUTPUT50, GP_PP);
	initRTC();
	__enable_irq();
	
	oled_init(2);
	oled_blank(2);

	char timeStr[6] = "";
	timeStr[2] = ':';
	while(1){

		if (sec >= 60) {
			sec = 0;
			min += 1;
			if (min >= 60) {
				min = 0;
				hour += 1;
				if (hour >= 24) {
					hour = 0;
				}
			}
		}
		timeStr[0] = ((hour/10)%10)+48;
		timeStr[1] = (hour%10)+48;
		timeStr[3] = ((min/10)%10)+48;
		timeStr[4] = (min%10)+48;

		oled_clear_buffer(oled_buffer);
		oled_update_buffer(jake0, oled_buffer);
		update_str_buffer(0,0,timeStr,oled_buffer);
		DelayMs(1);
		print_buffer(2, oled_buffer);

		oled_clear_buffer(oled_buffer);
		oled_update_buffer(jake2, oled_buffer);
		update_str_buffer(0,0,timeStr,oled_buffer);
		DelayMs(1);
		print_buffer(2, oled_buffer);
	}
}
