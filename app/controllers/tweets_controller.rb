class TweetsController < ApplicationController
  before_action :authenticate_user!, except: :index
  before_action :correct_user,   only: :destroy

  def home
    @feed_items = current_user.feed.page(params[:page]).per(10)
  end

  def index
    @tweets = Tweet.order(created_at: :desc).page(params[:page]).per(10)
  end

  def new
    @tweet = current_user.tweets.build if user_signed_in?
  end

  def create
    @tweet = current_user.tweets.build(tweet_params)
    if @tweet.save
      flash[:success] = "ツイートを作成しました"
      redirect_to home_tweets_path
    else
      render 'tweets/new'
    end
  end

  def destroy
    @tweet.destroy
    flash[:success] = "ツイートを削除しました"
    redirect_to request.referrer || root_url
  end

  private

    def tweet_params
      params.require(:tweet).permit(:content)
    end

    def correct_user
      @tweet = current_user.tweets.find_by(id: params[:id])
      redirect_to root_url if @tweet.nil?
    end
end