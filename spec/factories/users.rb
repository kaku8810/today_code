FactoryBot.define do
  factory :user do
    username { 'テストユーザー1' }
    email { 'test@example.com'}
    password { 'password' }
    confirmed_at { Time.now }
  end

  factory :otheruser do
    username { 'テストユーザー2' }
    email { 'test2@example.com'}
    password { 'password' }
    confirmed_at { Time.now }
  end
end
