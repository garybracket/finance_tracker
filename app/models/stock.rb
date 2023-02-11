class Stock < ApplicationRecord
  def self.new_lookup(ticker_symbol)
    stock = Alphavantage::TimeSeries.new(symbol: ticker_symbol).quote
    price = stock.price
    price
  end
end
