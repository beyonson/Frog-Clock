#ifndef __RTC_DRIVE_H
#define __RTC_DRIVE_H

#include "stm32f103.h"

void initRTC(void);
void initAlarm(void);
int readSysTime(void);

#endif // __RTC_DRIVE_H
