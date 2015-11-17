class SierraTradingController < ApplicationController
  def sierra_trading
    search_data = "search~big-agnes-copper-spur/"
    connection = Excon.new("http://api.sierratradingpost.com/api/1.0/products/" + search_data)
    @price = connection.get(:query => {:api_key => 'e80fb41804b54036f140b8ae78f59343'})
  end
end
