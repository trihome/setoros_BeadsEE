//---------------------------------------------------------
//  アイロンビーズセッター　エンドエフェクター
//  サーボ制御
//  2020 myasu
//---------------------------------------------------------

#include "ServoAcc.h"
//自作
#include "Config.h"

//コンストラクタ
ServoAcc::ServoAcc()
{
}

//初期化
//pin:制御ピン番号 ret:戻側角度 act:出側角度
void ServoAcc::init(int pin, int ret, int act)
{
    //角度の保存
    digree_ret = ret;
    digree_act = act;
    //
    pinno = pin;
    //サーボにアタッチ
    this->attach();
    //原点側に移動
    this->ret();
}

//サーボにアタッチ
void ServoAcc::attach()
{
    sv.attach(pinno);
}

//サーボにデタッチ
void ServoAcc::detach()
{
    sv.detach();
}

//作動側に移動
void ServoAcc::act()
{
    dput(digree_act);
}

//復帰側に移動
void ServoAcc::ret()
{
    dput(digree_ret);
}

//指定角度に移動
//dig: 角度
bool ServoAcc::dput(int dig)
{
    if (digree_ret <= dig && dig <= digree_act)
    {
        //指定角度を指令
        sv.write(dig);
        //現在角度値を保存
        digree = dig;
        return (true);
    }
    else
    {
        //角度範囲外が指定されたら
        return (false);
    }
}

//現在角度を取得
int ServoAcc::dget()
{
    return (digree);
}