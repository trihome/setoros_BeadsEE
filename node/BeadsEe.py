#!/usr/bin/env /usr/bin/python
# -*- coding: utf-8 -*-
# -----------------------------------------------
# ROS Node
# Beads End effector Control
#
# The MIT License (MIT)
# Copyright (C) 2020 myasu.
# -----------------------------------------------

import logging
import os
import rospy
import rosparam
import time
import threading
# ROSメッセージ
from std_msgs.msg import String
from std_msgs.msg import Int16
# 自作クラス
from BeadsEeSerial import BeadsEeSerial


class BeadsEe:
    """
    BeadsEE制御ノード
    """
    # ノード名
    SELFNODE = "beadsee"
    # トピック名：制御受付
    SELFTOPIC = "mes_" + SELFNODE
    # トピック名：動作結果
    SELFTOPIC_RES = "mes_" + SELFNODE + "res"

    def __init__(self, argCOM=None):
        """
        コンストラクタ
        Parameters
        ----------
        argCOM : string
            ポート名。無指定の場合はシリアル制御をしない
        """
        # ノードの初期化（名称設定、ログレベル指定）
        rospy.init_node(self.SELFNODE, log_level=rospy.INFO)

        # 指定のトピックからメッセージを受信
        self._sub = rospy.Subscriber(self.SELFTOPIC, String, self._subscribe)

        # 指定のトピックからメッセージを送信
        self._pub = rospy.Publisher(self.SELFTOPIC_RES, Int16, queue_size=10)
        # 送信周期(Hz)を設定
        self._rate = rospy.Rate(2)

        # エンドエフェクタ制御のインスタンスを生成
        if argCOM is None:
            # ポート名が指定されていないときはデフォルト
            self._beads = BeadsEeSerial()
        else:
            self._beads = BeadsEeSerial(argCom=argCOM)

        # エンドエフェクタ制御の状態確認スレッド
        thread_ser = threading.Thread(target=self._eventThread_BeadsEe)
        thread_ser.daemon = True
        thread_ser.start()

        # 起動完了メッセージ
        #起動メッセージ
        rospy.loginfo("[{}] Do...(Topic: [Pub: {}, Sub: {}])".format(
            os.path.basename(__file__),
            self.SELFTOPIC_RES,
            self.SELFTOPIC))

    def _subscribe(self, data):
        """Subscribeコールバック"""
        # 受信コマンドをトリム
        command = data.data.strip()
        # 受信コマンドの表示
        rospy.loginfo("[%s] Recieved command: %s" %
                      (self.__class__.__name__, command))
        # 受信コマンドの解析と処理分岐
        if command == "grub":
            self._beads.grub()
        elif command == "release":
            self._beads.release()
        else:
            rospy.loginfo("[%s] ! Command error" %
                          (self.__class__.__name__))

    def _eventThread_BeadsEe(self):
        """エンドエフェクタ制御の状態確認スレッド"""
        while True:
            # 結果確認
            (result, sendtime, receivetime) = self._beads.Result
            if result is not None:
                # 結果が入っているときだけPublish
                if result == True:
                    self._publish(1)
                elif result == False:
                    self._publish(0)
            # ウェイト
            time.sleep(0.1)

    def _publish(self, argData):
        """
        ROSメッセージのPublish
        Parameters
        ----------
        argData : Int16
            送信データ文字列
        Return
        ----------
            True: 成功、False: 失敗
        """
        try:
            self._pub.publish(argData)
            return True
        except:
            # 例外発生時にメッセージ
            import traceback
            traceback.print_exc()
        return False


if __name__ == '__main__':
    """メイン関数"""

    try:
        # インスタンスを生成
        beadsee = BeadsEe()

        # プロセス終了までアイドリング
        rospy.spin()
    except rospy.ROSInterruptException:
        # 停止
        pass
    finally:
        # 終了
        rospy.loginfo("[%s] Done." % (os.path.basename(__file__)))
