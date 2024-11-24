class Stock < ApplicationRecord

  has_many :user_stocks
  has_many :users, through: :user_stocks

  validates :name, :ticker, presence: true

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "last_price", "name", "ticker", "updated_at"]
  end
    
  def self.new_lookup(ticker_symbol)
    stock = Stock.find_by(ticker: ticker_symbol.upcase)
  end
end
