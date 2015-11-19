class SierraTradingController < ApplicationController
  def index
    search_params = params.permit(:search_model_type)
    api_call = "http://api.sierratradingpost.com:80/api/1.0/products/search~#{search_params[:search_model_type]}/?api_key=#{ENV['SIERRA_TRADING_API'}]}"
    price = Excon.get(api_call)
    render json: price.body
  end
end
