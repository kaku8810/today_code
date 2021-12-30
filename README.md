# Today's code

https://www.today-code.work/
*現在AWS料金の都合上本番環境は停止しています。

プログラミング学習の進捗を報告するSNSです。

ログイン画面の「かんたんログイン」からテストユーザーでログインしていただくとすべての機能が利用可能です。


## 機能一覧、使用gemなど

- ユーザー登録（確認メール送信）、ログイン機能、パスワード再発行メールなど（device）
- ユーザープロフィール画像アップロード機能（carrierwave）
- ユーザー情報編集機能
- ajaxを活用したユーザー間でのフォロー、フォロワー機能
- 投稿機能(CRUD)
- 画像投稿機能(carrierwave)
- いいね機能(非同期)
- 投稿一覧表示機能
- 投稿一覧表示の際などのページネーション機能(kaminari)
- 人気投稿ランキング表示機能
- フォローしたユーザーの投稿のみを表示するタイムライン機能

## 使用技術

### インフラ
- AWS
  - VPC
  - EC2
  - RDS for MySQL
  - ALB
  - Route53
  - S3
  - ACM
- Nginx
- unicorn

### バックエンド
- Ruby 2.6.5
- Ruby on Rails 5.2.3
- MySQL 5.7

### フロントエンド
- Slim
- SASS,Bootstrap4

### 開発環境
- Docker,Docker Compose
- Git,GitHub(github flowによる開発)

### テスト
- Rspec
  - 単体テスト（モデル）
