require 'rails_helper'

RSpec.describe Tweet, type: :model do
  it 'user_idとcontentがあれば有効' do
    user = FactoryBot.create(:user)
    tweet = user.tweets.build(
      content: '佐々木希',
      user_id: 1
    )
    expect(tweet).to be_valid
  end
end
