//********************************************************************
//
//      KEY Init Initialization Part
//      4DClass
//      Copyright(C)  2017
//      All rights reserved
//***********************************************************************
#include "Myinclude.h"



/*******************************************************************************
 * 函数名：PWM4_Init
 * 描述  ：PWM初始化函数
 * 输入  ：无
 * 输出  ：无
 * 调用  ：内部调用
 ******************************************************************************/
void PWM4_Init(void)
{
    TRISC3 = 1;
    //PWMxCR0  设置周期
    P4INTS=0;
    P4PER0=1;
    P4PER1=0;
    P4PER2=1;//周期选座位 101=1位
    P4CKSRC0=1;
    P4CKSRC1=0;
    P4CKSRC2=0;//时钟选择位
    P4BZR=0;//0=pwm，1=BUZZER
    //PWMxCR1
    P4EN=1;//1=pwm/buzzer模式，0=定时器模式
    P4POL=0;//0=high,1=low
    TMR4PS0=1;
    TMR4PS1=0;
    TMR4PS2=1;//预分频1:64
    TMR4ON=0;//0=off，1=on
    TMR4IE=0;//0=off,1=on
    TMR4IF=0;//0=OFF,1=ON

    T4CKDIV=8;

    TMR4H=0;//低4位为R3H
    PR4L=50;
    //设置占空比


    TMR4IF=0;//0=OFF,1=ON
    TMR4ON=1;//0=off，1=on
    while(TMR4IF==0) CLRWDT();
    TRISC3 = 0;
}


//PR4L=20对应0.5ms的高
//PR4L=95对应2.5ms的高
void SetPWM4Plus(u8 num)
{
    //设置占空比
    //TMR4H = 0;
    PR4L = num;
}




