class ItemsController < ApplicationController
  def index
    @items = Item.all
    render json: @items, status: :ok
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      render json: @item, status: :created
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  def show
    @item = Item.find(params[:id])
    render json: @item, status: :ok
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      @item.save
      render json: @item, status: :ok
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end
  def destroy
    @item.destroy
    render json: {}, status: :ok
  end

  def in_range
    @item = Item.find(params[:id])
    #query the database for a single item by params[:id]

    #calculate a range based on the item from the db
    low_range = @item.price - 50
    high_range = @item.price + 50

    #query the database again for all item that fall within the calcualted range
    @results = Item.where(price: (low_range..high_range)).where.not(id: @item)
    render json: @results, status: :ok
  end

  private
  def item_params
    params.require(:item).permit(:brand, :model, :price, :image, :description)
  end
end
