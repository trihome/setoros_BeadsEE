#!/usr/bin/env /usr/bin/python
# -*- coding: utf-8 -*-
# -----------------------------------------------
# ROS Node
# Beads End effector Control Sample
#
# The MIT License (MIT)
# Copyright (C) 2020 myasu.
# -----------------------------------------------

import os
import rospy
import rosparam
import time
# ROSメッセージ
from std_msgs.msg import String
from std_msgs.msg import Int16
# 自作クラス
from BeadsEe import BeadsEe


class ControlSample:
    """
    BeadsEE制御のサンプル
    """
    # ノード名
    SELFNODE = "controlsample"

    def __init__(self):
        """コンストラクタ"""
        rospy.init_node('controlsample')

        # エンドエフェクタ制御ノードからメッセージを受信
        self._sub = rospy.Subscriber(
            BeadsEe.SELFTOPIC_RES, Int16, self._subscribe)

        # エンドエフェクタ制御ノードにメッセージを送信
        self._pub = rospy.Publisher(BeadsEe.SELFTOPIC, String, queue_size=10)
        # 送信周期(Hz)を設定
        self._rate = rospy.Rate(2)

        # 起動メッセージ
        rospy.loginfo("[{}] Do...(Topic: [Pub: {}, Sub: {}])".format(
            os.path.basename(__file__),
            BeadsEe.SELFTOPIC,
            BeadsEe.SELFTOPIC_RES))

    def _subscribe(self, data):
        """Subscribeコールバック"""
        # 受信コマンドの表示
        rospy.loginfo("[{}] Recieved result: {}".format(
            self.__class__.__name__, data.data))

    def grub(self):
        """把持指令"""
        self._pub.publish("grub")

    def release(self):
        """離し指令"""
        self._pub.publish("release")


if __name__ == '__main__':
    """メイン関数"""

    try:
        # インスタンスを生成
        beadsee = ControlSample()

        rospy.loginfo("* ControlSample Do...")
        time.sleep(2)

        # 掴む
        rospy.loginfo("  > GRUB")
        beadsee.grub()
        rospy.loginfo("    Waiting...")
        time.sleep(5)

        # 離す
        rospy.loginfo("  > RELEASE")
        beadsee.release()
        rospy.loginfo("    Waiting...")
        time.sleep(5)

        rospy.loginfo("* ControlSample DONE")

        # プロセス終了までアイドリング
        # rospy.spin()
    except rospy.ROSInterruptException:
        # 停止
        pass
    finally:
        # 終了
        rospy.loginfo("[{}] Done.".format(os.path.basename(__file__)))
