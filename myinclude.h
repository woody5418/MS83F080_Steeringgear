#ifndef __MYINCLUDE_H
#define __MYINCLUDE_H
#include "syscfg.h"


/*******************�궨��********************/
#define _XTAL_FREQ 		16000000		//4T
//#define EEpromStartAdd  0x00
#define u32             unsigned long int
#define u16             unsigned short int
#define u8              unsigned char




#include "MyEEProm.h"
#include "MyPwm4.h"
#include "MyADC.h"



void System_init(void);
void GPIO_Init(void);
void Delay_xms(unsigned int x);//����ʱx����

#endif




