class CartsController < ApplicationController
  def index
    @total = @cart.items.sum(:price)
  end

  def new
    @cart = Cart.new
  end

  def create
    @cart = current_user.carts.new(cart_params)
    if @cart.save
      respond_to do |format|
        format.html {redirect_to @carts}
        format.js
      end
    end  
  end

  def show
    @cart = Cart.find(params[:id])
  end

  def edit
    @cart = Cart.find(params[:id])
  end

  def update
    @cart = Cart.find(params[:id])
    @cart.update_attributes(cart_params)
    render_to @carts
  end

  def destroy
    @cart = Cart.find(params[:id])
    if @cart.destroy
      respond_to do |format|
        format.html
        format.js
      end
    end
  end

  private
  def cart_params
    params.require(:cart).permit(:completed)
  end
end
