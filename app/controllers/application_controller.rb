class ApplicationController < ActionController::Base
  helper_method :user_has_stock, :user_can_track

  def user_has_stock(stock)
    current_user.stocks.include?(stock)
  end

  def user_can_track
    current_user.stocks.size < 10
  end

end
