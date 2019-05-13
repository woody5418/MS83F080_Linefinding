//********************************************************************
//
//      ADC Init Initialization Part
//      4DClass
//      Copyright(C)  2017
//      All rights reserved
//***********************************************************************
#include "MyInclude.h"

/*******************EEPROM ��ʼ��*********************/

//eeprom ��ʼ��
void EEPROM_Init(void)
{
    Write_EEPROM_u8(0xFF,0xAA);			//��δʹ�õ�������һ����ַд����0xAA
    Write_EEPROM_u8(0xFF,0xAA);			//��������ж�дEEPROM,�˲�������ִ��
}

//дEEPROM ����  u16
void Write_EEPROM_u16(uint8_t EEAddress,uint16_t EEDatas)
{
    Write_EEPROM_u8(EEAddress,(EEDatas>>8)&0xff);
    Write_EEPROM_u8(EEAddress+1,EEDatas&0xff);
}
//��EEPROM ����  u16
uint16_t Read_EEPROM_u16(uint8_t EEAddress)
{
    uint16_t EepromData=0;

    EepromData = Read_EEPROM_u8(EEAddress);
    EepromData = EepromData<<8;
    EepromData |= Read_EEPROM_u8(EEAddress+1);
    return 	EepromData;
}
//дEEPROM ����  u8
void Write_EEPROM_u8(uint8_t EEAddress,uint8_t EEDatas)
{
    GIE = 0;		//дEEPROM����ر��ж�
    while(GIE) CLRWDT();	//�ȴ�GIEΪ0
    EEADR = EEAddress;
    EEDAT = EEDatas;
    EEIF = 0;
    EECON1 = 0x34;
    WR = 1;
    while(WR) CLRWDT();	//�ȴ�дEEPROM���,����п������Ź��ҿ��Ź����ʱ��������С�ڵ���2ms.
    //��Ҫ�幷,��ΪдEEPOM�����Ҫ2ms��ʱ��
    GIE = 1;
}
//��ȡEEPROM���� u8
uint8_t Read_EEPROM_u8(uint8_t EEAddress)
{
    uint8_t EepromData=0;
    EEADR  = EEAddress;
    RD = 1;
    EepromData = EEDAT;
    RD = 0;
    return 	EepromData;
}






