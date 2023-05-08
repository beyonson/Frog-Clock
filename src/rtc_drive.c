#include "rtc_drive.h"

void initRTC(void)
{
	RCC->APB1ENR |= 0x18000000; // enable PWR and BKP clocks
	PWR->CR |= 0x100; // enable access to RTC and BKP register

	RCC->BDCR |= 1; // enable LSE
	while(!(RCC->BDCR & 0x2)){} // wait on LSE clock
	RCC->BDCR |= 0x8100; // enable RTC and select clock

	// RTC config sequence
	while((RTC->CRL & 0x20) == 0) {}
	RTC->CRL |= 0x0010; // put into config mode
  	RTC->CRL  &=0xFFFFFFFB;
	RTC->PRLH |= 0x0000;
	RTC->PRLL |= 0x7FFF;
	RTC->CRH |= 0x0001; // enable OWIE
	RTC->CRL &= ~(1<<4); // take out of config mode
	while((RTC->CRL & 0x20) == 0) {}
}
