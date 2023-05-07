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
	Img_TypeDef weew = {
		.h = weew_stack_rows,
		.w = weew_stack_cols,
		.x_pos = 0,
		.y_pos = 0,
	};
	weew.image[0] = weew_stack;

	// fill frame buffer
	oled_clear_buffer(oled_buffer);
	oled_update_buffer(weew, 0, oled_buffer);

	toggleGPIO(C, 13);
	while(1){
	}
}
