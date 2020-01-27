/*********************************************************************************************************
*
* File                : main.cpp
* Hardware Environment: 
* Build Environment   : Keil MDK
* Version             : V4.74
* By                  : WaveShare
*
*                                  (c) Copyright 2005-2014, WaveShare
*                                       http://www.waveshare.net
*                                       http://www.waveshare.com
*                                          All Rights Reserved
*
*********************************************************************************************************/
#include <stdlib.h>
#include "Adafruit_SSD1306.h"
 
DigitalOut myled(LED1);


#define NUMFLAKES 10
#define XPOS 0
#define YPOS 1
#define DELTAY 2

#define LOGO16_GLCD_HEIGHT 16 
#define LOGO16_GLCD_WIDTH  16 
static const unsigned char logo16_glcd_bmp[] =
{ 
0x20,0xE0,0xE0,0xC0,0xE0,0xE0,0xE0,0x80,0xF8,0xFC,0x1E,0x80,0xE0,0xE0,0xC0,0x00,
0x00,0x01,0x07,0x0F,0x07,0x03,0x07,0x0F,0x03,0x03,0x0F,0x07,0x73,0x79,0x3F,0x0F
};



 
// an I2C sub-class that provides a constructed default
class I2CPreInit : public I2C
{
public:
    I2CPreInit(PinName sda, PinName scl) : I2C(sda, scl)
    {
        frequency(400000);
    };
};
I2CPreInit gI2C(I2C_SDA, I2C_SCL);
Adafruit_SSD1306_I2c display(gI2C, D7, D8);


void testdrawline() 
{  
  for (int16_t i=0; i<display.width(); i+=4) {
    display.drawLine(0, 0, i, display.height()-1, WHITE);
    display.display();
  }
  for (int16_t i=0; i<display.height(); i+=4) {
    display.drawLine(0, 0, display.width()-1, i, WHITE);
    display.display();
  }
  wait_ms(250);
  
  display.clearDisplay();
  for (int16_t i=0; i<display.width(); i+=4) {
    display.drawLine(0, display.height()-1, i, 0, WHITE);
    display.display();
  }
  for (int16_t i=display.height()-1; i>=0; i-=4) {
    display.drawLine(0, display.height()-1, display.width()-1, i, WHITE);
    display.display();
  }
  wait_ms(250);
  
  display.clearDisplay();
  for (int16_t i=display.width()-1; i>=0; i-=4) {
    display.drawLine(display.width()-1, display.height()-1, i, 0, WHITE);
    display.display();
  }
  for (int16_t i=display.height()-1; i>=0; i-=4) {
    display.drawLine(display.width()-1, display.height()-1, 0, i, WHITE);
    display.display();
  }
  wait_ms(250);

  display.clearDisplay();
  for (int16_t i=0; i<display.height(); i+=4) {
    display.drawLine(display.width()-1, 0, 0, i, WHITE);
    display.display();
  }
  for (int16_t i=0; i<display.width(); i+=4) {
    display.drawLine(display.width()-1, 0, i, display.height()-1, WHITE); 
    display.display();
  }
  wait_ms(250);
}


void testdrawrect(void) {
  for (int16_t i=0; i<display.height()/2; i+=2) {
    display.drawRect(i, i, display.width()-2*i, display.height()-2*i, WHITE);
    display.display();
  }
}

void testfillrect(void) {
  uint8_t color = 1;
  for (int16_t i=0; i<display.height()/2; i+=3) {
    // alternate colors
    display.fillRect(i, i, display.width()-i*2, display.height()-i*2, color%2);
    display.display();
    color++;
  }
}

void testdrawcircle(void) {
  for (int16_t i=0; i<display.height(); i+=2) {
    display.drawCircle(display.width()/2, display.height()/2, i, WHITE);
    display.display();
  }
}

void testdrawroundrect(void) {
  for (int16_t i=0; i<display.height()/2-2; i+=2) {
    display.drawRoundRect(i, i, display.width()-2*i, display.height()-2*i, display.height()/4, WHITE);
    display.display();
  }
}

void testfillroundrect(void) {
  uint8_t color = WHITE;
  for (int16_t i=0; i<display.height()/2-2; i+=2) {
    display.fillRoundRect(i, i, display.width()-2*i, display.height()-2*i, display.height()/4, color);
    if (color == WHITE) color = BLACK;
    else color = WHITE;
    display.display();
  }
}

