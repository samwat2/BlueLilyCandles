class UserItemsController < ApplicationController
  def index
    @user_items = User_Item.all
  end

  def new
    @user_item = User_Item.new
  end

  def create
    @user = User.find(params[:user_id][:item_id])
    @item = Item.find(params[:item_id][:user_id])     

  end

  def show
    @user = User.find(params[:user_id][:item_id])
    @item = Item.find(params[:item_id][:user_id])
    @user_item = User_Item.find(params[:user_id][:item_id])
  end

  def edit
    @user = User.find(params[:user_id][:item_id])
    @item = Item.find(params[:item_id][:user_id])    
    @user_item = User_Item.find(params[:user_id][:item_id])
  end

  def update
  end

  def destroy
  end
end
