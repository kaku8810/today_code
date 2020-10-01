# Today's code

https://today-code.work/

プログラミング学習の進捗を報告するSNSです。

ログイン画面からテストユーザーでログインが可能です。

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
- MySQL 8

### フロントエンド
- Slim
- SASS,Bootstrap4

### テスト
- Rspec
  - 単体テスト（モデル）

## 今後実装したいこと
- ランキング機能
- 統合テスト
