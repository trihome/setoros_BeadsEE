//---------------------------------------------------------
//  アイロンビーズセッター　エンドエフェクター
//  現在の状態をLEDに表示
//  2020 myasu
//---------------------------------------------------------

#include <arduino.h>
//自作
#include "Config.h"
#include "StatusLed.h"

//コンストラクタ
StatusLed::StatusLed(int pin)
{
    ledPin = pin;
    pinMode(ledPin, OUTPUT);
}

///タイマー割込みから呼び出す
void StatusLed::update()
{
    //呼び出し回数カウンタ
    static int time;
    if (time > 1024)
        time = 0;
    else
        time++;

    //点灯フラグ
    bool ledon = false;

    //statusにあわせて点灯条件を定義
    switch (status)
    {
    case ZERO:
        //原点にいるときは
        //点灯しっぱなし
        on();
        return;
    case RET:
        //復帰(RET)側にいるときは
        //低速点滅
        (time >> 8) % 2 == 0 ? ledon = true : ledon = false;
        break;
    case MOVING:
        //移動中は
        //高速点滅
        (time >> 4) % 2 == 0 ? ledon = true : ledon = false;
        break;
    case ACT:
        //作動(ACT)側にいるときは
        //中速点滅
        (time >> 6) % 2 == 0 ? ledon = true : ledon = false;
        break;
    }

    //点灯・消灯の更新
    ledon ? on() : off();
}

///ステータスの更新
void StatusLed::s(LedStat argstat)
{
    status = argstat;
}

///点灯
void StatusLed::on(void)
{
    digitalWrite(ledPin, HIGH);
}

///消灯
void StatusLed::off(void)
{
    digitalWrite(ledPin, LOW);
}