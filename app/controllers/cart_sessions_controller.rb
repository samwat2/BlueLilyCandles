class CartSessionsController < Devise::SessionsController
  before_action :before_login, :only => :create
  after_action :after_login, :only => :create

  def before_login
  end

  def after_login
  	# if user already has a cart
  	if session[:cart_id]
  		@cart = current_user.carts.find(session[:cart_id])
  	else
  	#if user doesn't have a cart. create cart and set it's session to carts id.
  		@cart = current_user.carts.create
  		session[:cart_id] = @cart.id
  	end
  end
end