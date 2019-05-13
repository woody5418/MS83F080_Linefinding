/****************************************************************************
*       Copyright (C), 北京四维拓智教育科技有限公司
*
*       MS83Fxx02B
*       V0.1
*       2017-12-04
*       Woody  QQ:2490006131
*Description  :      <-MS83F1602AS->
* 				        _________
* 				   VDD|1        16|VSS
*  PA7/OSC1/CLKI/T1CKI|2        15|PA0/AN0/C1IN+/ICSPCLK
*    PA6/OSC2/CLKO/T1G|3    M   14|PA1/AN1/C1IN-/ICSPDAT
* 			 PA5/MCLRB|4    S   13|PA2/AN2/C1OUT/T0CKI
*  	      PC3/P1C/PWM4|5    8   12|PA3/AN3/ATEST1
* 	  PC2/AN6/P1D/PWM5|6    3   11|PC0/AN4/C2IN+/P1F/Vref
* 	  PA4/ATEST0/Vregp|7        10|PC1/AN5/C2IN-/P1E/INT
*   PC5/CCP1/P1A/Vregn|8_________9|PC4/C2OUT/P1B/PWM3
* 4T模式
*****************************************************************************/
#include "MyInclude.h"
#include "MyEEProm.h"
#include "MyADC.h"
#include "MyKey.h"

uint16_t ADC_STUDY=0;
uint16_t ADC1_INPUT=0;
uint16_t ADC5_ADCOUT=0;
uint8_t i,j;
/*******************************************************************************
 * 函数名：main
 * 描述  ：系统主函数
 * 输入  ：无
 * 输出  ：无
 * 调用  ：内部调用
 ******************************************************************************/
void main(void)
{
    System_init();
    GPIO_Init();
    ADC_Init();
    EEPROM_Init();
    LED_Study_End();
    ADC_STUDY = Read_EEPROM_u16(0x00);
    if(ADC_STUDY == 0XFF)
        ADC_STUDY = 211;
    while(1) {
        //Control();
        ExchChannel(1); //选择通道1
        for(i=0; i<5; i++)
            ADC1_INPUT = GetADCValue();

        ExchChannel(5); //选择通道5
        for(j=0; j<5; j++)
            ADC5_ADCOUT = GetADCValue();

        delay_ms(5);
        if(isKeyPressed()) {
            LED_STUDY=1;
            ADC_STUDY = ADC5_ADCOUT+5;
            Write_EEPROM_u16(0x00,ADC_STUDY);
            delay_ms(500);
            LED_STUDY=0;
        }
        if(ADC1_INPUT < 512) { //低于2.5V
            OUTPUT = 0;
        } else {
            if(ADC5_ADCOUT <= ADC_STUDY) {
                OUTPUT=1;
            } else
                OUTPUT=0;
        }
    }
}


/*******************************************************************************
 * 函数名：Control
 * 描述  ：流程控制函数
 * 输入  ：无
 * 输出  ：无
 * 调用  ：内部调用
 ******************************************************************************/
void Control(void)
{
}




