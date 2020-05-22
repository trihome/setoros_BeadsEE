#!/usr/bin/env /usr/bin/python
# -*- coding: utf-8 -*-
# -----------------------------------------------
# Beads End effector Control
#
# The MIT License (MIT)
# Copyright (C) 2020 myasu.
# -----------------------------------------------

import logging
import os
import serial
import sys
import threading
import time


class BeadsEeSerial:
    """
    BeadsEEシリアル通信
    """

    @property
    def Result(self):
        """実行結果
        ----------
        Returns : tuple
            (実行結果, 送信時刻, 受信時刻)
        """
        ret = (self._result, self._sendtime, self._receivetime)
        # 読み出し終えたら初期化する
        self._result = None
        self._sendtime = None
        self._receivetime = None
        # 結果を返す
        return ret

    def __init__(self, argCom='/dev/ttyACM0', argBr=115200, argLogLv=logging.INFO):
        """
        コンストラクタ
        Parameters
        ----------
        argCOM : string
            ポート名
        argLogLv :
            ログレベル
        """

        """クラス変数の定義"""
        # 実行結果
        self._result = None
        # 実行時刻
        self._sendtime = None
        # レスポンス受信時刻
        self._receivetime = None

        """初期化処理"""
        # ログレベルを設定
        logging.basicConfig(level=argLogLv)
        try:
            self._ser = None
            # シリアル通信初期化
            self._ser = serial.Serial(argCom, argBr, timeout=0.5)
            # Arduinoが再起動するのを待つ
            time.sleep(3)
        except:
            # 例外発生時にメッセージ
            import traceback
            traceback.print_exc()
            # シリアル通信を閉じる
            if self._ser is not None:
                self._ser.close()
            # 強制終了
            sys.exit(1)

        # シリアル通信受信スレッド
        thread_ser = threading.Thread(target=self._eventThread_Serial)
        thread_ser.daemon = True
        thread_ser.start()

        # 起動完了メッセージ
        logging.debug("[%s] Do...%s" % (
            os.path.basename(__file__), ""))

    def __del__(self):
        """デストラクタ"""
        self.close()

    def _eventThread_Serial(self):
        """シリアル通信受信スレッド"""
        while True:
            # 受信してトリム処理
            data = self._ser.readline().decode('utf-8').strip()
            if len(data) > 0:
                # 受信バッファがあるとき
                logging.debug(" * Receive > " + data)
                # レスポンスの結果を解釈
                if data[0] == "+":
                    # 正常終了
                    self._result = True
                    # 受信時刻を保存
                    self._receivetime = time.time()
                elif data[0] == "-":
                    # 異常終了
                    self._result = False
                    # 受信時刻を保存
                    self._receivetime = time.time()
                else:
                    # 未定義
                    self._result = None
            # ウェイト
            time.sleep(0.1)

    def _send(self, argCommand):
        """
        コマンド送信
        Parameters
        ----------
        argCOM : string
            コマンド
        """
        try:
            self._sendtime = None
            # コマンド送信
            logging.debug(" * send > {}".format(argCommand))
            self._ser.write(argCommand)
            # 送信完了時刻を保存
            self._sendtime = time.time()
        except:
            # 例外発生時にメッセージ
            import traceback
            traceback.print_exc()
        return self._sendtime

    def close(self):
        """シリアル通信を閉じる"""
        if self._ser is not None:
            self._ser.close()
            logging.debug(" * Serial closed.")

    def grub(self):
        """制御指示・把持"""
        self._send("w")

    def release(self):
        """制御指示・離す"""
        self._send("e")


if __name__ == '__main__':
    """テスト運転用メイン関数（把持→離すまで）
    """
    # 初期化
    try:
        # インスタンスを生成
        beads = BeadsEeSerial(argLogLv=logging.DEBUG)

        print(beads.Result)
        # 把持
        beads.grub()
        # 待機
        time.sleep(5)
        # 結果確認
        print(beads.Result)

        print(beads.Result)

        # 離す
        beads.release()
        # 待機
        time.sleep(5)
        # 結果確認
        print(beads.Result)
    except KeyboardInterrupt:
        # キーボードからの終了入力
        pass
    except:
        # 例外発生時にメッセージ
        import traceback
        traceback.print_exc()
    finally:
        # シリアルポートを閉じる
        beads.close()
        # 終了メッセージ
        logging.debug("[%s] Done.%s" % (
            os.path.basename(__file__), ""))
