//---------------------------------------------------------
//Config.h
//---------------------------------------------------------
#ifndef CONFIG_H_INCLUDE
#define CONFIG_H_INCLUDE

//------------------------------------------------
//設定定数

//シリアル通信ボーレート
#define SERIAL_BAUDRATE 115200

//操作ボタン・戻り（離し動作）
#define GPIOIN_RET 8
//操作ボタン・戻り（掴み動作）
#define GPIOIN_ACT 9
//サーボモーター・Z軸
#define GPIOOUT_SERVO_Z 10
//サーボモーター・A軸
#define GPIOOUT_SERVO_A 11
//ステータス表示・Z軸
#define GPIOOUT_STAT_Z 7
//ステータス表示・A軸
#define GPIOOUT_STAT_A 6

#endif