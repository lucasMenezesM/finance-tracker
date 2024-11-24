class Stock < ApplicationRecord

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "last_price", "name", "ticker", "updated_at"]
  end
    
  def self.new_lookup(ticker_symbol)
    stock = Stock.find_by(ticker: ticker_symbol.upcase)
  end
end
