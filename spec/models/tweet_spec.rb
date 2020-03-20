require 'rails_helper'

RSpec.describe Tweet, type: :model do
  before do
    @user = FactoryBot.create(:user)
  end

  it 'user_idとaがあれば有効' do
    user = @user
    tweet = user.tweets.build(
      content: '佐々木希',
      user_id: 1
    )
    expect(tweet).to be_valid
  end

  it 'contentがなければ無効' do
    tweet = Tweet.new(content: nil)
    tweet.valid?
    expect(tweet.errors[:content]).to include("を入力してください")
  end

  it 'contentが140字を超えると無効' do
    tweet = Tweet.new(content: 'a' * 141)
    tweet.valid?
    expect(tweet.errors[:content]).to include("は140文字以内で入力してください")
  end
end
