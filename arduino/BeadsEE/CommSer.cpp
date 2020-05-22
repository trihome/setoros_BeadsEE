//---------------------------------------------------------
//  アイロンビーズセッター　エンドエフェクター
//  シリアル通信
//  2020 myasu
//---------------------------------------------------------

#include "CommSer.h"

//シリアル通信 アンサーバック記号
const int RECIEVE = 1; //受信したコマンド
const int DONE = 0;    //結果
const int ERR = -1;    //エラー

//コンストラクタ
CommSer::CommSer()
{
}

//初期化
void CommSer::init(void)
{
}

//------------------------------------------------
//アンサー表示
//------------------------------------------------
void CommSer::Answer(int argStatus, String argComand, int argValue)
{
    //アンサー文字列の組み立て
    switch (argStatus)
    {
    case RECIEVE:
        Serial.print("#");
        break;
    case DONE:
        Serial.print("*");
        break;
    case ERR:
        Serial.print("!");
        break;
    }
    Serial.print(argComand);
    Serial.print(": ");
    Serial.println(argValue);
}
