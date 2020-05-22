//---------------------------------------------------------
//  アイロンビーズセッター　エンドエフェクター
//  メイン処理
//  2020 myasu
//---------------------------------------------------------

#include <MsTimer2.h>
#include <Wire.h>
#include "StatusLed.h"
#include "ServoAcc.h"
#include "CommI2c.h"
#include "CommSer.h"
#include "Sequence.h"

//------------------------------------------------
//グローバル変数
//------------------------------------------------

//シーケンス制御
Sequence seq;

//------------------------------------------------
//設定定数
//------------------------------------------------
#define SERIAL_BAUDRATE 115200
#define GPIOIN_RET 8
#define GPIOIN_ACT 9

//------------------------------------------------
//初期化
//------------------------------------------------
void setup()
{
  // put your setup code here, to run once:

  //--------------------------------------------
  //タイマー割込初期化

  // 指定msごとにトリガ
  MsTimer2::set(10, InterruptTimer);
  //タイマ割り込みスタート
  MsTimer2::start();

  //--------------------------------------------
  //I2C通信初期化
  //未実装（とりあえず実装予定無し）

  //I2Cの初期化、スレーブ動作、アドレス10h
  Wire.begin(0x10);
  //データを受信したときの割込み関数の登録
  Wire.onReceive(InterruptI2CReceive);
  //データのリクエストが来たときの割込み関数の登録
  Wire.onRequest(InterruptI2CRequest);

  //--------------------------------------------
  //シーケンス制御の初期化

  seq.Init();

  //--------------------------------------------
  //シリアル通信初期化

  delay(100);
  //通信速度指定
  Serial.begin(115200);

  //--------------------------------------------
  //GPIO入力初期化
  pinMode(GPIOIN_RET, INPUT); //RET
  pinMode(GPIOIN_ACT, INPUT); //ACT
}

//------------------------------------------------
//ループ
//------------------------------------------------
void loop()
{
  // put your main code here, to run repeatedly:

  //シリアルの受付
  ProcSerial();

  //ボタン受付
  if (digitalRead(GPIOIN_RET))
  {
    //離し
    seq.Multi(MultiAction::RELEASE);
    Serial.println("+ done RELEASE");
  }
  else if (digitalRead(GPIOIN_ACT))
  {
    //掴み
    seq.Multi(MultiAction::GRAB);
    Serial.println("+ done GRAB");
  }
}

//------------------------------------------------
//シリアル通信の受付処理
//------------------------------------------------
void ProcSerial()
{
  //シリアル通信
  if (Serial.available())
  {
    //シリアル通信コマンド格納変数
    static char sCommand;
    static int iValue;

    //コマンド読み込み
    sCommand = Serial.read();
    //コマンドの引数を読み込み
    iValue = Serial.parseInt();

    switch (sCommand)
    {
    case 'm':
      //レスポンス確認
      Serial.print("+ beadsee ok ");
      Serial.print(__DATE__);
      Serial.print(" ");
      Serial.println(__TIME__);
      break;
    case 'h':
      //操作表示
      Serial.println("-- Help --");
      Serial.println(" - Multi Action");
      Serial.println("    q: zero return");
      Serial.println("    w: GRAB (or ACT Button)");
      Serial.println("    e: RELEASE (or RET Button)");
      Serial.println(" - Single Action");
      Serial.println("              <RET>      <ACT>");
      Serial.println("    Z AXIS... z: UP      x: DOWN");
      Serial.println("    A AXIS... a: RELEASE s: GRAB");
      break;
    case 'v':
      //ステータス表示
      Serial.println("-- Status View --");
      //未実装
      break;

    ///////////////
    //自動運転
    ///////////////
    //  完了フラグ：１文字目
    //    "+"   : 正常終了
    //    "-"   : 異常終了
    ///////////////
    case 'q':
      //原点復帰
      Serial.println("* Auto Zero axis");
      seq.Multi(MultiAction::ZERORETURN);
      //結果表示
      Serial.println("+ done");
      break;
    case 'w':
      //掴み
      Serial.println("* Auto GRAB");
      seq.Multi(MultiAction::GRAB);
      //結果表示
      Serial.println("+ done");
      break;
    case 'e':
      //離し
      Serial.println("* Auto RELEASE");
      seq.Multi(MultiAction::RELEASE);
      //結果表示
      Serial.println("+ done");
      break;

    ///////////////
    //単動運転
    case 'a':
      Serial.println("- A axis RET");
      seq.Single(SingleAction::AXISA_RELEASE);
      break;
    case 's':
      Serial.println("- A axis ACT");
      seq.Single(SingleAction::AXISA_GRAB);
      break;
    case 'z':
      Serial.println("- Z axis RET");
      seq.Single(SingleAction::AXISZ_UP);
      break;
    case 'x':
      Serial.println("- Z axis ACT");
      seq.Single(SingleAction::AXISZ_DOWN);
      break;

    default:
      break;
    }
  }
}

//------------------------------------------------
//タイマ割り込みイベント
//------------------------------------------------
void InterruptTimer()
{
  //シーケンス制御内のメソッドを呼び出し
  seq.InterruptTimer();
}

//------------------------------------------------
//I2C割込イベント
//マスタからデータが送られてきたときの処理
//引数:マスタから受信したデータのバイト数
//------------------------------------------------
void InterruptI2CReceive(int iMaxBytes)
{
}

//------------------------------------------------
//I2C割込イベント
//マスタからデータのリクエストが来たときの処理
//------------------------------------------------
void InterruptI2CRequest()
{
}
