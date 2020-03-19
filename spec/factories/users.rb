FactoryBot.define do
  factory :user do
    username { 'テストユーザー' }
    email { 'test@example.com'}
    password { 'password' }
    confirmed_at { Time.now }
  end
end
