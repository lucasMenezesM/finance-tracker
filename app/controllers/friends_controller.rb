class FriendsController < ApplicationController
  def index
    @q = current_user.friends.ransack(params[:q])
    @friends = @q.result(distinct: true)
    @user = User.new
  end

  def create
  end

  def destroy
  end

  def search_friends
    @q = User.ransack(params[:q])
    @friends = @q.result(distinct: true)

    @friends = @friends.reject { |friend| friend[:id] == current_user.id }

    if @friends.empty?
      flash.now[:alert] = "No friend was found with the provided name"
    end

    friend_name = params[:q][:name_cont]
    if friend_name.blank?
      if params[:controller] == "friends"
        flash.now[:alert] = "Please, fill the name field to search a user!"
        @friends = []
      end
    end

    
    respond_to do |format|
      format.js {render partial: "friends/search_friends_js"}
    end
  end
end
