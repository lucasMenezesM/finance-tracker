class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:my_portfolio]
  
  def my_portfolio
    @q = current_user.stocks.ransack(params[:q])
    @stocks = @q.result(distinct: true)

    @stock = Stock.new
  end

  def my_friends
    @q = current_user.friends.ransack(params[:q])
    @friends = @q.result(distinct: true)
    @user = User.new
  end

  def search_friends
    @q = User.ransack(params[:q])
    @friends = @q.result(distinct: true)

    if @friends.empty?
      flash.now[:alert] = "No friend was found with the provided name"
    end

    friend_name = params[:q][:name_cont]
    if friend_name.blank?
      if params[:controller] == "users"
        flash.now[:alert] = "Please, fill the name field to search a user!"
        @friends = []
      end
    end

    
    respond_to do |format|
      format.js {render partial: "users/search_friends_js"}
    end
  end
end
