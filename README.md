# アプリケーション名
Share MLB

# アプリケーション概要
MLBに関する記事を作成し、投稿することができる。また投稿された記事に対してコメントやいいねをつけたり、ユーザーのフォロー機能などで相互に交流することができる。

# URL
https://share-mlb.onrender.com

# テスト用アカウント
・Basic認証
ID:admini
パスワード:4869

・ログイン用アカウント
メールアドレス:hoge@hoge
パスワード:hogehoge1

# 利用方法
## 記事の閲覧
トップページにアクセスし、読みたい記事を選択する。

## 記事の検索
トップページにアクセスし、検索フォームにキーワードを入力して検索ボタンを押す。

## 記事の投稿
1,ログインする（ユーザー登録ができていない場合は、トップページのヘッダーの新規登録ボタンからユーザー登録を行う）。

2,登録後、ヘッダーの投稿ボタンから新規投稿ページに移動し、必要な情報（画像（任意）・タイトル・タグ・本文）を入力して投稿する。

## 記事の編集・削除(記事の投稿者のみ)
1,ログインする（ユーザー登録ができていない場合は、トップページのヘッダーの新規登録ボタンからユーザー登録を行う）。

2,記事の詳細ページの編集ボタンから編集ページに移動し、内容の編集ができる。また、記事の詳細ページの削除ボタンで記事を削除できる。

## 記事にコメントをつける
1,ログインする（ユーザー登録ができていない場合は、トップページのヘッダーの新規登録ボタンからユーザー登録を行う）。

2,読む記事を選択し記事の詳細ページへ移動する。

3,ページ下部にあるコメント入力欄にコメントを入力し、コメントボタンを押してコメントを投稿する。

## 記事にいいねをつける
1,ログインする（ユーザー登録ができていない場合は、トップページのヘッダーの新規登録ボタンからユーザー登録を行う）。

2,記事が表示されている画面内の♡ボタンを押すと記事にいいねがつく。

## ユーザーをフォローする
1,ログインする（ユーザー登録ができていない場合は、トップページのヘッダーの新規登録ボタンからユーザー登録を行う）。

2,記事が表示されている画面のユーザー名をクリックして、そのユーザーのマイページに移動する。

3,ユーザーマイページ内のフォローボタンを押すことでフォローができる。また、もう一度ボタンを押すとフォローが解除される。

# アプリケーションを作成した背景
個人的にNPBよりもMLBに関するコミュニティは少ないと感じており、よりMLBを身近に知ってもらえるSNSのようなアプリケーションがあればと思い作成するに至った。また、記事の投稿機能をメインとすることでチームや選手に興味を持ってもらう入り口を作り、そこからコミュニティの拡大や活性化につなげていきたい。

# 洗い出した要件
https://docs.google.com/spreadsheets/d/18NDfNvGBLrX8vlwi1smn1MIBrLcYzkTAOX7tlDcRDiM/edit#gid=982722306

# 実装予定の機能
・記事を投稿する際に、選択した文字を太字にしたり、フォントサイズを変えることができるような機能
・複数画像投稿機能
・試合データや選手データの表示機能(データを取得できるAPIがあれば)

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/d0af15f8339b172a5ed75d7ad0ef12be.png)](https://gyazo.com/d0af15f8339b172a5ed75d7ad0ef12be)

# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/6a9139a82b6d1697976bd05d5f9bf884.png)](https://gyazo.com/6a9139a82b6d1697976bd05d5f9bf884)

# 開発環境
Ruby, Ruby on Rails, JavaScript, Render

# 工夫したポイント
・記事の閲覧・投稿機能がメインであるため、それらの機能に関してはシンプルでわかりやすいデザインや設計を心がけた。

・フォロー機能およびそれぞれのユーザーのマイページで投稿した記事やいいねした記事を表示するようにして、自分が興味を持ったユーザーに関する記事を素早く見ることができるように実装した。