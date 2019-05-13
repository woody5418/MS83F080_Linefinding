//********************************************************************
//
//      ADC Init Initialization Part
//      4DClass
//      Copyright(C)  2017
//      All rights reserved
//***********************************************************************
#include "MyInclude.h"



/*******************ϵͳ ��ʼ��*********************/
/*******************************************************************************
 * ��������System_init
 * ����  ��ϵͳ��ʼ������
 * ����  ����
 * ���  ����
 * ����  ���ڲ�����
 ******************************************************************************/
void System_init(void)
{
    OPTION  = 0x00;//BIT7ʹ������λ��0=ʹ�ܣ�1=��ֹ
    OSCCON  = 0x70;  //�ڲ�����ѡ�� 16Mhz
    WDTCON  = 0x1E;  //BIT4~BIT1:���Ź���λʱ��512ms��bit0--1=������0=�ر�
}
/*******************************************************************************
 * ��������GPIO_Init
 * ����  ��GPIO��ʼ������
 * ����  ����
 * ���  ����
 * ����  ���ڲ�����
 ******************************************************************************/
void GPIO_Init(void)
{
    //TRISA 0=OUTPUT,1=INPUT
    TRISA0=1;
    TRISA1=0;
    TRISA2=0;
    TRISA3=0;
    TRISA4=0;
    TRISA5=0;
    TRISA6=0;
    TRISA7=0;
    //TRISC 0=OUTPUT,1=INPUT
    TRISC0=0;
    TRISC1=0;
    TRISC2=0;
    TRISC3=0;
    TRISC4=0;
    TRISC5=0;

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
    WPUA2=1;
    WPUA3=1;
    WPUA4=1;
    WPUA5=1;
    WPUA6=1;
    WPUA7=1;
    //WPUA 1=ʹ��������0=��ֹ
    WPUC0=0;
    WPUC1=0;
    WPUC2=0;
    WPUC3=0;
    WPUC4=0;
    WPUC5=0;
    //WPD 1=ʹ��������0=�Ͽ�����
    WPDA4=0;
    WPDC1=0;
    WPDC2=0;
    WPDC3=0;
}

void delay_ms(unsigned int x)  //����ʱx����
{
    unsigned int i;
    for(i=0; i<x; i++) {
        __delay_ms(1);
    }
}
void delay_us(unsigned int x)  //����ʱx΢��
{
    unsigned int i;
    for(i=0; i<x; i++) {
        __delay_us(1);
    }
}

/*******************************************************************************
 * ��������LED_Study_End
 * ����  ��LEDЧ��
 * ����  ����
 * ���  ����
 * ����  ���ڲ�����
 ******************************************************************************/
void LED_Study_End(void)
{
    LED_STUDY = 1;
    delay_ms(50);
    LED_STUDY = 0;
    delay_ms(50);
    LED_STUDY = 1;
    delay_ms(50);
    LED_STUDY = 0;
    delay_ms(50);
    LED_STUDY = 1;
    delay_ms(50);
    LED_STUDY = 0;
    delay_ms(50);
}


