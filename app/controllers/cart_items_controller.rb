class CartItemsController < ApplicationController
  def index
    @cart_items = @cart.items
  end

  def new
    @cart_item = CartItem.new
  end

  def create
    @cart_item = @cart.cart_items.new(cart_item_params)
    if @cart_item.save
      respond_to do |format|
        format.html
        format.json {render json: {count: @cart.items.count}}
      end
    end  
  end

  def show
    @cart_item = CartItem.find(params[:id])
  end

  def edit
    @cart_item = CartItem.find(params[:id])
  end

  def update
    @cart_item = CartItem.find(params[:id])
    @cart_item.update_attributes(cart_item_params)
  end

  def destroy
    @cart_item = CartItem.find(params[:id])
    if @cart_item.destroy
      respond_to do |format|
        format.html
        format.js
      end
    end
  end

  private
  def cart_item_params
    params.require(:cart_item).permit(:item_id)
  end
end
