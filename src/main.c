#include "systick_time.h"
#include "i2c_drive.h"
#include "oled_drive.h"

// frame buffer
uint8_t oled_buffer[8][128];

int main(void)
{
	systick_init();
	// set up OLED
	oled_init(2);
	oled_blank(2);
	DelayMs(200);

	// create image
	Img_TypeDef weew;
	weew.h = Goku2_rows;
	weew.w = Goku2_cols;
	weew.x_pos = 0;
	weew.y_pos = 0;
	weew.image[0] = Goku2;

	// // fill frame buffer
	oled_clear_buffer(oled_buffer);
	oled_update_buffer(weew.image[0], 0, oled_buffer);
	print_buffer(2, oled_buffer);

	while(1){}
}
