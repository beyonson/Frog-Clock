#include "systick_time.h"
#include "oled_drive.h"
#include "i2c_drive.h"
#include "rtc_drive.h"

// frame buffer
uint8_t oled_buffer[8][128];

int main(void)
{
	NVIC->ICER[(((uint32_t)(int32_t)3) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)(int32_t)3) & 0x1FUL));
	systickInit();
	initGPIO(C, 13, OUTPUT50, GP_PP);
	initRTC();
	oled_init(2);

	oled_blank(2);

	int time = 0;
	char timeStr[10];
	while(1){
		if (time >= 0x3C) {
			while((RTC->CRL & 0x20) == 0) {}
			RTC->CRL |= 0x0010; // put into config mode
			RTC->CNTL &= 0x0000;
			RTC->CRL &= ~(1<<4); // take out of config mode
			while((RTC->CRL & 0x20) == 0) {}
		}

		time = readSysTime();
		timeStr[0] = ((time/10)%10)+48;
		timeStr[1] = (time%10)+48 ;

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
