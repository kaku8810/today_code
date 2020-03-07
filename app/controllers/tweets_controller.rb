class TweetsController < ApplicationController
  before_action :authenticate_user!, except: :index

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
      flash[:success] = "ツイートしました"
      redirect_to root_url
    else
      render 'tweets/new'
    end
  end

  def destroy
  end

  private

    def tweet_params
      params.require(:tweet).permit(:content)
    end
end