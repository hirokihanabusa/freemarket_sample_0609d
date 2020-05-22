# メルカリコピーサイト紹介資料

## 概要
TECH CAMPの最終課題にて作成したアプリケーションを紹介します。また本資料では、自身で実装した箇所、および開発を通じて得られた経験についても紹介します。


## アプリケーション情報
### アプリケーション概要
- フリーマーケットアプリケーションである「メルカリ」のコピーサイトを作成しました
  - 接続先情報
    - URL http://18.178.207.218/
    - 現在サーバ側の影響でアクセス不可です。ただいま修復中です。
  - Basic認証
    - ID: admin
    - Pass: 2222
  - テスト用アカウント等
    - 購入者用
      - メールアドレス:email@gmail.com
      - パスワード: testtest
    - 購入用カード情報
      - 番号：4242424242424242
      - 期限：05/2020
      - ユーザー名：ATSUSHI KUWABARA
      - セキュリティコード：111
    - 出品者用
      - メールアドレス名: test@test.co.jp
      - パスワード: testtest
  - Githubリポジトリ
    - https://github.com/hirokihanabusa/freemarket_sample_0609d

## 開発状況
- 開発環境
  - ruby/Ruby on Rails/MySQL/Github/AWS/Visual Studio Code
- 開発チーム
- 開発期間と平均作業時間
  - 開発期間：約2ヶ月間
  - 1日あたりの平均作業時間：約	9時間(土日)
- 開発体制
  - 人数：5人
  - アジャイル型開発（スクラム）
  - Trelloによるタスク管理

## 動作確認方法
- Chromeの最新版を利用してアクセスしてください
  - ただしデプロイ等で接続できないタイミングもございます。その際は少し時間をおいてから接続ください
- 接続先およびログイン情報については、上記の通りです。
- 同時に複数の方がログインしている場合に、ログインできない可能性がございます。
- 確認後、ログアウト処理をお願いします


## 開発担当箇所
### 担当箇所一覧と確認方法設計
- DB設計
- 商品出品ページ(フロントエンド)
  - <http://18.178.207.218/item_registration_forms/new>にアクセスするとご覧いただけます	
- 商品検索 (バックエンド) 
  - <http://18.178.207.218/>の検索窓よりキーワードを入力して検索します
	
### 各担当箇所の詳細
- DB設計
  - 概要
    - 必要なテーブル、カラムの選定、アソシエーションの決定
  - 担当内容
    - ER図の作成
    - 各テーブルの作成
    - モデルへのアソシエーションの記述
- 商品出品ページ
  - 概要
    - ユーザーが商品出品できるページ
  - 担当内容　(フロントエンド)
    - haml,scssを使用し商品出品ページのマークアップ作業を行った。
- 商品検索
  - 概要
    - ユーザーは検索キーワードを入力して商品検索をすることができる
  - 担当内容　(バックエンド)
    - itemコントローラにsearchアクションの作成、itemモデルに検索メソッド作成

## 開発を通じて得られた知見
### 工夫した点
### ①チームとして工夫を行った点
　DB設計の際、実装時に追加のテーブルやカラムが極力発生しないようにDB設計の独学に加え、チーム内で話し合ってどのテーブルやカラムが必須になるのか綿密に話し合いをしたことです。またER図共有のためLucidChartというツールを使用してチーム全員が一目でテーブルおよびリレーションが視覚的に理解できるようにしました。
URL:https://www.lucidchart.com/documents/edit/1840f2e3-bffa-47a4-8f77-50e7aa18a007/18_45?shared=true

### ②個人として工夫を行った点
　エラーがすぐに見つかるようにこまめにテストサーバーを繰り返してエラー原因を特定しました。

## 苦労した点
### ①DB設計
　出品、購入をはじめ、コメント機能や取引など、多機能サイトをつくることが初めてでしたので、どのようなテーブルやカラムが必要になるか、テーブルとテーブルがどのようなリレーションなのかイメージがしづらく設計に時間がかかってしまいました。最初は自分で考えられるテーブルやカラムを全て書き出してER図を設計しましたが、チーム内にアドバイスを求めたところ、自分では思いつかなかったテーブルやリレーションがあり、それもDB設計に取りいれて数日で設計を終えました。しかしながら、のちの実装で不要なカラムがあり、そのカラムを削除する作業が発生しました。DB設計についてはのちの実装に大きく影響するので、チーム内でよく話し合って設計する必要があること、それによって不要なカラム削除といった無駄な作業を避けられることを学びました。

### ②仕事と開発の両立
　開発期間と仕事の繁忙期が重なってしまい、特に平日は思った以上に作業時間の確保が難しく、担当箇所の進捗に遅れがでてしまったことです。自分の開発の遅れがチーム全体に迷惑をかけてしまうので、自分自身で必ずやりきることに必要以上にこだわらず、slackを通じてチームに自分の考えを述べたうえで質問したり、助言をいただくことで担当タスクをこなしました。チーム開発は決して一人で行うものではないので、何かのエラーにずっとつまづいて時間ばかりかかってしまうのであればチームに相談して担当タスクをこなすこと、逆にチームメンバーから質問があれば自分のできる範囲でアドバイスすることで今後のチーム開発につなげていきたいです。

