#include "rtc_drive.h"

void initRTC(void)
{
	RCC->APB1ENR |= 0x18000000; // enable PWR and BKP clocks
	PWR->CR |= 0x100; // enable access to RTC and BKP register
	RCC->CR |= 0x10000; // enable LSE
	while(!(RCC->CR & 0x20000)){} // wait on LSE clock
	RCC->BDCR |= 0x8300; // enable RTC and select clock

	// RTC config sequence
	while((RTC->CRL & 0x20) == 0) {}
	RTC->CRL |= 0x0010; // put into config mode
    RTC->CRL &= ~(1<<0); // clear second flag
	RTC->PRLH &= 0x0000; // set 5 second tick
	RTC->PRLH |= 0x4;
    RTC->PRLL &= 0x0000;
	RTC->PRLL |= 0xC4B3;
    RTC->CRH |= 0x0001; // enable second interrupt
	RTC->CRL &= ~(1<<4); // take out of config mode
	while((RTC->CRL & 0x20) == 0) {toggleGPIO(C, 13);delayMs(20);}
}

void initAlarm(void)
{
    EXTI->RTSR |= 0x20000;
    EXTI->FTSR &= 0xDFFFF;
    EXTI->IMR  |= 0x20000;
}

int readSysTime(void)
{
    return RTC->CNTL;
}
