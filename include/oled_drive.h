#ifndef __OLED_DRIVE_H
#define __OLED_DRIVE_H

#include "i2c_drive.h"
#include "global.h"

void oledCmd1Byte(char i2c, char data);
void oledCmd2Byte(char i2c, char data[]);
void oledInit(char i2c);
void oledData(char i2c, char data);
void oledPos(char i2c, char yPos, char xPos);
void oledBlank(char i2c);
void oledPrint(char i2c, char str[]);
void oledMsg(char i2c, char yPos, char xPos, char str[]);
void oledAprint(char i2c, int asc);
void oledClearBuffer(uint8_t buffer[][128]);
void oledUpdateBuffer(const uint8_t *image, uint8_t buffer[][128]);
void updateStrBuffer(short yPos, short xPos,char str[], uint8_t buffer[][128]);
void updateTimeBuffer(char str[], uint8_t buffer[][128]);
void printBuffer(char i2c, uint8_t buffer[][128]);

struct oledImage {
    uint8_t cols;
    uint8_t *image[10];
};

#endif // __OLED_DRIVE_H
