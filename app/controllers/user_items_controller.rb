class UserItemsController < ApplicationController
  def index
    @user_items = UserItem.all
  end

  def new
    @user_item = UserItem.new
  end

  def create
    respond_to do |format|
      @user_item = UserItem.find_by(item_id: params[:user_item][:item_id], user_id: current_user.id)
      if @user_item.nil?
        @user_item = current_user.user_items.create!(user_item_params)
      else
        @user_item.update_attributes!(favorited: params[:user_item][:favorited])
      end
      format.html {}
      format.js
    end    
  end

  def show
    @user_item = UserItem.find(params)
  end

  def edit
    @user = User.find(params[:user_id][:item_id])
    @item = Item.find(params[:item_id][:user_id])    
    @user_item = UserItem.find(params[:user_id][:item_id])
  end

  def update
  end

  def destroy
    @user_item = UserItem.find(params[:user_id][:item_id])
    respond_to do |format|
      if @user_item.destroy
        format.html {redirect_to users_path}
        format.js
      end
    end
  end

  private
  def user_item_params
    params.require(:user_item).permit(:favorited, :item_id)
  end
end
