# BeadsEE - ビーズセッター・エンドエフェクタ制御


## コマンド制御

- ボーレート:115200
- Arduino UNO本体のUSBに接続

### 自動運転

|コマンド|機能|
|:--|:--|
|q|原点復帰|
|w|ビーズの掴み動作|
|e|ビーズの離し動作|

### 手動運転

Z軸（上下）操作

- ステータスLED：オレンジ

|コマンド|機能|
|:--|:--|
|z|上昇（原点側）|
|x|掴み・離し位置まで下降|

Y軸（上下）操作

- ステータスLED：グリーン

|コマンド|機能|
|:--|:--|
|a|離し（原点側）|
|s|掴み|


### その他

|コマンド|機能|
|:--|:--|
|h|ヘルプ表示|
|m|バージョン情報|

ヘルプ表示例

```
-- Help --
 - Multi Action
    q: zero return
    w: GRAB (or ACT Button)
    e: RELEASE (or RET Button)
 - Single Action
              <RET>      <ACT>
    Z AXIS... z: UP      x: DOWN
    A AXIS... a: RELEASE s: GRAB
```


## 1.Requirement

## 4.Note

注意点など

## 5.Author

* myasu
  * https://github.com/trihome/
* 瀬戸内ROS勉強会
  * https://ros.xrea.jp/

## 6.License

This is under [MIT Licence](https://opensource.org/licenses/mit-license.php).
