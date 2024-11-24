class StocksController < ApplicationController
  def search_stocks
    @q = Stock.ransack(params[:q])
    @stocks = @q.result(distinct: true)

    if !params[:q][:ticker_cont].present? && !params[:q][:name_cont].present?
      if params[:controller] != "welcome"
        flash.now[:alert] = "Please, fill some field to search"
        respond_to do |format|
          format.js { render partial: "users/result"}
        end
        return
      end
    end

    respond_to do |format|
      format.js { render partial: "users/result"}
    end
  end

end