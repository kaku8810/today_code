require 'rails_helper'

RSpec.describe Relationship, type: :model do
  before do 
    @user = build(:user)
  end

  describe 'バリデーション' do
    it 'follower_idとfollowed_idがあれば有効' do
      
    end

    it 'follower_idがないと無効' do
      
    end

    it 'followed_idがないと無効' do
      
    end
  end
end
