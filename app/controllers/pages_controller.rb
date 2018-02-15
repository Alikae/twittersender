class PagesController < ApplicationController
  def tweetform
  end

  def tweetpost
    SendTweet.new(params[:str]).perform
    redirect_to root_path
  end
end
