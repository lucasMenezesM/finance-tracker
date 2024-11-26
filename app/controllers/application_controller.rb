class ApplicationController < ActionController::Base
  helper_method :user_has_stock, :user_can_track, :following_since

  def user_has_stock(stock)
    current_user.stocks.include?(stock)
  end

  def user_can_track
    current_user.stocks.size < 10
  end

  def following_since(user, friend)
    friendship = Friendship.find_by(user: user, friend: friend)
    friendship.created_at
  end

end
