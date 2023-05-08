#include "systick_time.h"
#include "i2c_drive.h"
#include "oled_drive.h"

// frame buffer
uint8_t oled_buffer[8][128];

int main(void)
{
	systick_init();
	initGPIO(C, 13, OUTPUT50, GP_PP);
	// set up OLED
	// oled_init(2);
	// oled_blank(2);
	// DelayMs(200);

	RCC->APB1ENR |= 0x18000000;
	PWR->CR |= 0x100;
	RCC->BDCR |= 0x8100;
	while(~(RTC->CRL & 0x20)) {}
	RTC->CRL |= 0x10;
	// RTC->PRLL |= 0x7FFF;
	// while(~(RTC->CRL & 0x20)) {}
	// RTC->CRH |= 1;
	// while(~(RTC->CRL & 0x20)) {}
	RTC->CRL &= 0x0F;

	while(1){
		toggleGPIO(C, 13);
		DelayMs(10);
		// oled_clear_buffer(oled_buffer);
		// oled_update_buffer(jake0, oled_buffer);
		// update_str_buffer(0,0,"hi",oled_buffer);
		// DelayMs(10);
		// print_buffer(2, oled_buffer);

		// oled_clear_buffer(oled_buffer);
		// oled_update_buffer(jake2, oled_buffer);
		// update_str_buffer(0,0,"hi",oled_buffer);
		// DelayMs(10);
		// print_buffer(2, oled_buffer);

		// oled_clear_buffer(oled_buffer);
		// oled_update_buffer(jake3, oled_buffer);
		// DelayMs(10);
		// print_buffer(2, oled_buffer);

		// oled_clear_buffer(oled_buffer);
		// oled_update_buffer(jake4, oled_buffer);
		// DelayMs(10);
		// print_buffer(2, oled_buffer);
	}
}
