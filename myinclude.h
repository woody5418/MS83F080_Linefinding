#ifndef __MYINCLUDE_H
#define __MYINCLUDE_H
#include "syscfg.h"


/*******************∫Í∂®“Â********************/
#define _XTAL_FREQ 		16000000		//4T


//#define  u32            unsigned long int
//#define  u16            unsigned short int
//define  u8             unsigned char
#define  uint8_t        unsigned char
#define  uint16_t       unsigned int
#define  uint32_t       unsigned long int

#define  KEY_STUDY       PA0  //PA3->PC1
#define  LED_STUDY       PA6
#define  OUTPUT       	 PC2

#include "MyEEProm.h"
#include "MyADC.h"
#include "MyKey.h"

void System_init(void);
void GPIO_Init(void);
void delay_ms(unsigned int x);//À¿—” ±x∫¡√Î
void LED_Study_End(void);
void Control(void);



#endif




