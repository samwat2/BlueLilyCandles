class UserItemsController < ApplicationController
  def index
  end

  def new
  end

  def create
    @user = User.find(params[:user_id][:item_id])
    @item = Item.find(params[:item_id][:user_id])
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
