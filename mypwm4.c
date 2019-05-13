//********************************************************************
//
//      KEY Init Initialization Part
//      4DClass
//      Copyright(C)  2017
//      All rights reserved
//***********************************************************************
#include "Myinclude.h"



/*******************************************************************************
 * ��������PWM4_Init
 * ����  ��PWM��ʼ������
 * ����  ����
 * ���  ����
 * ����  ���ڲ�����
 ******************************************************************************/
void PWM4_Init(void)
{
    TRISC3 = 1;
    //PWMxCR0  ��������
    P4INTS=0;
    P4PER0=1;
    P4PER1=0;
    P4PER2=1;//����ѡ��λ 101=1λ
    P4CKSRC0=1;
    P4CKSRC1=0;
    P4CKSRC2=0;//ʱ��ѡ��λ
    P4BZR=0;//0=pwm��1=BUZZER
    //PWMxCR1
    P4EN=1;//1=pwm/buzzerģʽ��0=��ʱ��ģʽ
    P4POL=0;//0=high,1=low
    TMR4PS0=1;
    TMR4PS1=0;
    TMR4PS2=1;//Ԥ��Ƶ1:64
    TMR4ON=0;//0=off��1=on
    TMR4IE=0;//0=off,1=on
    TMR4IF=0;//0=OFF,1=ON

    T4CKDIV=8;

    TMR4H=0;//��4λΪR3H
    PR4L=50;
    //����ռ�ձ�


    TMR4IF=0;//0=OFF,1=ON
    TMR4ON=1;//0=off��1=on
    while(TMR4IF==0) CLRWDT();
    TRISC3 = 0;
}


//PR4L=20��Ӧ0.5ms�ĸ�
//PR4L=95��Ӧ2.5ms�ĸ�
void SetPWM4Plus(u8 num)
{
    //����ռ�ձ�
    //TMR4H = 0;
    PR4L = num;
}




