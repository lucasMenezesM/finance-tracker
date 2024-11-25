class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:my_portfolio]
  
  def my_portfolio
    @q = current_user.stocks.ransack(params[:q])
    @stocks = @q.result(distinct: true)

    @stock = Stock.new
  end
end
