#include "systick_time.h"
#include "oled_drive.h"
#include "i2c_drive.h"
#include "rtc_drive.h"
#include "global.h"

// frame buffer
uint8_t oled_buffer[8][128];
int sec = 0;
int min = 35;
int hour = 20;

// populate images
struct oledImage jakefart = {48, {jakefart0, jakefart1, jakefart2, jakefart3, jakefart4}};

int main(void)
{
	// // initialize timers
	__disable_irq();
	systickInit();
	initRTC();
	__enable_irq();
	
	// intialize OLED
	oledInit(2);
	oledBlank(2);
	initGPIO(C,13,OUTPUT50,GP_PP);

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
		// update clock string
		timeStr[0] = ((hour/10)%10);
		timeStr[1] = (hour%10);
		timeStr[3] = ((min/10)%10);
		timeStr[4] = (min%10);
		// load image(s) based on time
		for (int i=0; i<5; i++) {
			oledClearBuffer(oled_buffer);
			oledUpdateBuffer(jakefart.image[i], oled_buffer);
			updateTimeBuffer(timeStr,oled_buffer);
			delayMs(5);
			printBuffer(2, oled_buffer);
		}
	}
}
