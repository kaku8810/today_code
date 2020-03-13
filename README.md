# Today's code

プログラミング学習の進捗を報告するSNSです。

## 本番環境

https://today-code.work/

ログイン画面からテストユーザーでログインが可能です。


## 機能一覧、使用gemなど

- ユーザー登録（確認メール送信）、ログイン機能、パスワード再発行メールなど（device）
- Twitterログイン機能(omniauth)
- ユーザープロフィール画像アップロード、削除機能（carrierwave）
- ajaxを活用したユーザー間でのフォロー、フォロワー機能
- ツイート投稿機能(CRUD)
- ツイート画像投稿機能(carrierwave)
- ajaxを活用したいいね機能
- ツイート一覧表示の際などのページネーション機能(kaminari)
- フォローしたユーザーのツイートのみを取得するタイムライン機能

## 使用技術

- Ruby 2.6.5
- Ruby on Rails 5.2.3
- MySQL 8
- SASS,Bootstrap
- GitHub,Git
- Rspec
- AWS
  - VPC
  - EC2
  - RDS for MySQL
  - ALB
  - Route53
  - S3
  - ACM

## テスト

- Rspec
  - 単体テスト（モデル）
  - 統合テスト（systemspec）
