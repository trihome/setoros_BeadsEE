//---------------------------------------------------------
//StatusLed.h
//---------------------------------------------------------
#ifndef STATUSLED_H_INCLUDE
#define STATUSLED_H_INCLUDE

//ステータスの定数
enum LedStat
{
    ZERO,   //原点
    RET,    //復帰側
    MOVING, //移動中
    ACT,    //作動側
};
//typedef Stat STAT;

//クラスの定義
class StatusLed
{
public:
    StatusLed(int pin);
    void on();
    void off();
    void chg(int status);
    void update();
    void s(LedStat stat);

private:
    int ledPin;  //使用するLEDのピン番号
    LedStat status; //現在のステータス
};

#endif