class UsersController < ApplicationController
  before_action :authenticate_user!
  
  def show
    @user = User.find(params[:id])
    @tweets = @user.tweets.page(params[:page]).per(10)
  end
end
