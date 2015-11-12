class ItemsController < ApplicationController
  def index
    @items = Item.all
    render json: @items, status: :ok
  end

  def show
    render json: @item, status: :ok
  end

  def in_range
    #query the database for a single item by params[:id]
    @item = Item.find(params[:id])

    #calculate a range based on the item from the db
    low_range = @item.price - 50
    high_range = @item.price + 50

    #query the database again for all item that fall within the calcualted range
    @results = Item.where(price: (low_range..high_range))
      render json: @results, status: :ok
  end
end
