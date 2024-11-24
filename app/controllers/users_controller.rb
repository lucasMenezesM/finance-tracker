class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:my_portfolio]
  
  def my_portfolio
    @q = Stock.ransack(params[:q])
    @stocks = @q.result(distinct: true)
  end
end
