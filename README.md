# アイロンビーズセッター　エンドエフェクタ制御ノード

- ROS Node (this)
- [Arduino Source](./arduino/BeadsEE)
- [Arduino Shield](./arduino/IOBoard)


## 1.Requirement

* RaspberryPi 3B+, 4B+
* Raspbian Buster
* python 2.x
* python-serial

## 2.Installation

### ROS

Raspbianの標準パッケージを使います。
（ROS公式パッケージを使ってもOK）

```bash
$ sudo apt install ros-desktop-full-dev ros-desktop-full-python-dev python-catkin-tools -y
$ sudo rosdep init
$ rosdep update
```

### ライブラリ

```bash
$ sudo apt install python-pip python-serial -y
```

### プログラム

```bash
$ pwd
~/catkin_ws/src/
$ git clone https://github.com/trihome/
$ catkin_make
```

## 3.Usage

### ターミナル1

ROS Launchを起動
（一緒に制御用ノードも立ち上がります）

```bash
$ source ~/catkin_ws/devel/setup.bash
$ cd ~/catkin_ws/src/beadsee/node
~/catkin_ws/src/beadsee/node $ roslaunch beadsee beadsee.launch
（･･･省略･･･）
PARAMETERS
 * /rosdistro: Debian
 * /rosversion: 1.14.3
NODES
  /
    beadsee (beadsee/BeadsEe.py)
auto-starting new master
process[master]: started with pid [8416]
ROS_MASTER_URI=http://raspi4:11311
setting /run_id to 25a0847c-9bd4-11ea-ae8b-dca63297c4da
process[rosout-1]: started with pid [8427]
started core service [/rosout]
process[beadsee-2]: started with pid [8430]
[INFO] [1590114615.424511]: [BeadsEe.py] Do...(Topic: [Pub: mes_beadseeres, Sub: mes_beadsee])

（ターミナル２実行後）
[INFO] [1590114620.945803]: [BeadsEe] Recieved command: grub
[INFO] [1590114625.961804]: [BeadsEe] Recieved command: release
```

### ターミナル2

制御サンプルを実行します。

```bash
$ source ~/catkin_ws/devel/setup.bash
$ cd ~/catkin_ws/src/beadsee/node
~/catkin_ws/src/beadsee/node $ ./controlsample.py
[INFO] [1590114618.924836]: [controlsample.py] Do...(Topic: [Pub: mes_beadsee, Sub: mes_beadseeres])
[INFO] [1590114618.930231]: * ControlSample Do...
[INFO] [1590114620.937398]:   > GRUB
[INFO] [1590114620.943944]:     Waiting...
[INFO] [1590114624.038836]: [ControlSample] Recieved result: 1
[INFO] [1590114625.955183]:   > RELEASE
[INFO] [1590114625.961367]:     Waiting...
[INFO] [1590114629.046250]: [ControlSample] Recieved result: 1
[INFO] [1590114630.974127]: * ControlSample DONE
[INFO] [1590114630.979525]: [controlsample.py] Done.
~/catkin_ws/src/beadsee/node $
```

## 4.Note

注意点など

## 5.Author

* myasu
  * https://github.com/trihome/
* 瀬戸内ROS勉強会
  * https://ros.xrea.jp/

## 6.License

This is under [MIT license](https://en.wikipedia.org/wiki/MIT_License).
