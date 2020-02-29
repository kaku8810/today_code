class tweetsController < ApplicationController
  before_action :authenticate_user! 

  def new
  end

  def create
    @tweet = current_user.tweets.build(tweet_params)
    if @tweet.save
      flash[:success] = "tweet created!"
      redirect_to root_url
    else
      render 'top_page/top'
    end
  end

  def destroy
  end

  private

    def tweet_params
      params.require(:tweet).permit(:content)
    end
end