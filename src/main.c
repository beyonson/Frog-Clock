#include "systick_time.h"
#include "i2c_drive.h"
#include "oled_drive.h"

void clock(char i2c, int time);

int main(void)
{
	
	systick_init();
	oled_init(2);
	
	DelayMs(2000);
	oled_blank(2);
	
	clock(2, 544);
	
	while(1)
	{
		
	}
	
}

void clock(char i2c, int time)
{
	int hours = time/100;
	int minutes = time%100;
	int seconds = 0;

	while(1)
	{
		if(seconds==60)
		{
			minutes++;
			seconds=0;
		}
		if(minutes==60)
		{
			hours++;
			minutes=0;
		}
		if(hours==24)
		{
			hours=0;
		}
		seconds++;
		
		oled_pos(i2c, 4, 50);
		oled_clock(i2c, hours);
		oled_print(i2c, ":");
		oled_clock(i2c, minutes);
		DelayMs(995);
	}
}

