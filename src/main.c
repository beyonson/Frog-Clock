#include "systick_time.h"
#include "oled_drive.h"
#include "i2c_drive.h"
#include "rtc_drive.h"

// frame buffer
uint8_t oled_buffer[8][128];

int main(void)
{
	NVIC->ISER[(((uint32_t)(int32_t)3) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)(int32_t)3) & 0x1FUL));
	systickInit();
	initGPIO(C, 13, OUTPUT50, GP_PP);

	initRTC();

	oled_init(2);
	oled_blank(2);

	while(1){
		oled_clear_buffer(oled_buffer);
		oled_update_buffer(jake0, oled_buffer);
		DelayMs(1);
		print_buffer(2, oled_buffer);

		oled_clear_buffer(oled_buffer);
		oled_update_buffer(jake2, oled_buffer);
		DelayMs(1);
		print_buffer(2, oled_buffer);
	}
}
