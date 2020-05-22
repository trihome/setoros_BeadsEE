//---------------------------------------------------------
//ServoAcc.h
//---------------------------------------------------------
#ifndef SERVOACC_H_INCLUDE
#define SERVOACC_H_INCLUDE

#include <arduino.h>
#include <Servo.h>

//サーボ制御
class ServoAcc
{
public:
    ServoAcc();
    void init(int pin, int ret, int act);
    void attach();      //
    void detach();      //
    void act();         //作動側に移動
    void ret();         //復帰側に移動
    bool dput(int dig); //指定角度に移動
    int dget();         //現在角度を取得
private:
    Servo sv;
    int pinno;
    int digree_ret; //復帰側角度
    int digree_act; //作動側角度
    int digree;     //現在角度
    int status;     //現在のステータス
};

#endif