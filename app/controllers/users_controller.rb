class UsersController < ApplicationController

	# layout 'users'

  def index
    @users = User.all
  end

  def show
  	@user = User.find(params[:id])
  end

  def edit
    @users = User.find(params[:id])
  end

  def destroy
    @user = current_user
    @user.soft_delete
    sign_out(@user)
    redirect_to products_path
  end

end
