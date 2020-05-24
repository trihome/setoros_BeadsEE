//---------------------------------------------------------
//Sequence.h
//---------------------------------------------------------
#ifndef SEQUENCE_H_INCLUDE
#define SEQUENCE_H_INCLUDE

#include "StatusLed.h"
#include "ServoAcc.h"

//単動動作
enum SingleAction
{
    //Z軸の操作
    AXISZ_UP,
    AXISZ_DOWN,
    //A軸の動作
    AXISA_GRAB,
    AXISA_RELEASE,
};
typedef SingleAction SA;

//連動動作
enum MultiAction
{
    ZERORETURN, //原点復帰動作
    GRAB,       //離し動作
    RELEASE,    //掴み動作
};
typedef MultiAction MA;

//シーケンス制御
class Sequence
{
public:
    Sequence();
    void Init();
    void Single(SA action);
    void Multi(MA action);
    void Auto();
    void InterruptTimer();

private:
    //現在のステータス
    int status;
    //ステータス表示LED
    StatusLed slz = StatusLed(GPIOOUT_STAT_Z);
    StatusLed sla = StatusLed(GPIOOUT_STAT_A);
    //サーボモータ
    ServoAcc svz; //Z軸（上下）
    ServoAcc sva; //A軸（掴み離し）
};

#endif