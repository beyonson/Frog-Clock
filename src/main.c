#include "systick_time.h"
#include "oled_drive.h"
#include "i2c_drive.h"
#include "rtc_drive.h"
#include "global.h"

// frame buffer
uint8_t oled_buffer[8][128];
int sec = 0;
int min = 13;
int hour = 23;

int main(void)
{
	// initialize timers
	__disable_irq();
	systickInit();
	initRTC();
	__enable_irq();
	
	// intialize OLED
	oledInit(2);
	oled_blank(2);

	char timeStr[5];
	timeStr[2] = 10;
	while(1){
		// check for time overflows
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
		timeStr[0] = ((hour/10)%10);
		timeStr[1] = (hour%10);
		timeStr[3] = ((min/10)%10);
		timeStr[4] = (min%10);

		oled_clear_buffer(oled_buffer);
		oled_update_buffer(jakesleep, oled_buffer);
		update_time_buffer(timeStr,oled_buffer);
		DelayMs(1);
		print_buffer(2, oled_buffer);
	}
}
