class UserStocksController < ApplicationController
  def create
    @stock = Stock.find_by(ticker: params[:ticker].upcase)
    
    
    if @stock && UserStock.create(user: current_user, stock: @stock).persisted?

      flash[:notice] = "Stock #{@stock.name} was successfully added to your Portfolio!"
      redirect_to my_portfolio_path
    else
      flash.now[:alert] = "Failed to add #{@stock.name} to you portfolio."
      render "users/my_portfolio"
    end

  end

  def destroy
    puts params
    
    @stock = Stock.find_by(id: params[:id])

    user_stock = UserStock.find_by(user: current_user, stock: @stock)

    if user_stock.destroy
      flash[:notice] = "Stock #{@stock.name} was successfully removed from your Portfolio!"
      redirect_to my_portfolio_path
    else
      flash[:alert] = "Failed to remove #{@stock.name} to you portfolio."
      redirect_to my_portfolio_path
    end
  end

end
