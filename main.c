/****************************************************************************
*       Copyright (C), 北京四维拓智教育科技有限公司
*
*       MS80F080
*       V0.1
*       2017-12-04
*       Woody  QQ:2490006131
*Description  :MS83F0802BS
*           		   _________
* 				   VDD|1   M   8|VSS
*	 PA6/OSC2/CLKO/T1G|2   S   7|PA0/AN0/C1IN+/ICSPCLK
*         PC3/P1C/PWM4|3   8   6|PA1/AN1/C1IN-/ICSPDAT
*     PC2/AN6/P1D/PWM5|4___3___5|PC1/AN5/C2IN-/P1E/INT
*
*
*****************************************************************************/
#include "MyInclude.h"
#include "MyPwm4.h"
#include "MyADC.h"


/*  Variate ////////////////////////////////////////////////////////////////*/
u16 ADC5_Input=0;
u16 ADC_VALUE=0;
u16 ADC_old_value=0;
u8 mode_PWM=0;
u8 mode_GPIO=0;
u8 j=0;
float adc_K=0.1345;
// 主函数
void main(void)
{
    CLRWDT();//清看门狗
    System_init();
    GPIO_Init();
    PWM4_Init();
    ADC_Init();
    while(1) {
        CLRWDT();//清看门狗
        ADC_Init();
        for(j=0; j<5; j++)
            ADC5_Input = GetADCValue();
        if(ADC5_Input > 200) {
            mode_GPIO=0;
            if(mode_PWM == 0) {
                PWM4_Init();//TMR4ON =1;//PWM4_Init();
                mode_PWM=1;
            }
            ADC_VALUE = (u16)(adc_K*(float)ADC5_Input+24);
            if(ADC_VALUE >= 140)
                ADC_VALUE = 140;
            if(ADC_VALUE <= 35)
                ADC_VALUE = 35;
            //25-> 0.5ms  145->2.5ms
            if(ADC_VALUE != ADC_old_value)
                SetPWM4Plus(ADC_VALUE);
            ADC_old_value = ADC_VALUE;
            //Delay_xms(5);
        } else {
            mode_PWM=0;
            if(mode_GPIO == 0) {
                mode_GPIO=1;
                TMR4ON =0;
                P4EN=0;
                TRISC1=0;
                WPUC3=1;
                PC3=0;
            }
            PC3=PC2;
        }
    }
}
/*******************************************************************************
 * 函数名：interrupt ISR
 * 描述  ：中断函数
 * 输入  ：无
 * 输出  ：无
 * 调用  ：内部调用
 ******************************************************************************/
void interrupt ISR(void)
{

}



