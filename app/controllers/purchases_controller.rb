class PurchasesController < ApplicationController
  def index
    @purchases = Purchase.all
  end

  def new
    @purchase = Purchase.new
  end

  def create
    @purchase = current_user.purchases.new(purchase_params)
    respond_to do |format|
      if @purchase.save
        format.html {redirect_to purchases_path}
        format.js #vies/purchases/create.js.erb
      end
    end
  end

  def show
    @purchase = Purchase.find(params[:id])
  end

  def edit
    @purchase = current_users.purchases.find(params[:id])
  end

  def update
    @purchase = current_users.purchases.find(params[:id])
    @purchase.update_attributes(purchase_params)
    redirect_to @purchase
  end

  def destroy
    @purchase = current_user.purchases.find(params[:id])
    respond_to do |format|
      if @purchase.destroy
        format.html {redirect_to users_path}
        format.js
      end
    end
  end

  private
  def purchase_params
    params.require(:purchase).permit(:quantity)
  end
end
