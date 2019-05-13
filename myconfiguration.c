//********************************************************************
//
//      ADC Init Initialization Part
//      4DClass
//      Copyright(C)  2017
//      All rights reserved
//***********************************************************************
#include "MyInclude.h"



/*******************ϵͳ ��ʼ��*********************/
void System_init(void)
{
    //PCON    = 0x03;
    OPTION = 0B00000000;//BIT7ʹ������λ��0=ʹ�ܣ�1=��ֹ
    OSCCON = 0B01110000;   //�ڲ�����ѡ�� 16Mhz
    WDTCON = 0B00001001;//BIT4~BIT1���Ź���ʱ������ѡ�� bit0 1=�򿪿��Ź�0=�رտ��Ź�
}

/*******************GPIO ��ʼ��*********************/
void GPIO_Init(void)
{
    //TRISA 0=OUTPUT,1=INPUT
    TRISA0=0;
    TRISA1=0;
    TRISA6=0;
    //TRISC 0=OUTPUT,1=INPUT
    TRISC1=0;//����
    TRISC2=1;//����
    TRISC3=0;//����

    CM0=1;
    CM1=1;
    CM2=1;//�Ƚ����رգ�CxIN�ܽ�Ϊ����IO�ܽ�

    //����������������ͬʱ����Щ IO ��ʱ��������������ֹ��������������
    //ANSEL portA 1=ģ�� 0=����
    ANSEL0=0;
    ANSEL1=0;
    ANSEL2=0;
    ANSEL3=0;
    ANSEL4=0;
    ANSEL5=0;
    ANSEL6=0;
    ANSEL7=0;
    //WPUA 1=ʹ��������0=��ֹ
    WPUA0=1;
    WPUA1=1;
    WPUA6=1;
    //WPUA 1=ʹ��������0=��ֹ
    WPUC1=0;
    WPUC2=0;
    WPUC3=1;
    //WPD 1=ʹ��������0=�Ͽ�����
    WPDA4=0;
    WPDC1=0;
    WPDC2=0;
    WPDC3=0;
}


void Delay_xms(unsigned int x)  //����ʱx����
{
    unsigned int i;
    for(i=0; i<x; i++) {
        __delay_ms(1);
        CLRWDT();
    }
}
