heroku-startup-with-node
========================

HerokuでkoaなNodeするアレ

## 使い方
cloneしてHerokuに突っ込んで下さい。手順は	https://github.com/yu0819ki/heroku-startup-with-node と同様です。

あえて三行で書くと
* git clone git@github.com:yu0819ki/heroku-startup-with-koa.git
* git remote add heroku git@heroku.com:your-repositoy
* git push heroku master

### 【参考URL】
[koa.jsを触ってみる](http://yukihr.github.io/blog/2013/12/22/first-koajs-play/)

[HerokuでNodeするアレ](https://github.com/yu0819ki/heroku-startup-with-node)

## dokkuで使う
wasabeef の人に [dokku](https://github.com/progrium/dokku) 使えと言われたので使ってみたら 0.11.x をサポートしてなかったので、 0.10.x 用の package.json と、 package.json を切り替えて push する bash スクリプトを書いてみた。
`./altpush.sh dokku master`
のように使います。・・・ブランチを切るようにしたほうがスマートな気はする・・・
