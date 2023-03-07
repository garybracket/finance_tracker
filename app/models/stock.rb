class Stock < ApplicationRecord
  has_many :user_stocks
  has_many :users, through: :user_stocks
  validates :name, :ticker, presence: true

  def self.new_lookup(ticker_symbol)
    quote = Alphavantage::TimeSeries.new(symbol: ticker_symbol).quote
    stock_company = Alphavantage::Fundamental.new(symbol: ticker_symbol)
    if quote.price 
      begin
        new(ticker:ticker_symbol, name: stock_company.overview.name, last_price: quote.price)
      rescue => exception
        return nil 
      end 
    else 
      return nil
    end 
  end

  def self.check_db(ticker_symbol)
    where(ticker: ticker_symbol).first
  end

end

