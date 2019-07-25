class ApplicationController < ActionController::Base
  private
  
  include SessionsHelper

  def require_user_logged_in
    unless logged_in?
      redirect_to login_url
    end
  end
  
  def counts(user)
    @count_microposts = user.microposts.count
    @count_followings = user.followings.count
    @count_followers = user.followers.count
    @count_favorite_microposts = user.favorite_microposts.count
  end
end
