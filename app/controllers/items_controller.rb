class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to items_path, flash: {success: "created!"}
    else
      render "new"
    end
  end

  def item_params
    params.require(:item).permit(
      :name, :price,
      variants_attributes: [ :id, :name, :price, :_destroy ]
    )
  end
end
