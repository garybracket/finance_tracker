class Stock < ApplicationRecord
  def self.new_lookup(ticker_symbol)
    quote = Alphavantage::TimeSeries.new(symbol: ticker_symbol).quote
    stock_company = Alphavantage::Fundamental.new(symbol: ticker_symbol)
    new(ticker:ticker_symbol, name: stock_company.overview.name, last_price: quote.price)
  end
end

