class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = current_user.items.new(item_params)
    respond_to do |format|
      if @item.save
        format.html {redirect_to items_path}
        format.js #vies/items/create.js.erb
      end
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item = current_users.items.find(params[:id])
  end

  def update
    @item = current_users.items.find(params[:id])
    @item.update_attributes(item_params)
    redirect_to @item
  end

  def destroy
    @item = current_user.items.find(params[:id])
    respond_to do |format|
      if @item.destroy
        format.html {redirect_to users_path}
        format.js
      end
    end
  end

  private
  def item_params
    params.require(:item).permit(:name, :price, :description)
  end
end
