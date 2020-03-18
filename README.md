# Today's code

https://today-code.work/

プログラミング学習の進捗を報告するSNSです。

ログイン画面からテストユーザーでログインが可能です。

## 機能一覧、使用gemなど

- ユーザー登録（確認メール送信）、ログイン機能、パスワード再発行メールなど（device）
- Twitterログイン機能(omniauth)
- ユーザープロフィール画像アップロード機能（carrierwave）
- ajaxを活用したユーザー間でのフォロー、フォロワー機能
- ツイート投稿機能(CRUD)
- ツイート画像投稿機能(carrierwave)
- ajaxを活用したいいね機能
- ツイート一覧表示の際などのページネーション機能(kaminari)
- フォローしたユーザーのツイートのみを取得するタイムライン機能

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
- MySQL 8

### フロントエンド
- Slim
- SASS,Bootstrap4

### テスト
- Rspec
  - 単体テスト（モデル）
  - 統合テスト（systemspec）