void testdrawtriangle(void) {
  for (int16_t i=0; i<min(display.width(),display.height())/2; i+=5) {
    display.drawTriangle(display.width()/2, display.height()/2-i,
                     display.width()/2-i, display.height()/2+i,
                     display.width()/2+i, display.height()/2+i, WHITE);
    display.display();
  }
}

void testfilltriangle(void) {
  uint8_t color = WHITE;
  for (int16_t i=min(display.width(),display.height())/2; i>0; i-=5) {
    display.fillTriangle(display.width()/2, display.height()/2-i,
                     display.width()/2-i, display.height()/2+i,
                     display.width()/2+i, display.height()/2+i, WHITE);
    if (color == WHITE) color = BLACK;
    else color = WHITE;
    display.display();
  }
}

void testdrawchar(void) {
  display.setTextSize(1);
  display.setTextColor(WHITE);
  display.setTextCursor(0,0);

  for (uint8_t i=0; i < 168; i++) {
    if (i == '\n') continue;
    display.printf("%c", i);
    if ((i > 0) && (i % 21 == 0))
      display.printf("\n");
  }    
  display.display();
}

void testdrawbitmap(const uint8_t *bitmap, uint8_t w, uint8_t h) {
  uint8_t icons[NUMFLAKES][3];
 
  // initialize
  for (uint8_t f=0; f< NUMFLAKES; f++) {
//    icons[f][XPOS] = random(display.width());
		icons[f][XPOS] = rand() % (display.width());
    icons[f][YPOS] = 0;
//    icons[f][DELTAY] = random(5) + 1;
    icons[f][DELTAY] = rand() % (5) + 1;
  }

  while (1) {
    // draw each icon
    for (uint8_t f=0; f< NUMFLAKES; f++) {
      display.drawBitmap(icons[f][XPOS], icons[f][YPOS], logo16_glcd_bmp, w, h, WHITE);
    }
    display.display();
    wait_ms(200);
    
    // then erase it + move it
    for (uint8_t f=0; f< NUMFLAKES; f++) {
      display.drawBitmap(icons[f][XPOS], icons[f][YPOS],  logo16_glcd_bmp, w, h, BLACK);
      // move it
      icons[f][YPOS] += icons[f][DELTAY];
      // if its gone, reinit
      if (icons[f][YPOS] > display.height()) {
//	icons[f][XPOS] = random(display.width());
	icons[f][XPOS] = rand() % (display.width());
	icons[f][YPOS] = 0;
//	icons[f][DELTAY] = random(5) + 1;
	icons[f][DELTAY] = rand() % (5) + 1;
      }
    }
   }
}

int main()
{   
	/*
	logo
	*/
	display.clearDisplay();
	display.setTextSize(2);
	display.setTextCursor(15, 20);
	display.printf("WaveShare");
	display.display();
	wait(3);
	display.clearDisplay();
	
  // draw many lines
  testdrawline();
  display.display();
  wait_ms(2000);
  display.clearDisplay();	
	
  // draw rectangles
  testdrawrect();
  display.display();
  wait_ms(2000);
  display.clearDisplay();
	
  // draw multiple rectangles
  testfillrect();
  display.display();
  wait_ms(2000);
  display.clearDisplay();
	
  // draw mulitple circles
  testdrawcircle();
  display.display();
  wait_ms(2000);
  display.clearDisplay();
	
  // draw a white circle, 10 pixel radius
  display.fillCircle(display.width()/2, display.height()/2, 10, WHITE);
  display.display();
  wait_ms(2000);
  display.clearDisplay();

  testdrawroundrect();
  wait_ms(2000);
  display.clearDisplay();
	
  testfillroundrect();
  wait_ms(2000);
  display.clearDisplay();	
	
  testdrawtriangle();
  wait_ms(2000);
  display.clearDisplay();
   
  testfilltriangle();
  wait_ms(2000);
  display.clearDisplay();	
	
  // draw the first ~12 characters in the font
  testdrawchar();
  display.display();
  wait_ms(2000);
  display.clearDisplay();

  // miniature bitmap display
  display.clearDisplay();
  display.drawBitmap(30, 16,  logo16_glcd_bmp, 16, 16, 1);
  display.display();

  // invert the display
  display.invertDisplay(true);
  wait_ms(1000); 
  display.invertDisplay(false);
  wait_ms(1000); 
	
  
  // draw a bitmap icon and 'animate' movement
	display.clearDisplay();
  testdrawbitmap(logo16_glcd_bmp, LOGO16_GLCD_HEIGHT, LOGO16_GLCD_WIDTH);
	while(1)
		;
}






















 
