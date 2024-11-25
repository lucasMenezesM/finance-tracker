class StocksController < ApplicationController
  def search_stocks_from_portfolio
    puts params
    @q = current_user.stocks.ransack(params[:q])
    @stocks = @q.result(distinct: true)

    if !params[:q][:ticker_cont].present? && !params[:q][:name_cont].present?
      if params[:controller] != "welcome"
        flash.now[:alert] = "Please, fill some field to search"
        respond_to do |format|
          format.js { render partial: "users/portfolio_stocks_result"}
        end
        return
      end
    end

    respond_to do |format|
      format.js { render partial: "users/portfolio_stocks_result"}
    end
  end

  def search_stock
    puts params
    puts flash
    if params[:stock][:ticker].empty?
      if params[:controller] != "welcomer"
        flash.now[:alert] = "Please, fill the fields to search a stock"
        respond_to do |format|
          format.js {render partial: "users/stock_result"}
        end
        return
      end
    end

    @stock = Stock.find_by(ticker: params[:stock][:ticker].upcase)
    
    if !@stock
      flash.now[:alert] = "Stock not found"
    end

    respond_to do |format|
      format.js { render partial: "users/stock_result"}
    end
  end

end