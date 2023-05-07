#include "oled_drive.h"

void oled_cmd_1byte(char i2c, char data)
{
	i2c_start(i2c);
	i2c_add(i2c, 0x78, 0); // choosing oled address
	
	i2c_data(i2c, 0x00); // send command
	
	i2c_data(i2c, data);
	
	i2c_stop(i2c);
}

void oled_cmd_2byte(char i2c, char data[])
{
	int i=0;
	i2c_start(i2c);
	i2c_add(i2c, 0x78, 0); // choosing oled address
	
	i2c_data(i2c, 0x00); // send command
	for(i=0; i<2; i++)
		{i2c_data(i2c, data[i]);}
	
	i2c_stop(i2c);
}

// oled initialization
void oled_init(char i2c)
{
	i2c_init(i2c, i2c_FM);
	
	char cmd[] = {0xA8, 0x3F};
	oled_cmd_2byte(i2c, cmd);
	char cmd1[] = {0xD3, 0x00};
	oled_cmd_2byte(i2c, cmd1);
	
	oled_cmd_1byte(i2c, 0x40);
	oled_cmd_1byte(i2c, 0xA1);
	oled_cmd_1byte(i2c, 0xC8);
	
	char cmd2[] = {0xDA, 0x12};
	oled_cmd_2byte(i2c, cmd2);
	char cmd3[] = {0x81, 0x7F};
	oled_cmd_2byte(i2c, cmd3);
	
	oled_cmd_1byte(i2c, 0xA4);
	oled_cmd_1byte(i2c, 0xA6);

	char cmd4[] = {0xD5, 0x80};
	oled_cmd_2byte(i2c, cmd4);
	char cmd5[] = {0x8D, 0x14};
	oled_cmd_2byte(i2c, cmd5);
	
	oled_cmd_1byte(i2c, 0xAF);
	
	char cmd6[] = {0x20, 0x10};
	oled_cmd_2byte(i2c, cmd6);
}


// oled data
void oled_data(char i2c, char data)
{
	i2c_start(i2c);
	i2c_add(i2c, 0x78, 0); // choosing oled address
	
	i2c_data(i2c, 0x40); // send data
	
	i2c_data(i2c, data);
	
	i2c_stop(i2c);
}

// oled position
void oled_pos(char i2c, char Ypos, char Xpos)
{
	oled_cmd_1byte(i2c, 0x00 + (0x0F & Xpos)); // x position
	oled_cmd_1byte(i2c, 0x10 + (0x0F & (Xpos>>4)));

	oled_cmd_1byte(i2c, 0xB0 + Ypos); // y position
}

// blank screen
void oled_blank(char i2c)
{
	int i, j;
	oled_pos(i2c, 0, 0);
	for (i=0; i<8; i++)
	{
		for (j=0; j<128; j++)
		{
			oled_data(i2c, 0x00);
		}
	}
	oled_pos(i2c, 0, 0);
}

// print
void oled_print(char i2c, char str[])
{
	int i, j;
	i = 0;
	while(str[i])
	{
		for(j=0; j<5; j++)
		{
			oled_data(i2c, ASCII[(str[i]-32)][j]);
		}
		i++;
	}
}

//print buffer
void print_buffer(char i2c, uint8_t buffer[][128])
{
	oled_pos(i2c,0,0);
	int i,j;
	for (i=0;i<6;i++)
	{
		for(j=0;j<84;j++)
		{
			oled_data(i2c,buffer[i][j]);
		}
	}
}


// message
void oled_msg(char i2c, char Ypos, char Xpos, char str[])
{
	oled_pos(i2c, Ypos, Xpos);
	
	oled_print(i2c, str);
}

// ascii intput
void oled_Aprint(char i2c, int asc)
{
	int j;
	for(j=0; j<5; j++)
	{
		oled_data(i2c, ASCII[asc][j]);
	}
}

// clock output
void oled_clock(char i2c, int time)
{
	oled_Aprint(i2c, ((time/10)%10)+16);
	oled_Aprint(i2c, (time%10)+16);
}

void oled_clear_buffer(uint8_t buffer[][128])
{
	int i, j;
	for (i=0; i<8; i++)
	{
		for (j=0; j<128; j++)
		{
			buffer[i][j] = 0;
		}
	}
}

void oled_update_buffer(Img_TypeDef img, unsigned short img_num, uint8_t buffer[][128])
{
int x_dir, y_dir, endx,endy, cnt;
	if((img.w+img.x_pos)>128)
	{
		endx = 127;
	}
	else
		{
			endx = img.w+img.x_pos-1;
		}
	if((img.h+ img.y_pos)>8)
	{
		endy = 7;
	}
	else
		{
			endy = img.h+img.y_pos-1;
		}
	cnt = 0;
		for(y_dir = img.y_pos;y_dir<=endy;y_dir++)
		{
			for (x_dir= img.x_pos;x_dir <= endx; x_dir ++)
			{
				cnt =(y_dir-img.y_pos)*img.w +x_dir-img.x_pos;
				buffer[y_dir][x_dir] = img.image[img_num][cnt];
			}
		}
}

void update_str_buffer(short Ypos, short Xpos,char str[], uint8_t screen_buffer[][128])
{
int i,j, cnt_col,cnt_row;
	
cnt_col= Xpos;
cnt_row = Ypos;
i=0;
	while(str[i])
	{
		if(cnt_row>8)
		{break;}
		for(j=0;j<8;j++)
		{
			screen_buffer[cnt_row][cnt_col] = ASCII[str[i]-32][j];
			if((cnt_col+1)>127)
			{
				if((cnt_row+1)>8)
				{
					break;
				}
				else{
					cnt_row ++;
					cnt_col = Xpos;
				}
			}
			else
				{
				 cnt_col ++;
				}
		}
		i++;
	}
}

