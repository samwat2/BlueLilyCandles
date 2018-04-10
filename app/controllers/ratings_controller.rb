class RatingsController < ApplicationController
  def index
    @ratings = Rating.all
  end

  def new
    @rating = Rating.new
  end

  def create
    @rating = Item.find(params[:item_id]).ratings.build(stars: params[:rating][:stars], user_id: current_user.id)
    respond_to do |format|
      if @rating.save!
        format.html {redirect_to items_path}
        format.js
      end
    end
  end

  def show
    @ratings = Rating.find(params[:id])
  end

  def edit
    @rating = current_user.given_ratings.find(params[:id])
  end

  def update
    @rating = current_user.given_ratings.find(params[:id])
    respond_to do |format|
      if @rating.update_attributes(rating_params)
        format.html {redirect_to users_path}
        format.js
      end
    end 
  end

  def destroy
    @rating = current_user.given_ratings.find(params[:id])
    respond_to do |format|
      if @rating.destroy
        format.html {redirect_to users_path}
        format.js
      end
    end
  end

  private
  def rating_params
    params.require(:rating).permit(:stars, :user_id)
  end
end