### ③試行錯誤の繰り返し
　わからないことがあればネットや本で調べましたが、理解に時間がかかり実装が思うように進まなかったことです。ネットや本の情報をもとに自分なりに試行錯誤を繰り返してなんとか実装につなげていきました。わからないことがある以上は自分で調べて実装し、調べることに時間がある程度かかることは受け入れて取り組むことを学びました。

## 著者
[hirokihanabusa](https://github.com/hirokihanabusa)


# DB設計

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false, add_index :users, email, unique: true|
|password|string|null: false|

### Association
- has_many :buyer_deals, foreign_key:'buyer_id', class_name:'Deal'
- has_many :seller_deals, foreign_key:'seller_id', class_name:'Deal'
- has_many :sold_items, { where("buyer_id is not NULL") }, foreign_key:'seller_id', class_name:'Item'
- has_many :reviews, dependent::destroy
- has_many :deals, dependent::destroy
- has_many :likes, dependent::destroy
- has_many :comments, dependent::destroy
- has_one :credit_card, dependent::destroy
- has_one :bank_account, dependent::destroy
- has_one :provider, dependent::destroy
- has_one :profile, dependent::destroy
- has_one :address, dependent::destroy


## user_informationsテーブル

|Column|Type|Options|
|------|----|-------|
|last_name|string|null :false|
|first_name|string|null :false|
|last_name_kana|string|null :false|
|first_name_kana|string|null :false|
|birth_year|date|null :false|
|birth_month|date|null :false|
|birth_date|date|null :false|
|phone_number|integer|null :false, unique: true|
|user_id|references|null: false, foreign_key: true|

### Association
- belongs_to :user


## credit_cardsテーブル

|Column|Type|Options|
|------|----|-------|
|card_number|integer|null: false|
|validity_month|integer|null: false|
|validity_year|integer|null: false|
|security_code|integer|null: false|
|user_id|references|null: false, foreign_key: true|

### Association
- belongs_to :user


## bank_accountsテーブル

|Column|Type|Options|
|------|----|-------|
|holder|string|null: false|
|account_number|integer|null: false|
|account_type|string|null: false|
|bank_name|string|null: false|
|bank_code|integer|null: false|
|branch_name|string|null: false|
|branch_code|integer|null: false|
|user_id|references|null: false, foreign_key: true|

### Association
- belongs_to :user


## providersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|user_id|references|null: false, foreign_key: true|

### Association
- belongs_to :user


## profilesテーブル

|Column|Type|Options|
|------|----|-------|
|avatar_image|text|
|introduction|text|
|user_id|references|null: false, foreign_key: true|

### Association
-belongs_to :user


## addressesテーブル

|Column|Type|Options|
|------|----|-------|
|postcode|string|null :false|
|prefecture|string|null :false|
|city|string|null :false|
|block|string|null :false|
|building|string|
|user_id|references|null: false, foreign_key: true|

### Association
- belongs_to :user


## likesテーブル

|Column|Type|Options|
|------|----|-------|
|item_id|references|null: false, foreign_key: true|
|user_id|references|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :item


## commentsテーブル

|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|user_id|references|null: false, foreign_key: true|
|item_id|references|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :item


## reviewsテーブル

|Column|Type|Options|
|------|----|-------|
|review|text|null: false|
|user_id|references|null: false, foreign_key: true|
|item_id|references|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :item


## dealsテーブル

|Column|Type|Options|
|------|----|-------|
|item_id|references|null: false, foreign_key: true|
|buyer_id|references|null: false, foreign_key: true|
|seller_id|references|null: false, foreign_key: true|
|status|integer|default: 0|


### Association
- belongs_to :buyer, class_name: "User"
- belongs_to :seller, class_name: "User"
- belongs_to :item


## itemsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|user_id|references|null: false, foreign_key: true|
|category_id|references|null: false, foreign_key: true|
|brand_id|references|foreign_key: true|
|size|integer|
|condition|string|null: false|
|postage_burden|integer|null: false|
|shipping_method|string|null: false|
|source_area|string|null: false|
|shipping_date|string|null: false|
|price|integer|null: false|
|description|text|null: false|
|status|integer|null: false|

### Association
- has_many :item_images, dependent::destroy
- has_many :likes, dependent::destroy
- has_many :comments, dependent::destroy
- has_one :review, dependent::destroy
- belongs_to :user
- belongs_to :category
- belongs_to :brand


## item_imagesテーブル

|Column|Type|Options|
|------|----|-------|
|image|string|null: false|
|item_id|references|null: false, foreign_key: true|

### Association
- belongs_to :item


## categoriesテーブル

|Column|Type|Options|
|------|----|-------|
|ancestry|string|null: true|
|item|string|null: false|

### Association
- has_many :items
- has_ancestry


## brandsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- has_many :items
