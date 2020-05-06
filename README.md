###### tags: `Rails` `Docker`
# quiet_appについて

## URL

https://shizulog.cf

## コンセプト
　静かにゆったりと食事や休憩タイムを取れる場所がわかったらいいなと
思ったのがきっかけ。

ユーザー同士でお気に入りのお店を共有することで
普段行かない場所に行ってみたり、よく行く店でも時間帯を
ずらしたりすることによって、安らぎの空間を得ることが
できると思った為。

## 技術スタック

### AWS
ロードバランサー/EC2インスタンス
Route53/Certificate Manager

### Docker + Rails + nginx + unicorn

* インフラ：Docker version 18.06.1-ce 
* インフラ：Docker-compose version 1.24.1  
* フレームワーク：Rails 6.0.2.1
* 言語：ruby 2.6.5  
* WEBサーバ：nginx 1.10.1
* バージョン管理：git

## 機能等概要
* 管理者権限
* 店舗詳細表示機能
* 店舗の新規登録、編集、削除機能
* 口コミ一覧表示機能
* 口コミ投稿機能
* ユーザ新規登録、編集、削除機能
* ログイン機能
* ユーザ一覧表示機能
* 画像ファイルのアップロード機能
* DBテーブルのリレーション機能
* アソシエーション機能

## ADD GEM

- slim
- simple_for
- Bootstrap
- devise
- paperclip
- Hirb
- font-awesome-sass
- unicorn

