#ifndef __RTC_DRIVE_H
#define __RTC_DRIVE_H

#include "stm32f103.h"
#include "gpio_drive.h"
#include "systick_time.h"

void initRTC(void);
void initAlarm(void);
int readSysTime(void);

#endif // __RTC_DRIVE_H
