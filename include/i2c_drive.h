#ifndef __I2C_DRIVE_H
#define __I2C_DRIVE_H

#include "stm32f103.h"
#include "gpio_drive.h"
#include "systick_time.h"

#define i2c_FM 0x2D
#define i2c_SM 0xB4

void i2c_init(char i2c, unsigned short speed_mode);
void i2c_start(char i2c);
void i2c_write(char i2c, char address, char data[]);
void i2c_add(char i2c, char address, char RW);
void i2c_data(char i2c, char data);
void i2c_stop(char i2c);


#endif // __I2C_DRIVE_H
