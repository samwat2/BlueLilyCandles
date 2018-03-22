class UsersController < ApplicationController
  def index
  	# reset_session
  	@users = User.all
  end

  def show
  	@user = User.find(params[:id])
  end

end
