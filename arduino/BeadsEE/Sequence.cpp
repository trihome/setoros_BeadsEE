//---------------------------------------------------------
//  アイロンビーズセッター　エンドエフェクター
//  シーケンス制御
//  2020 myasu
//---------------------------------------------------------

#include <arduino.h>
#include "Sequence.h"

//コンストラクタ
Sequence::Sequence()
{
}

//初期化
void Sequence::Init()
{
    //サーボZ軸、A軸の設定
    svz.init(10, 37, 50);
    sva.init(11, 40, 60);
}

//単動動作
void Sequence::Single(SingleAction action)
{
    switch (action)
    {
    case AXISZ_DOWN:
        //Z軸下降
        svz.act();
        //LED更新
        slz.s(ACT);
        break;
    case AXISZ_UP:
        //Z軸上昇
        svz.ret();
        //LED更新
        slz.s(RET);
        break;
    case AXISA_GRAB:
        //A軸掴み
        sva.act();
        //LED更新
        sla.s(ACT);
        break;
    case AXISA_RELEASE:
        //A軸離し
        sva.ret();
        //LED更新
        sla.s(RET);
        break;
    default:
        break;
    }
}

//連動動作
void Sequence::Multi(MultiAction action)
{
    switch (action)
    {
    case ZERORETURN:
        //原点復帰
        Single(AXISA_RELEASE);
        delay(1000);
        Single(AXISZ_UP);
        //LEDの表示をZEROに
        slz.s(ZERO);
        sla.s(ZERO);
        break;
    case GRAB:
        //掴み
        Single(AXISZ_DOWN);
        delay(1000);
        Single(AXISA_GRAB);
        delay(1000);
        Single(AXISZ_UP);
        break;
    case RELEASE:
        //離し
        Single(AXISZ_DOWN);
        delay(1000);
        Single(AXISA_RELEASE);
        delay(1000);
        Single(AXISZ_UP);
        break;
    default:
        break;
    }
}

//自動運転シーケンス
void Sequence::Auto()
{
}

//タイマ割り込みイベント
void Sequence::InterruptTimer()
{
    //ステータスLEDの更新
    slz.update();
    sla.update();
}