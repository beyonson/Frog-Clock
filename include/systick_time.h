#ifndef __SYSTICK_TIME_H
#define __SYSTICK_TIME_H

void systickInit(void);
void DelayMs(unsigned long t);
void systickInt(unsigned short uart_1_mgr[],unsigned short uart_2_mgr[],unsigned short uart_3_mgr[]);
void systickIntStart(void);
void Delaymicro(void);
void DelayUs(unsigned long t);

#endif // __SYSTICK_TIME_H
